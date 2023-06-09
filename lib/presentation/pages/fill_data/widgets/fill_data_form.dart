import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/user/user_bloc.dart';
import '../../../core/widgets/authentication/form/date_field.dart';
import '../../../core/widgets/authentication/form/gender_dropdown.dart';
import '../../../core/widgets/authentication/form/name_form_field.dart';
import '../../../core/widgets/authentication/form/wide_button.dart';
import '../../../router/router.gr.dart';
import 'weight_field.dart';

class FillDataForm extends StatelessWidget {
  const FillDataForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
      listener: (context, state) {
        if (state.user?.filled == true) {
          context.router.replace(const HomeRoute());
        }
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages,
          child: Column(
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
                    .fold((l) => null, (r) => r.year != 0 ? r : null),
                hintText: 'dateOfBirth'.tr(),
                dateChanged: (date) => context
                    .read<UserBloc>()
                    .add(UserEvent.dateOfBirthChanged(date: date)),
              ),
              const SizedBox(height: 20),
              const WeightField(),
              const SizedBox(height: 20),
              WideButton(
                onPressed: () =>
                    context.read<UserBloc>().add(const UserEvent.saved()),
                label: 'next'.tr(),
              ),
            ],
          ),
        );
      },
    );
  }
}
