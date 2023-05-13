part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormState with _$SignInFormState {
  factory SignInFormState(
      {required EmailAddress emailAddress,
      required Password password,
      required bool isSubmitting,
      required AutovalidateMode? showErrorMessages,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
      bool? isEmailVerified,
      required int verificationEmailAttempts}) = _SignInFormState;

  const SignInFormState._();

  factory SignInFormState.initial() => SignInFormState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        isSubmitting: false,
        showErrorMessages: AutovalidateMode.disabled,
        authFailureOrSuccessOption: none(),
        verificationEmailAttempts: 1,
      );
}
