import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/auth_failure.dart';
import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/auth/value_objects.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<SignInWithEmailAndPasswordPressed>(
      signInWithEmailAndPassword,
    );
    on<RegisterWithEmailAndPasswordPressed>(
      registerWithEmailAndPassword,
    );
    on<SignInWithGooglePressed>(
      signInWithGoogle,
    );
    on<EmailChanged>(
      changeEmailAddress,
    );
    on<PasswordChanged>(
      changePassword,
    );
    on<SendPasswordResetEmail>(
      sendPasswordResetEmail,
    );
    on<SendVerificationEmail>(
      sendVerificationEmail,
    );
    on<CheckVerificationStatus>(checkVerificationStatus);
    on<EmailVerified>(
        (event, emit) => emit(state.copyWith(isEmailVerified: true)));
  }
  final IAuthFacade _authFacade;

  void changeEmailAddress(EmailChanged event, Emitter<SignInFormState> emit) {
    emit(
      state.copyWith(
        emailAddress: EmailAddress(event.email),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  void changePassword(PasswordChanged event, Emitter<SignInFormState> emit) {
    emit(
      state.copyWith(
        password: Password(event.password),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> registerWithEmailAndPassword(
    RegisterWithEmailAndPasswordPressed event,
    Emitter<SignInFormState> emit,
  ) async {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        ),
      );

      failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: AutovalidateMode.onUserInteraction,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }

  Future<void> signInWithEmailAndPassword(
    SignInWithEmailAndPasswordPressed event,
    Emitter<SignInFormState> emit,
  ) async {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        ),
      );

      failureOrSuccess = await _authFacade.signInWithEmailAndPassword(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: AutovalidateMode.onUserInteraction,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }

  Future<void> signInWithGoogle(
    SignInWithGooglePressed event,
    Emitter<SignInFormState> emit,
  ) async {
    emit(
      state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ),
    );

    final failureOrSuccess = await _authFacade.signInWithGoogle();

    emit(
      state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(failureOrSuccess),
      ),
    );
  }

  Future<void> sendPasswordResetEmail(
    SendPasswordResetEmail event,
    Emitter<SignInFormState> emit,
  ) async {
    if (!state.emailAddress.isValid()) {
      emit(
        state.copyWith(
          showErrorMessages: AutovalidateMode.onUserInteraction,
          authFailureOrSuccessOption: none(),
        ),
      );
      return;
    }
    emit(
      state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ),
    );

    final failureOrSuccess = await _authFacade.sendPasswordResetEmail(
        emailAddress: state.emailAddress);

    emit(
      state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(failureOrSuccess),
      ),
    );
  }

  Future<void> sendVerificationEmail(
      SendVerificationEmail event, Emitter<SignInFormState> emit) async {
    if (state.verificationEmailAttempts < 1) {
      return;
    }
    emit(
      state.copyWith(
          isSubmitting: true,
          isEmailVerified: null,
          verificationEmailAttempts: state.verificationEmailAttempts - 1,
          authFailureOrSuccessOption: none()),
    );
    await _authFacade.sendVerificationEmail();
    emit(state.copyWith(
        isEmailVerified: null,
        isSubmitting: false,
        authFailureOrSuccessOption: none()));
  }

  Future<void> checkVerificationStatus(
      CheckVerificationStatus event, Emitter<SignInFormState> emit) async {
    emit(state.copyWith(isSubmitting: true, isEmailVerified: null));
    final verified = await _authFacade.isEmailVerified();
    emit(
      state.copyWith(
        isSubmitting: false,
        isEmailVerified: verified,
      ),
    );
  }

  @override
  void onTransition(Transition<SignInFormEvent, SignInFormState> transition) {
    super.onTransition(transition);
    debugPrint(transition.toString());
  }

  @override
  void onChange(Change<SignInFormState> change) {
    super.onChange(change);
    debugPrint(change.toString());
    debugPrint(change.currentState.toString());
    debugPrint(change.nextState.toString());
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    debugPrint(error.toString());
  }

  @override
  void onEvent(SignInFormEvent event) {
    super.onEvent(event);
    debugPrint(event.toString());
  }
}
