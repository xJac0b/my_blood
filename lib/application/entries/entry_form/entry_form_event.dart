part of 'entry_form_bloc.dart';

@freezed
class EntryFormEvent with _$EntryFormEvent {
  const factory EntryFormEvent.initialized(Entry? entry) = _Initialized;
  const factory EntryFormEvent.pageChanged(EntryFormPages pageIndex) =
      _PageChanged;
  const factory EntryFormEvent.dateChanged(DateTime date) = _DateChanged;
  const factory EntryFormEvent.titleChanged(String title) = _TitleChanged;
  const factory EntryFormEvent.categoryAdded(String category) = _CategoryAdded;
  const factory EntryFormEvent.elementAdded(String category, String element) =
      _ElementAdded;
  const factory EntryFormEvent.categoryRemoved(String category) =
      _CategoryRemoved;
  const factory EntryFormEvent.categoryChanged(
      String oldCategory, String newCategory) = _CategoryChanged;
  const factory EntryFormEvent.elementRemoved(String category, String element) =
      _ElementRemoved;
  const factory EntryFormEvent.elementChanged(
      String category, String oldElement, String newElement) = _ElementChanged;
  const factory EntryFormEvent.unitChanged(
      String category, String element, int unitIndex) = _UnitChanged;
  const factory EntryFormEvent.valueChanged(
      String category, String element, double value) = _ValueChanged;
  const factory EntryFormEvent.saved() = _Saved;
}
