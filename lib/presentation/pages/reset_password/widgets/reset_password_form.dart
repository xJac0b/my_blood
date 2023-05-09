import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../core/widgets/authentication/form/email_form_field.dart';
import '../../../core/widgets/authentication/form/wide_button.dart';
import '../../../core/widgets/default_padding.dart';

class ResetPaswordForm extends StatelessWidget {
  const ResetPaswordForm({super.key});

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
                    userNotFound: (_) => 'userNotFound'.tr(),
                    invalidEmail: (_) => 'invalidEmail'.tr(),
                    orElse: () => 'serverError'.tr(),
                  ),
                )),
              );
            },
            (_) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('resetPasswordSuccess'.tr()),
              ));
              context.router.popUntilRoot();
            },
          ),
        );
      },
      builder: (context, state) {
        return state.isSubmitting
            ? const CircularProgressIndicator()
            : Form(
                autovalidateMode: state.showErrorMessages,
                child: Column(
                  children: [
                    const DefaultPadding(
                      child: EmailFormField(),
                    ),
                    const SizedBox(height: 20),
                    DefaultPadding(
                      child: WideButton(
                          onPressed: () {
                            context
                                .read<SignInFormBloc>()
                                .add(const SendPasswordResetEmail());
                          },
                          label: 'resetPasswordSubmit'.tr()),
                    )
                  ],
                ),
              );
      },
    );
  }
}
