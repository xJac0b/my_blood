import 'package:freezed_annotation/freezed_annotation.dart';

import 'results.dart';
import 'value_objects.dart';

part 'new_entry.freezed.dart';

@freezed
abstract class NewEntry implements _$NewEntry {
  factory NewEntry({
    required NewEntryTitle title,
    required NewEntryDate date,
    required Results results,
  }) = _NewEntry;

  const NewEntry._();

  factory NewEntry.empty() => NewEntry(
        title: NewEntryTitle(''),
        date: NewEntryDate(DateTime.now()),
        results: Results.empty(),
      );
}
