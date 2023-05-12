import 'package:freezed_annotation/freezed_annotation.dart';

part 'entry_failure.freezed.dart';

@freezed
abstract class EntryFailure with _$EntryFailure {
  const factory EntryFailure.unexpected() = _Unexpected;
  const factory EntryFailure.insufficientPermission() = _InsufficientPermission;
  const factory EntryFailure.unableToUpdate() = _UnableToUpdate;
}
