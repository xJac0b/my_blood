import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../utils/extensions.dart';
import '../../core/widgets/default_padding.dart';
import '../../core/widgets/text/headline_large.dart';
import '../../router/router.gr.dart';

class VerificationPageView extends StatelessWidget {
  const VerificationPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DefaultPadding(
                child: HeadlineLarge(
                  'verifyEmailHeading'.tr(),
                ),
              ),
              const SizedBox(height: 10),
              DefaultPadding(
                child: Text(
                  style: TextStyle(color: context.colors.onBackground),
                  textAlign: TextAlign.center,
                  'verifyEmailInfo'.tr(),
                ),
              ),
              DefaultPadding(
                child: Icon(
                  Icons.mail_outline,
                  color: context.colors.primary,
                  size: 300,
                ),
              ),
              DefaultPadding(
                child: TextButton(
                  onPressed: () => context.router.push(const FillDataRoute()),
                  child: Text('verifyEmailResend'.tr()),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
