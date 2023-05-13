import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entries/entry.dart';
import '../../../domain/entries/i_entry_repository.dart';

part 'entry_bloc.freezed.dart';
part 'entry_event.dart';
part 'entry_state.dart';

@injectable
class EntryBloc extends Bloc<EntryEvent, EntryState> {
  EntryBloc(this._entryRepository) : super(const _Initial()) {
    on<_Deleted>((event, emit) {
      _entryRepository.delete(event.entry);
      emit(const _DeletionSuccess());
    });
  }
  final IEntryRepository _entryRepository;
}
