import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/user/user_bloc.dart';
import '../../core/widgets/app_bar.dart';
import '../../core/widgets/default_padding.dart';
import '../entry_form/widgets/app_bar_icons/back_arrow_icon.dart';
import 'widgets/fill_data_form.dart';

class UserPageView extends StatelessWidget {
  const UserPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: true,
      appBar:
          CustomAppBar(leading: const BackArrowIcon(), title: 'yourData'.tr()),
      body: DefaultPadding(
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            if (state.isSubmitting) {
              return const Center(child: CircularProgressIndicator());
            }
            return const FillDataForm();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<UserBloc>().add(const UserEvent.saved());
          },
          child: const Icon(Icons.save)),
    ));
  }
}
