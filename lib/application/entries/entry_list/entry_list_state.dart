part of 'entry_list_bloc.dart';

@freezed
class EntryListState with _$EntryListState {
  const factory EntryListState.initial() = _Initial;
  const factory EntryListState.loading() = _Loading;
  const factory EntryListState.loadSuccess(
      List<Entry> entries) = _LoadSuccess;
  const factory EntryListState.loadFailure(EntryFailure entryFailure) =
      _LoadFailure;
}
