part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.authenticated(final User user) = Authenticated;
  const factory AuthState.unauthenticated() = Unauthenticated;
}
