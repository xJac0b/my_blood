import 'package:flutter/material.dart';

import '../domain/entries/results.dart';
import '../domain/entries/unit_value.dart';

extension MapX on ResultsMap {
  static ResultsMap copyNestedMap(ResultsMap originalMap) {
    final newMap = <String, Map<String, UnitValue>>{};
    originalMap.forEach((key, value) {
      final newInnerMap = <String, UnitValue>{};
      value.forEach((innerKey, innerValue) {
        newInnerMap[innerKey] =
            UnitValue(unitIndex: innerValue.unitIndex, value: innerValue.value);
      });
      newMap[key] = newInnerMap;
    });

    return newMap;
  }
}

extension DateTimeX on DateTime {
  static DateTime get nowDate {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day);
  }
}

extension MediaQueryX on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;
}

extension ThemeColorX on BuildContext {
  ColorScheme get colors => Theme.of(this).colorScheme;
}

extension ThemeTextX on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}
