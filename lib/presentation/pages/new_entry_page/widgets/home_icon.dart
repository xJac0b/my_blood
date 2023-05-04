import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class HomeIcon extends StatelessWidget {
  const HomeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.home, color: Colors.black),
      onPressed: () => context.router.popUntilRoot(),
    );
  }
}
