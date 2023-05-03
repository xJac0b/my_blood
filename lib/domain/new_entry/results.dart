import 'package:freezed_annotation/freezed_annotation.dart';

import 'constants/blood_test_units.dart';
import 'unit_value.dart';

part 'results.freezed.dart';

@unfreezed
abstract class Results implements _$Results {
  factory Results({
    required Map<String, Map<String, UnitValue>> results,
  }) = _Results;

  const Results._();

  factory Results.empty() => Results(results: {});
  bool get isEmpty => results.isEmpty;

  void addCategory(String category) {
    if (results.containsKey(category)) {
      return;
    }
    if (category == ResultUnitsKeys.hematology) {
      results[category] = resultsUnits[category]!
          .map((k, v) => MapEntry(k, UnitValue(unitIndex: v[0], value: 0)));
    } else {
      results[category] = {};
    }
  }

  void removeCategory(String category) {
    if (!results.containsKey(category)) {
      return;
    }
    results.remove(category);
  }

  void addResult(String category, String key) {
    if (results[category]!.containsKey(key)) {
      return;
    }
    results[category]![key] =
        UnitValue(unitIndex: resultsUnits[category]![key]![0], value: 0);
  }

  void removeResult(String category, String key) {
    if (!results[category]!.containsKey(key)) {
      return;
    }
    results[category]!.remove(key);
  }

  List<String> get categoriesLeft => resultsUnits.keys
      .where((element) => !results.keys.contains(element))
      .toList();
  List<String> resultsLeft(String category) => resultsUnits[category]!
      .keys
      .where((element) => !results[category]!.keys.contains(element))
      .toList();
}
