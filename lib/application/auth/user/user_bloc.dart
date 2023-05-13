import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/auth/user/i_user_repository.dart';
import '../../../domain/auth/user/user.dart';
import '../../../domain/auth/value_objects.dart';
import '../../../injection.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(
    this._userRepository,
  ) : super(UserState.initial()) {
    on<LoadUser>((event, emit) async {
      await getIt<IAuthFacade>().getSignedInUser().fold(
          () => null,
          (t) => _userRepository.get(t).then((value) => value.fold((l) => null,
              (r) => emit(state.copyWith(user: r, isSubmitting: false)))));
    });
    on<NameChanged>(changeName);
    on<GenderChanged>(changeGender);
    on<DateOfBirthChanged>(changeDateOfBirth);
    on<WeightChanged>(changeWeight);
    on<Saved>(save);
    add(const UserEvent.loadUser());
  }
  final IUserRepository _userRepository;

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
    if (state.user == null) {
      add(const UserEvent.loadUser());
      if (state.user == null) {
        return;
      }
    }
    final isDisplayNameValid = state.user!.displayName.isValid();
    final isWeightValid = state.user!.weight.isValid();
    final isDateOfBirthValid = state.user!.dateOfBirth.isValid();
    User? user;
    if (isDisplayNameValid && isWeightValid && isDateOfBirthValid) {
      emit(
        state.copyWith(isSubmitting: true),
      );
      await _userRepository.update(state.user!);
      final a =
          getIt<IAuthFacade>().getSignedInUser().fold(() => null, (t) => t);
      await a?.updateDisplayName(state.user!.displayName.getOrCrash());
      user = state.user!.copyWith(filled: true);
    }
    emit(
      state.copyWith(
          isSubmitting: false,
          user: user ?? state.user,
          showErrorMessages: AutovalidateMode.always),
    );
  }
}
