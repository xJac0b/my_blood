import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomSingleChildScrollView extends StatelessWidget {
  const CustomSingleChildScrollView(
      {super.key, required this.scrollView, this.child});
  final Widget? child;
  final bool scrollView;
  @override
  Widget build(BuildContext context) {
    return scrollView
        ? SingleChildScrollView(child: child)
        : Container(child: child);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('scrollView', scrollView));
  }
}
