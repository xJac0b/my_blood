part of 'entry_form_bloc.dart';

enum EntryFormPages { date, results, title }

@freezed
class EntryFormState with _$EntryFormState {
  const factory EntryFormState({
    required EntryFormPages pageIndex,
    required Entry entry,
    required Option<Either<EntryFailure, Unit>> entryFailureOrSuccessOption,
    required bool isSaving,
  }) = _EntryFormState;

  factory EntryFormState.initial() {
    return EntryFormState(
      pageIndex: EntryFormPages.date,
      entry: Entry.empty(),
      entryFailureOrSuccessOption: none(),
      isSaving: false,
    );
  }
}
