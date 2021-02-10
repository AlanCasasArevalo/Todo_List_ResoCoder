// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo_list_reso_coder/infrastructure/core/firebase_injectable_module.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:todo_list_reso_coder/infrastructure/auth/firebase_auth_facade.dart';
import 'package:todo_list_reso_coder/domain/auth/authorization_facade_interface.dart';
import 'package:todo_list_reso_coder/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  g.registerLazySingleton<GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  g.registerLazySingleton<AuthorizationFacadeInterface>(
      () => FirebaseAuthFacade(g<FirebaseAuth>(), g<GoogleSignIn>()));
  g.registerFactory<SignInFormBloc>(
      () => SignInFormBloc(g<AuthorizationFacadeInterface>()));
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
