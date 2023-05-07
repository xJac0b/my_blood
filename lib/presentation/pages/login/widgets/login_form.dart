import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../core/widgets/authentication/form/form/email_form_field.dart';
import '../../../core/widgets/authentication/form/form/password_form_field.dart';
import '../../../core/widgets/authentication/form/form/switch_form_button.dart';
import '../../../core/widgets/authentication/form/form/wide_button.dart';
import '../../../router/router.gr.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return state.isSubmitting
            ? const Center(child: CircularProgressIndicator())
            : Form(
                child: Column(children: [
                  const EmailFormField(),
                  const SizedBox(
                    height: 20,
                  ),
                  PasswordFormField(
                    onPressed: () =>
                        context.router.push(const ResetPasswordRoute()),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  WideButton(
                    label: 'loginButton'.tr(),
                    onPressed: () => (),
                    // context.read<SignInFormBloc>().add(
                    //       const SignInFormEvent
                    //           .signInWithEmailWithPasswordPressed(),
                    //     ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SwitchFormButton(
                    leadingText: 'noAccount'.tr(),
                    buttonText: 'registerButton'.tr(),
                    route: const RegisterRoute(),
                  )
                ]),
              );
      },
    );
  }
}