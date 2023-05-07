import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/authentication/form/form/email_form_field.dart';
import '../../../core/widgets/authentication/form/form/switch_form_button.dart';
import '../../../core/widgets/authentication/form/form/wide_button.dart';
import '../../../router/router.gr.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const EmailFormField(),
          const SizedBox(
            height: 20,
          ),
          WideButton(
            onPressed: () => context.router.push(const VerificationRoute()),
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
  }
}
