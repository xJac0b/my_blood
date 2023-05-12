part of 'entry_list_bloc.dart';

@freezed
class EntryListEvent with _$EntryListEvent {
  const factory EntryListEvent.started([int? count]) = _Started;
  const factory EntryListEvent.entryReceived(
    Either<EntryFailure, List<Entry>> failureOrNotes,
  ) = _EntryReceived;
}
