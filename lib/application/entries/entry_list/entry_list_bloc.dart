import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entries/entry.dart';
import '../../../domain/entries/entry_failure.dart';
import '../../../domain/entries/i_entry_repository.dart';

part 'entry_list_event.dart';
part 'entry_list_state.dart';
part 'entry_list_bloc.freezed.dart';

@injectable
class EntryListBloc extends Bloc<EntryListEvent, EntryListState> {
  EntryListBloc(this._entryRepository) : super(const _Initial()) {
    on<_Started>((event, emit) async {
      emit(const _Loading());
      await _entryStreamSubscription?.cancel();

      _entryStreamSubscription = _entryRepository.watch(event.count).listen(
            (failureOrNotes) => add(
              EntryListEvent.entryReceived(failureOrNotes),
            ),
          );
    });
    on<_EntryReceived>((event, emit) async {
      emit(event.failureOrNotes
          .fold(EntryListState.loadFailure, EntryListState.loadSuccess));
    });
  }
  final IEntryRepository _entryRepository;
  StreamSubscription<Either<EntryFailure, List<Entry>>>?
      _entryStreamSubscription;

  @override
  Future<void> close() async {
    await _entryStreamSubscription?.cancel();
    return super.close();
  }
}
