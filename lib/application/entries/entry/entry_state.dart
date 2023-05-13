part of 'entry_bloc.dart';

@freezed
class EntryState with _$EntryState {
  const factory EntryState.initial() = _Initial;
  const factory EntryState.deletionSuccess() = _DeletionSuccess;
}
