import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../application/auth/user/user_bloc.dart';
import '../../../core/widgets/authentication/form/date_field.dart';
import '../../../core/widgets/authentication/form/gender_dropdown.dart';
import '../../../core/widgets/authentication/form/name_form_field.dart';
import 'weight_field.dart';

class FillDataForm extends StatelessWidget {
  const FillDataForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const NameFormField(),
              const SizedBox(height: 20),
              GenderDropdown(
                  maleInitial:
                      context.read<UserBloc>().state.user?.male ?? true),
              const SizedBox(height: 20),
              DateField(
                validator: (_) =>
                    context.read<UserBloc>().state.user?.dateOfBirth.value.fold(
                          (f) => f.maybeMap(
                            invalidDate: (_) => 'invalidDate'.tr(),
                            orElse: () => 'invalidDate'.tr(),
                          ),
                          (_) => null,
                        ),
                initialValue: context
                    .read<UserBloc>()
                    .state
                    .user
                    ?.dateOfBirth
                    .value
                    .fold((l) => null, id),
                hintText: 'dateOfBirth'.tr(),
                dateChanged: (date) => context
                    .read<UserBloc>()
                    .add(UserEvent.dateOfBirthChanged(date: date)),
              ),
              const SizedBox(height: 20),
              const WeightField(),
            ],
          ),
        );
      },
    );
  }
}
