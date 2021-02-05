import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:todo_list_reso_coder/domain/auth/authentication_failure.dart';

import './authentication.dart';

abstract class AuthorizationFacadeInterface {
  Future<Either<AuthenticationFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthenticationFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthenticationFailure, Unit>> signInWithGoogle();
}