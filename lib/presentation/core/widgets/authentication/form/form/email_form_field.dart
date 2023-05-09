import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'custom_text_field.dart';

class EmailFormField extends StatelessWidget {
  const EmailFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      initialValue:
          context.read<SignInFormBloc>().state.emailAddress.value.fold(
                (f) => null,
                (r) => r,
              ),
      prefixIcon: const Icon(Icons.email),
      hintText: 'emailFieldHint'.tr(),
      keyboardType: TextInputType.emailAddress,
      validator: (_) =>
          context.read<SignInFormBloc>().state.emailAddress.value.fold(
                (f) => f.maybeMap(
                  invalidEmail: (_) => 'Invalid Email',
                  orElse: () => null,
                ),
                (_) => null,
              ),
      onChanged: (value) {
        context
            .read<SignInFormBloc>()
            .add(SignInFormEvent.emailChanged(email: value));
      },
    );
  }
}
