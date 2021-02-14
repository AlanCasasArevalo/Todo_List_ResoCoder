import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/authentication.dart';

part 'auth_bloc.freezed.dart';

part 'auth_events.dart';

part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {

  final AuthorizationFacadeInterface _authorizationFacadeInterface;

  AuthBloc(this._authorizationFacadeInterface);

  @override
  AuthState get initialState => const AuthState.initial();

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.map(authCheckRequest: (e) async* {
      final userOption = await _authorizationFacadeInterface.getSignedInUser();
      yield userOption.fold(
              () => const AuthState.unauthenticated(),
              (_) => const AuthState.authenticated()
      );
    }, signedOut: (e) async* {
      await _authorizationFacadeInterface.signOut();
      yield const AuthState.unauthenticated();
    });
  }
}
