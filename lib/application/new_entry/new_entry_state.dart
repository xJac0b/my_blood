part of 'new_entry_bloc.dart';

enum NewEntryFormPages { date, results, title }

@freezed
class NewEntryState with _$NewEntryState {
  const factory NewEntryState(
      {required NewEntryFormPages pageIndex,
      required NewEntry newEntry}) = _NewEntryState;

  factory NewEntryState.initial() {
    return NewEntryState(
        pageIndex: NewEntryFormPages.date, newEntry: NewEntry.empty());
  }
}
