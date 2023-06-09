import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../gen/assets.gen.dart';
import '../../../utils/extensions.dart';
import '../../core/widgets/authentication/form/wide_button.dart';
import '../../core/widgets/default_padding.dart';
import '../../core/widgets/text/headline_large.dart';
import '../../router/router.gr.dart';

class VerificationPageView extends StatelessWidget {
  const VerificationPageView({Key? key, required this.email}) : super(key: key);
  final String email;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        if (state.isEmailVerified != null) {
          if (state.isEmailVerified!) {
            context.router.replace(const FillDataRoute());
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'emailNotVerified'.tr(),
                ),
              ),
            );
          }
        }
      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: state.isSubmitting
                ? const Center(child: CircularProgressIndicator())
                : DefaultPadding(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HeadlineLarge('verifyEmailHeading'.tr()),
                        const SizedBox(height: 10),
                        Text(
                            style:
                                TextStyle(color: context.colors.onBackground),
                            textAlign: TextAlign.center,
                            'verifyEmailInfo'.tr(namedArgs: {'email': email})),
                        Expanded(child: Assets.images.mail.svg()),
                        if (state.verificationEmailAttempts > 0)
                          TextButton(
                            onPressed: () => context.read<SignInFormBloc>().add(
                                  const SignInFormEvent.sendVerificationEmail(),
                                ),
                            child: Text('verifyEmailResend'.tr()),
                          ),
                        WideButton(
                            label: 'next'.tr(),
                            onPressed: () {
                              context.read<SignInFormBloc>().add(
                                    const SignInFormEvent
                                        .checkVerificationStatus(),
                                  );
                            })
                      ],
                    ),
                  ),
          ),
        );
      },
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('email', email));
  }
}
