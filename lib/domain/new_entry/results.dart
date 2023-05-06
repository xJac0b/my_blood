import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/extensions.dart';
import 'constants/result_keys.dart';
import 'constants/results_units.dart';
import 'unit_value.dart';

part 'results.freezed.dart';

typedef ResultsMap = Map<String, Map<String, UnitValue>>;

@Freezed(makeCollectionsUnmodifiable: false)
abstract class Results implements _$Results {
  factory Results(
      {required ResultsMap results,
      required List<String> categoriesOrder,
      required Map<String, List<String>> elementsOrder}) = _Results;

  const Results._();

  factory Results.empty() =>
      Results(results: {}, categoriesOrder: [], elementsOrder: {});
  bool get noElements =>
      results.isEmpty || results.values.every((e) => e.isEmpty);
  bool get noCategories => results.isEmpty;

  Results addCategory(String category, [int? index]) {
    if (categoriesLeft().isEmpty) {
      return copyWith(results: results);
    }
    final newResults = ResultsMap.from(results);
    if (category == ResultKeys.hematology) {
      newResults[category] = resultsUnits[category]!
          .map((k, v) => MapEntry(k, UnitValue(unitIndex: v[0], value: null)));
      elementsOrder[category] = resultsUnits[category]!.keys.toList();
    } else {
      newResults[category] = {};
      elementsOrder[category] = [];
    }
    return copyWith(
        results: newResults,
        categoriesOrder: categoriesOrder
          ..insert(index ?? categoriesOrder.length, category),
        elementsOrder: elementsOrder);
  }

  Results removeCategory(String category) {
    final newResults = ResultsMap.from(results);
    return copyWith(
        results: newResults..remove(category),
        categoriesOrder: categoriesOrder..remove(category),
        elementsOrder: elementsOrder..remove(category));
  }

  Results changeCategory(String oldCategory, String newCategory) {
    if (oldCategory == newCategory) {
      return copyWith();
    }
    final index = categoriesOrder.indexOf(oldCategory);
    return removeCategory(oldCategory).addCategory(newCategory, index);
  }

  Results addElement(String category, String key) {
    final newResults = MapX.copyNestedMap(results);
    newResults[category]![key] =
        UnitValue(unitIndex: resultsUnits[category]![key]![0], value: null);
    return copyWith(
        results: newResults,
        elementsOrder: elementsOrder..[category]!.add(key));
  }

  Results removeElement(String category, String key) {
    final newResults = MapX.copyNestedMap(results);
    newResults[category]!.remove(key);
    return copyWith(
        results: newResults,
        elementsOrder: elementsOrder..[category]!.remove(key));
  }

  Results changeElement(String category, String oldElement, String newElement) {
    if (oldElement == newElement) {
      return copyWith();
    }
    final newResults = MapX.copyNestedMap(results);
    final index = elementsOrder[category]!.indexOf(oldElement);
    newResults[category]!.remove(oldElement);
    newResults[category]![newElement] = UnitValue(
        unitIndex: resultsUnits[category]![newElement]![0], value: null);
    return copyWith(
        results: newResults,
        elementsOrder: elementsOrder..[category]![index] = newElement);
  }

  Results changeUnit(String category, String key, int unitIndex) {
    final newResults = MapX.copyNestedMap(results);
    newResults[category]![key]!.unitIndex = unitIndex;
    return copyWith(results: newResults);
  }

  Results changeValue(String category, String key, double value) {
    final newResults = MapX.copyNestedMap(results);
    newResults[category]![key]!.value = value;
    return copyWith(results: newResults);
  }

  List<String> categoriesLeft() => resultsUnits.keys
      .where((category) => !results.keys.contains(category))
      .toList();
  List<String> elementsLeft(String category) => resultsUnits[category]!
      .keys
      .where((element) => !results[category]!.keys.contains(element))
      .toList();
}
