import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/user/user_bloc.dart';
import '../../core/widgets/default_padding.dart';
import '../../core/widgets/text/headline_large.dart';
import 'widgets/fill_data_form.dart';

class FillDataPageView extends StatelessWidget {
  const FillDataPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Center(
          child: SingleChildScrollView(
            child: DefaultPadding(
              child: BlocBuilder<UserBloc, UserState>(
                builder: (context, state) {
                  if (state.isSubmitting) {
                    return const CircularProgressIndicator();
                  }
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultPadding(
                        child: HeadlineLarge('fillDataHeading'.tr()),
                      ),
                      const SizedBox(height: 20),
                      const FillDataForm(),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
