// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/i_auth_facade.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authFacade) : super(const AuthState.initial()) {
    on<AuthCheckRequested>(authCheckRequested);
    on<SignedOut>(signedOut);
    add(const AuthEvent.authCheckRequested());
  }

  final IAuthFacade _authFacade;

  Future<void> authCheckRequested(
    AuthCheckRequested event,
    Emitter<AuthState> emit,
  ) async {
    final userOption = await _authFacade.getSignedInUser();
    userOption.fold(
      () => emit(const AuthState.unauthenticated()),
      (_) => emit(const AuthState.authenticated()),
    );
  }

  Future<void> signedOut(
    SignedOut event,
    Emitter<AuthState> emit,
  ) async {
    await _authFacade.signOut();
    emit(const AuthState.unauthenticated());
  }
}
