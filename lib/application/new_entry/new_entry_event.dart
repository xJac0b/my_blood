part of 'new_entry_bloc.dart';

@freezed
class NewEntryEvent with _$NewEntryEvent {
  const factory NewEntryEvent.pageChanged(int pageIndex) = _PageChanged;
  const factory NewEntryEvent.dateChanged(DateTime date) = _DateChanged;
  const factory NewEntryEvent.titleChanged(String title) = _TitleChanged;
}
