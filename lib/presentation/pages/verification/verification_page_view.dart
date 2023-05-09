import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../utils/extensions.dart';
import '../../core/widgets/authentication/form/form/wide_button.dart';
import '../../core/widgets/default_padding.dart';
import '../../core/widgets/text/headline_large.dart';
import '../../router/router.gr.dart';

class VerificationPageView extends StatelessWidget {
  const VerificationPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        if (state.isEmailVerified != null) {
          if (state.isEmailVerified!) {
            context.router.push(const FillDataRoute());
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
            body: Center(
              child: state.isSubmitting
                  ? const CircularProgressIndicator()
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DefaultPadding(
                            child: HeadlineLarge('verifyEmailHeading'.tr())),
                        const SizedBox(height: 10),
                        DefaultPadding(
                          child: BlocBuilder<AuthBloc, AuthState>(
                            builder: (context, state) {
                              return Text(
                                style: TextStyle(
                                    color: context.colors.onBackground),
                                textAlign: TextAlign.center,
                                state is Authenticated
                                    ? 'verifyEmailInfo'.tr(
                                        namedArgs: {'email': state.user.email})
                                    : 'verifyEmailInfo'.tr(),
                              );
                            },
                          ),
                        ),
                        DefaultPadding(
                          child: Icon(
                            Icons.mail_outline,
                            color: context.colors.primary,
                            size: 300,
                          ),
                        ),
                        if (state.verificationEmailAttempts > 0)
                          DefaultPadding(
                            child: TextButton(
                              onPressed: () =>
                                  context.read<SignInFormBloc>().add(
                                        const SignInFormEvent
                                            .sendVerificationEmail(),
                                      ),
                              child: Text('verifyEmailResend'.tr()),
                            ),
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
}
