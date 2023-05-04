import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'constants/result_keys.dart';
import 'constants/results_units.dart';
import 'unit_value.dart';

part 'results.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
abstract class Results implements _$Results {
  factory Results(
      {required Map<String, Map<String, UnitValue>> results,
      required List<String> order}) = _Results;

  const Results._();

  factory Results.empty() => Results(results: {}, order: []);
  bool get noElements =>
      results.isEmpty || results.values.every((e) => e.isEmpty);
  bool get noCategories => results.isEmpty;

  Results addCategory(String category) {
    if (categoriesLeft().isEmpty) {
      return copyWith(results: results);
    }
    final newResult = Map<String, Map<String, UnitValue>>.from(results);
    if (category == ResultKeys.hematology) {
      newResult[category] = resultsUnits[category]!
          .map((k, v) => MapEntry(k, UnitValue(unitIndex: v[0], value: 0)));
    } else {
      newResult[category] = {};
    }
    return copyWith(results: newResult, order: order..add(category));
  }

  Results removeCategory(String category) {
    final newResult = Map<String, Map<String, UnitValue>>.from(results);
    return copyWith(
        results: newResult..remove(category), order: order..remove(category));
  }

  Results changeCategory(String oldCategory, String newCategory) {
    return removeCategory(oldCategory).addCategory(newCategory);
  }

  Results addElement(String category, String key) {
    results[category]![key] =
        UnitValue(unitIndex: resultsUnits[category]![key]![0], value: 0);
    return copyWith(results: results);
  }

  Results removeElement(String category, String key) {
    results[category]!.remove(key);
    return copyWith(results: results);
  }

  Results changeUnit(String category, String key, int unitIndex) {
    // results[category]![key]!.unitIndex = unitIndex;
    return copyWith(results: results);
  }

  Results changeValue(String category, String key, double value) {
    final newResult = Map<String, Map<String, UnitValue>>.from(results);
    newResult[category]![key]!.value = value;
    return copyWith(results: newResult);
  }

  List<String> categoriesLeft() => resultsUnits.keys
      .where((category) => !results.keys.contains(category))
      .toList();
  List<String> elementsLeft(String category) => resultsUnits[category]!
      .keys
      .where((element) => !results[category]!.keys.contains(element))
      .toList();
}
