import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../injection.dart';
import 'verification_page_view.dart';

@RoutePage()
class VerificationPage extends StatelessWidget {
  const VerificationPage({Key? key, required this.email}) : super(key: key);
  final String email;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: VerificationPageView(email: email),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('email', email));
  }
}
