import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entries/entry.dart';
import '../../../domain/entries/entry_failure.dart';
import '../../../domain/entries/i_entry_repository.dart';
import '../../../domain/entries/value_objects.dart';

part 'entry_form_bloc.freezed.dart';
part 'entry_form_event.dart';
part 'entry_form_state.dart';

@injectable
class EntryFormBloc extends Bloc<EntryFormEvent, EntryFormState> {
  EntryFormBloc(this._entryRepository)
      : super(EntryFormState.initial(ready: false)) {
    on<_Initialized>((event, emit) {
      if (event.entry != null) {
        emit(state.copyWith(
            entry: event.entry!
                .copyWith(results: event.entry!.results.createOrder()),
            editMode: true));
      }
      emit(state.copyWith(ready: true));
    });
    on<_PageChanged>((event, emit) {
      if (event.pageIndex == EntryFormPages.results &&
              !state.entry.date.isValid() ||
          event.pageIndex == EntryFormPages.title &&
              state.entry.results.noElements) {
        return;
      }
      emit(state.copyWith(pageIndex: event.pageIndex));
    });
    on<_DateChanged>((event, emit) {
      emit(state.copyWith.entry(date: EntryDate(event.date)));
    });
    on<_TitleChanged>((event, emit) {
      emit(state.copyWith.entry(title: EntryTitle(event.title)));
    });
    on<_CategoryAdded>((event, emit) {
      emit(state.copyWith.entry(
        results: state.entry.results.addCategory(event.category),
      ));
    });
    on<_CategoryChanged>((event, emit) {
      emit(state.copyWith(
        entry: state.entry.copyWith(
          results: state.entry.results
              .changeCategory(event.oldCategory, event.newCategory),
        ),
      ));
    });
    on<_ElementAdded>((event, emit) {
      emit(state.copyWith(
        entry: state.entry.copyWith(
            results:
                state.entry.results.addElement(event.category, event.element)),
      ));
    });
    on<_CategoryRemoved>((event, emit) {
      emit(state.copyWith(
        entry: state.entry.copyWith(
            results: state.entry.results.removeCategory(event.category)),
      ));
    });
    on<_ElementRemoved>((event, emit) {
      emit(state.copyWith(
        entry: state.entry.copyWith(
            results: state.entry.results
                .removeElement(event.category, event.element)),
      ));
    });
    on<_ElementChanged>((event, emit) {
      emit(state.copyWith(
        entry: state.entry.copyWith(
            results: state.entry.results.changeElement(
                event.category, event.oldElement, event.newElement)),
      ));
    });
    on<_UnitChanged>((event, emit) {
      emit(state.copyWith(
        entry: state.entry.copyWith(
            results: state.entry.results
                .changeUnit(event.category, event.element, event.unitIndex)),
      ));
    });
    on<_ValueChanged>((event, emit) {
      emit(state.copyWith(
        entry: state.entry.copyWith(
            results: state.entry.results
                .changeValue(event.category, event.element, event.value)),
      ));
    });
    on<_Saved>((event, emit) async {
      if (state.entry.title.isValid() &&
          state.entry.date.isValid() &&
          state.entry.results.noElements) {
        return;
      }
      emit(state.copyWith(isSaving: true));
      Either<EntryFailure, Unit> failureOrSuccess;
      if (state.editMode) {
        failureOrSuccess = await _entryRepository.update(state.entry);
      } else {
        failureOrSuccess = await _entryRepository.create(state.entry);
      }
      emit(state.copyWith(
        isSaving: false,
        entryFailureOrSuccessOption: optionOf(failureOrSuccess),
      ));
    });
  }
  final IEntryRepository _entryRepository;
}
