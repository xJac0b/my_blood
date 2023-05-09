part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  factory UserState({
    User? user,
    AutovalidateMode? showErrorMessages,
    required bool isSubmitting,
  }) = _UserState;

  const UserState._();

  factory UserState.initial() => UserState(
        isSubmitting: true,
      );
}
