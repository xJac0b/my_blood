import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'presentation/core/my_app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyAppWidget());
}
