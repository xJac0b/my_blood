import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../utils/extensions.dart';
import '../../core/widgets/app_logo.dart';
import '../../core/widgets/default_padding.dart';
import '../../core/widgets/text/headline_large.dart';
import 'widgets/register_form.dart';

class RegisterPageView extends StatelessWidget {
  const RegisterPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: DefaultPadding(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AppLogo(),
              const SizedBox(height: 30),
              HeadlineLarge('registerPageHeadline'.tr(),
                  color: context.colors.primary),
              const SizedBox(height: 20),
              const RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}
