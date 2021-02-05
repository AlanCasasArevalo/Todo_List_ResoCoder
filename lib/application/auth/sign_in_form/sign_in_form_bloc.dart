import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/authentication.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_events.dart';
part 'sign_in_form_state.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {

  final AuthorizationFacadeInterface _authorizationFacadeInterface;

  SignInFormBloc(this._authorizationFacadeInterface);

  @override
  SignInFormState get initialState => SignInFormState.initial();

  @override
  Stream<SignInFormState> mapEventToState(SignInFormEvent event) {
  }

}