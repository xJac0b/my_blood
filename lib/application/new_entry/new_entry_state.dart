part of 'new_entry_bloc.dart';

@freezed
class NewEntryState with _$NewEntryState {
  const factory NewEntryState(
      {required int pageIndex, required NewEntry newEntry}) = _NewEntryState;

  factory NewEntryState.initial() {
    return NewEntryState(pageIndex: 0, newEntry: NewEntry.empty());
  }
}
