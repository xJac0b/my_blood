import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/value_objects.dart';
import '../../domain/entries/entry.dart';
import '../../domain/entries/results.dart';
import '../../domain/entries/unit_value.dart';
import '../../domain/entries/value_objects.dart';

part 'entry_dtos.freezed.dart';
part 'entry_dtos.g.dart';

@freezed
class EntryDto with _$EntryDto {
  const factory EntryDto({
    required String id,
    required String title,
    required DateTime date,
    required Map<String, Map<String, Map<String, double>>> results,
  }) = _EntryDto;

  factory EntryDto.fromJson(Map<String, dynamic> json) =>
      _$EntryDtoFromJson(json);

  factory EntryDto.fromFirestore(DocumentSnapshot doc) {
    return EntryDto.fromJson(doc.data()! as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }

  const EntryDto._();

  factory EntryDto.fromDomain(Entry entry) {
    final outputMap = <String, Map<String, Map<String, double>>>{};
    entry.results.results.forEach((outerKey, outerValue) {
      final innerMap = <String, Map<String, double>>{};
      outerValue.forEach((innerKey, innerValue) {
        final unitMap = <String, double>{
          'unitIndex': innerValue.unitIndex.toDouble(),
          'value': innerValue.value ?? 0,
        };
        innerMap[innerKey] = unitMap;
      });
      if (innerMap.isNotEmpty) {
        outputMap[outerKey] = innerMap;
      }
    });

    return EntryDto(
      id: entry.id.getOrCrash(),
      title: entry.title.getOrCrash(),
      date: entry.date.getOrCrash(),
      results: outputMap,
    );
  }

  Entry toDomain() {
    final outputMap = <String, Map<String, UnitValue>>{};

    results.forEach((outerKey, outerValue) {
      final innerMap = <String, UnitValue>{};
      outerValue.forEach((innerKey, innerValue) {
        final unitIndex = innerValue['unitIndex']!.toInt();
        final value = innerValue['value']!;
        innerMap[innerKey] = UnitValue(unitIndex: unitIndex, value: value);
      });
      outputMap[outerKey] = innerMap;
    });

    return Entry(
      id: UniqueId.fromUniqueString(id),
      title: EntryTitle(title),
      date: EntryDate(date),
      results: Results(results: outputMap),
    );
  }
}
