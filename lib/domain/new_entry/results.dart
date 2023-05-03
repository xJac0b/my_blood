import 'package:freezed_annotation/freezed_annotation.dart';

import 'constants/result_units_keys.dart';
import 'constants/results_units.dart';
import 'unit_value.dart';

part 'results.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
abstract class Results implements _$Results {
  factory Results({
    required Map<String, Map<String, UnitValue>> results,
  }) = _Results;

  const Results._();

  factory Results.empty() => Results(results: {});
  bool get isEmpty => results.isEmpty;

  Results addCategory(String category) {
    if (category == ResultUnitsKeys.hematology) {
      results[category] = resultsUnits[category]!
          .map((k, v) => MapEntry(k, UnitValue(unitIndex: v[0], value: 0)));
    } else {
      results[category] = {};
    }
    return copyWith(results: results);
  }

  Results removeCategory(String category) {
    results.remove(category);
    return copyWith(results: results);
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
    results[category]![key]!.unitIndex = unitIndex;
    return copyWith(results: results);
  }

  Results changeValue(String category, String key, double value) {
    results[category]![key]!.value = value;
    return copyWith(results: results);
  }

  List<String> categoriesLeft() => resultsUnits.keys
      .where((category) => !results.keys.contains(category))
      .toList();
  List<String> elementsLeft(String category) => resultsUnits[category]!
      .keys
      .where((element) => !results[category]!.keys.contains(element))
      .toList();
}
