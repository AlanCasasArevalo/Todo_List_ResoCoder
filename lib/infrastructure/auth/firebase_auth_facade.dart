import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:todo_list_reso_coder/domain/auth/authentication.dart';

import '../../domain/auth/authentication.dart';
import '../../infrastructure/auth/authorization.dart';

@LazySingleton(as: AuthorizationFacadeInterface)
class FirebaseAuthFacade implements AuthorizationFacadeInterface {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn);

  @override
  Future<Either<AuthenticationFailure, Unit>> registerWithEmailAndPassword(
      {@required EmailAddress emailAddress,
      @required Password password}) async {
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddressString, password: passwordString);
      return right(unit);
    } on PlatformException catch (error) {
      if (error.code.toLowerCase() ==
          'ERROR_EMAIL_ALREADY_IN_USE'.toLowerCase()) {
        return left(const AuthenticationFailure.emailAlreadyInUse());
      } else {
        return left(const AuthenticationFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthenticationFailure, Unit>> signInWithEmailAndPassword(
      {EmailAddress emailAddress, Password password}) async {
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailAddressString, password: passwordString);
      return right(unit);
    } on PlatformException catch (error) {
      if (error.code.toLowerCase() == 'ERROR_USER_NOT_FOUND'.toLowerCase() ||
          error.code.toLowerCase() == 'ERROR_WRONG_PASSWORD'.toLowerCase()) {
        return left(
            const AuthenticationFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthenticationFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthenticationFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthenticationFailure.canceledByUser());
      }
      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.getCredential(
          idToken: googleAuthentication.idToken,
          accessToken: googleAuthentication.accessToken);
      await _firebaseAuth.signInWithCredential(authCredential);
      return right(unit);
    } on PlatformException catch (_) {
      return left(const AuthenticationFailure.serverError());
    }
  }

  /*
  @override
  Future<Option<User>> getSignedInUser() =>
      _firebaseAuth.currentUser().then((firebaseUser) =>
          some(User(id: UniqueId.fromUniqueString(firebaseUser.uid))));
   */

  @override
  Future<Option<User>> getSignedInUser() => _firebaseAuth
      .currentUser()
      .then((firebaseUser) => optionOf(firebaseUser?.toDomain()));

  @override
  Future<void> signOut() =>
      Future.wait([_googleSignIn.signOut(), _firebaseAuth.signOut()]);
}
