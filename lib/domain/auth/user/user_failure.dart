import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_failure.freezed.dart';

@freezed
abstract class UserFailure with _$UserFailure {
  const factory UserFailure.unexpected() = _Unexpected;
  const factory UserFailure.insufficientPermission() = _InsufficientPermission;
  const factory UserFailure.unableToUpdate() = _UnableToUpdate;
}
