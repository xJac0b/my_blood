part of 'new_entry_bloc.dart';

@freezed
class NewEntryEvent with _$NewEntryEvent {
  const factory NewEntryEvent.pageChanged(int pageIndex) = _PageChanged;
  const factory NewEntryEvent.dateChanged(DateTime date) = _DateChanged;
  const factory NewEntryEvent.titleChanged(String title) = _TitleChanged;
  const factory NewEntryEvent.categoryAdded(String category) = _CategoryAdded;
  const factory NewEntryEvent.elementAdded(String category, String element) =
      _ElementAdded;
  const factory NewEntryEvent.categoryRemoved(String category) =
      _CategoryRemoved;
  const factory NewEntryEvent.elementRemoved(String category, String element) =
      _ElementRemoved;
  const factory NewEntryEvent.unitChanged(
      String category, String element, int unitIndex) = _UnitChanged;
  const factory NewEntryEvent.valueChanged(
      String category, String element, double value) = _ValueChanged;
  const factory NewEntryEvent.saved() = _Saved;
  
}
