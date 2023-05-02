import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_entry_event.dart';
part 'new_entry_state.dart';
part 'new_entry_bloc.freezed.dart';

class NewEntryBloc extends Bloc<NewEntryEvent, NewEntryState> {
  NewEntryBloc() : super(NewEntryState.initial()) {
    on<_PageChanged>((event, emit) {
      emit(state.copyWith(pageIndex: event.pageIndex));
    });
    on<_DateChanged>((event, emit) {
      emit(state.copyWith(date: event.date));
    });
    on<_TitleChanged>((event, emit) {
      emit(state.copyWith(title: event.title));
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
