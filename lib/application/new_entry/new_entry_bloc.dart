import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/new_entry/new_entry.dart';
import '../../domain/new_entry/value_objects.dart';

part 'new_entry_event.dart';
part 'new_entry_state.dart';
part 'new_entry_bloc.freezed.dart';

class NewEntryBloc extends Bloc<NewEntryEvent, NewEntryState> {
  NewEntryBloc() : super(NewEntryState.initial()) {
    on<_PageChanged>((event, emit) {
      emit(state.copyWith(pageIndex: event.pageIndex));
    });
    on<_DateChanged>((event, emit) {
      emit(state.copyWith.newEntry(date: NewEntryDate(event.date)));
    });
    on<_TitleChanged>((event, emit) {
      emit(state.copyWith.newEntry(title: NewEntryTitle(event.title)));
    });
    on<_CategoryAdded>((event, emit) {
      emit(state.copyWith.newEntry(
        results: state.newEntry.results.addCategory(event.category),
      ));
    });
    on<_CategoryChanged>((event, emit) {
      emit(state.copyWith(
        newEntry: state.newEntry.copyWith(
          results: state.newEntry.results
              .changeCategory(event.oldCategory, event.newCategory),
        ),
      ));
    });
    on<_ElementAdded>((event, emit) {
      emit(state.copyWith(
        newEntry: state.newEntry.copyWith(
            results: state.newEntry.results
                .addElement(event.category, event.element)),
      ));
    });
    on<_CategoryRemoved>((event, emit) {
      emit(state.copyWith(
        newEntry: state.newEntry.copyWith(
            results: state.newEntry.results.removeCategory(event.category)),
      ));
    });
    on<_ElementRemoved>((event, emit) {
      emit(state.copyWith(
        newEntry: state.newEntry.copyWith(
            results: state.newEntry.results
                .removeElement(event.category, event.element)),
      ));
    });
    on<_UnitChanged>((event, emit) {
      emit(state.copyWith(
        newEntry: state.newEntry.copyWith(
            results: state.newEntry.results
                .changeUnit(event.category, event.element, event.unitIndex)),
      ));
    });
    on<_ValueChanged>((event, emit) {
      debugPrint((state.newEntry.results.results['hematology']!['WBC'] ==
              state.newEntry.results
                  .changeValue(event.category, event.element, event.value)
                  .results['hematology']!['WBC'])
          .toString());
      //! Should be false
      emit(state.copyWith(
        newEntry: state.newEntry.copyWith(
            results: state.newEntry.results
                .changeValue(event.category, event.element, event.value)),
      ));
    });
    on<_Saved>((event, emit) {
      if (state.newEntry.results.noElements) {
        emit(state);
      }
      throw UnimplementedError();
    });
  }

  @override
  void onTransition(Transition<NewEntryEvent, NewEntryState> transition) {
    super.onTransition(transition);
    debugPrint(transition.toString());
  }

  @override
  void onChange(Change<NewEntryState> change) {
    super.onChange(change);
    debugPrint(change.toString());
    debugPrint(change.currentState.toString());
    debugPrint(change.nextState.toString());
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    debugPrint(error.toString());
  }

  @override
  void onEvent(NewEntryEvent event) {
    super.onEvent(event);
    debugPrint(event.toString());
  }
}
