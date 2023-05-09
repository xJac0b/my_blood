import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../application/auth/user/user_bloc.dart';
import '../../../core/widgets/authentication/form/number_field.dart';

class WeightField extends StatelessWidget {
  const WeightField({super.key});

  @override
  Widget build(BuildContext context) {
    return NumberField(
      validator: (_) => context.read<UserBloc>().state.user?.weight.value.fold(
            (f) => f.maybeMap(
              invalidWeight: (_) => 'invalidWeight'.tr(),
              orElse: () => 'invalidWeight'.tr(),
            ),
            (_) => null,
          ),
      initialValue: context
          .read<UserBloc>()
          .state
          .user
          ?.weight
          .value
          .fold((l) => null, id),
      hintText: 'weight'.tr(),
      prefixIcon: const Icon(Icons.balance),
      onChanged: (v) => context
          .read<UserBloc>()
          .add(UserEvent.weightChanged(weight: double.tryParse(v) ?? 0)),
    );
  }
}
