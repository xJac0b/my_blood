part of 'entry_form_bloc.dart';

enum EntryFormPages { date, results, title }

@freezed
class EntryFormState with _$EntryFormState {
  const factory EntryFormState({
    required EntryFormPages pageIndex,
    required Entry entry,
    required Option<Either<EntryFailure, Unit>> entryFailureOrSuccessOption,
    required bool isSaving,
    required bool editMode,
    required bool ready,
  }) = _EntryFormState;

  factory EntryFormState.initial({required bool ready}) {
    return EntryFormState(
        pageIndex: EntryFormPages.date,
        entry: Entry.empty(),
        entryFailureOrSuccessOption: none(),
        isSaving: false,
        editMode: false,
        ready: ready);
  }
}
