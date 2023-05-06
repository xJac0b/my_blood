import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BackArrowIcon extends StatelessWidget {
  const BackArrowIcon({super.key, this.onPressed});
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        onPressed: onPressed ?? () => context.router.pop());
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ObjectFlagProperty<Function()?>.has('onPressed', onPressed));
  }
}
