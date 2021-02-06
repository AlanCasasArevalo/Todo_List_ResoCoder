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
  Stream<SignInFormState> mapEventToState(SignInFormEvent event) async* {
    yield* event.map(emailChanged: (event) async* {
      yield* _emailChanged(event);
    }, passwordChanged: (event) async* {
      yield* _passwordChanged(event);
    }, registerWithEmailAndPasswordPressed: (event) async* {
      yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authorizationFacadeInterface.registerWithEmailAndPassword);
    }, signInWithEmailAndPasswordPressed: (event) async* {
      yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authorizationFacadeInterface.signInWithEmailAndPassword);
    }, signInWithGooglePressed: (event) async* {
      yield* _signInWithGooglePressed();
    });
  }

  Stream<SignInFormState> _signInWithGooglePressed() async* {
    yield state.copyWith(
        isSubmitting: true, authFailureOrSuccessOption: none());
    final failureOrSuccess =
        await _authorizationFacadeInterface.signInWithGoogle();
    yield state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(failureOrSuccess));
  }

  Stream<SignInFormState> _passwordChanged(PasswordChanged event) async* {
    yield state.copyWith(
        password: Password(event.passwordString),
        authFailureOrSuccessOption: none());
  }

  Stream<SignInFormState> _emailChanged(EmailChanged event) async* {
    yield state.copyWith(
      emailAddress: EmailAddress(event.emailString),
      authFailureOrSuccessOption: none(),
    );
  }

  Stream<SignInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
      Future<Either<AuthenticationFailure, Unit>> Function(
              {@required EmailAddress emailAddress,
              @required Password password})
          forwardedCall) async* {
    Either<AuthenticationFailure, Unit> failureOrSuccess;
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
          isSubmitting: true, authFailureOrSuccessOption: none());
      failureOrSuccess = await forwardedCall(
          emailAddress: state.emailAddress, password: state.password);
    }

    yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: false,
        authFailureOrSuccessOption: optionOf(failureOrSuccess));
  }
}
