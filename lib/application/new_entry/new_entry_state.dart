part of 'new_entry_bloc.dart';

@freezed
class NewEntryState with _$NewEntryState {
  const factory NewEntryState({
    required int pageIndex,
    required DateTime date,
    //TODO:: required Results results,
    required String title,
  }) = _NewEntryState;

  factory NewEntryState.initial() {
    final now = DateTime.now();
    return NewEntryState(
        pageIndex: 0, date: DateTime(now.year, now.month, now.day), title: '');
  }
}
