import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'custom_text_field.dart';

class PasswordFormField extends StatefulWidget {
  const PasswordFormField({
    super.key,
    this.onPressed,
  });
  final Function()? onPressed;

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ObjectFlagProperty<Function()?>.has('onPressed', onPressed));
  }
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomTextField(
          initialValue: context
              .read<SignInFormBloc>()
              .state
              .password
              .value
              .fold((f) => null, (r) => r),
          hintText: 'passwordFieldHint'.tr(),
          keyboardType: TextInputType.visiblePassword,
          prefixIcon: const Icon(Icons.lock),
          suffixIcon: IconButton(
            onPressed: () => setState(() => _obscureText = !_obscureText),
            icon: _obscureText
                ? const Icon(Icons.visibility_off)
                : const Icon(Icons.visibility),
          ),
          obscureText: _obscureText,
          onChanged: (value) => context.read<SignInFormBloc>().add(
                SignInFormEvent.passwordChanged(password: value),
              ),
          validator: (_) =>
              context.read<SignInFormBloc>().state.password.value.fold(
                    (f) => f.maybeMap(
                      shortPassword: (_) => 'Short Password',
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        ),
        if (widget.onPressed != null)
          TextButton(
              onPressed: widget.onPressed,
              child: Text(
                'forgotPassword'.tr(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ))
      ],
    );
  }
}
