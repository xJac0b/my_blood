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

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    failure.maybeMap(
                      cancelledByUser: (_) => 'cancelled'.tr(),
                      serverError: (_) => 'serverError'.tr(),
                      emailAlreadyInUse: (_) => 'emailAlreadyInUse'.tr(),
                      orElse: () => 'serverError'.tr(),
                    ),
                  ),
                ),
              );
            },
            (_) {
              context.router.replace(const VerificationRoute());
              context.read<SignInFormBloc>().add(
                    const SignInFormEvent.sendVerificationEmail(),
                  );
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages,
          child: Column(
            children: [
              const EmailFormField(),
              const SizedBox(
                height: 20,
              ),
              const PasswordFormField(),
              const SizedBox(
                height: 30,
              ),
              WideButton(
                onPressed: () => context.read<SignInFormBloc>().add(
                      const SignInFormEvent
                          .registerWithEmailAndPasswordPressed(),
                    ),
                label: 'registerButton'.tr(),
              ),
              const SizedBox(
                height: 30,
              ),
              SwitchFormButton(
                leadingText: 'alreadyRegistered'.tr(),
                buttonText: 'loginButton'.tr(),
                route: const LoginRoute(),
              )
            ],
          ),
        );
      },
    );
  }
}
