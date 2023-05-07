import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Assets.images.appLogo.image(
      width: 120,
      height: 120,
    );
  }
}
