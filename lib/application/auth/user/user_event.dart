part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.loadUser() = LoadUser;
  const factory UserEvent.nameChanged({required String name}) = NameChanged;
  const factory UserEvent.genderChanged({required bool male}) = GenderChanged;
  const factory UserEvent.dateOfBirthChanged({required DateTime date}) =
      DateOfBirthChanged;
  const factory UserEvent.weightChanged({required double weight}) =
      WeightChanged;
  const factory UserEvent.saved() = Saved;
}
