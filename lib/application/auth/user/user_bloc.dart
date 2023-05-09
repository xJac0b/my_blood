import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/auth/user.dart';
import '../../../domain/auth/value_objects.dart';
import '../../../infrastructure/auth/firebase_user_mapper.dart';
import '../../../infrastructure/core/firestore_helpers.dart';
import '../../../injection.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(
    this._authFacade,
  ) : super(UserState.initial()) {
    on<LoadUser>((event, emit) async => getIt<firebase_auth.FirebaseAuth>()
        .currentUser
        ?.toDomain(await getIt<FirebaseFirestore>().userDocument())
        .then(
            (value) => emit(state.copyWith(user: value, isSubmitting: false))));
    on<NameChanged>(changeName);
    on<GenderChanged>(changeGender);
    on<DateOfBirthChanged>(changeDateOfBirth);
    on<WeightChanged>(changeWeight);
    on<Saved>(save);
    add(const UserEvent.loadUser());
  }
  final IAuthFacade _authFacade;

  void changeName(NameChanged event, Emitter<UserState> emit) {
    emit(
      state.copyWith.user!(
        displayName: DisplayName(event.name),
      ),
    );
  }

  void changeGender(GenderChanged event, Emitter<UserState> emit) {
    emit(
      state.copyWith.user!(
        male: event.male,
      ),
    );
  }

  void changeDateOfBirth(DateOfBirthChanged event, Emitter<UserState> emit) {
    emit(
      state.copyWith.user!(
        dateOfBirth: DateOfBirth(event.date),
      ),
    );
  }

  void changeWeight(WeightChanged event, Emitter<UserState> emit) {
    emit(
      state.copyWith.user!(
        weight: Weight(event.weight),
      ),
    );
  }

  Future<void> save(Saved event, Emitter<UserState> emit) async {
    final isDisplayNameValid = state.user!.displayName.isValid();
    final isWeightValid = state.user!.weight.isValid();
    final isDateOfBirthValid = state.user!.dateOfBirth.isValid();
    User? user;
    if (isDisplayNameValid && isWeightValid && isDateOfBirthValid) {
      emit(
        state.copyWith(isSubmitting: true),
      );
      await _authFacade.setUserData(
          displayName: state.user!.displayName,
          dateOfBirth: state.user!.dateOfBirth,
          male: state.user!.male,
          weight: state.user!.weight);
      user = state.user!.copyWith(filled: true);
    }
    emit(
      state.copyWith(isSubmitting: false, user: user ?? state.user),
    );
  }

  @override
  void onTransition(Transition<UserEvent, UserState> transition) {
    super.onTransition(transition);
    debugPrint(transition.toString());
  }

  @override
  void onChange(Change<UserState> change) {
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
  void onEvent(UserEvent event) {
    super.onEvent(event);
    debugPrint(event.toString());
  }
}
