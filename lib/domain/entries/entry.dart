import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/extensions.dart';
import '../core/value_objects.dart';
import 'results.dart';
import 'value_objects.dart';

part 'entry.freezed.dart';

@freezed
abstract class Entry implements _$Entry {
  factory Entry({
    required UniqueId id,
    required EntryTitle title,
    required EntryDate date,
    required Results results,
  }) = _Entry;

  const Entry._();

  factory Entry.empty() => Entry(
        id: UniqueId(),
        title: EntryTitle(''),
        date: EntryDate(DateTimeX.nowDate),
        results: Results.empty(),
      );
}
