import 'package:fpdart/fpdart.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

class EntryTitle extends ValueObject<String> {
  factory EntryTitle(String input) {
    return EntryTitle._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const EntryTitle._(this.value);
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;
}

class EntryDate extends ValueObject<DateTime> {
  factory EntryDate(DateTime date) {
    return EntryDate._(validateDateNotInFuture(date));
  }

  const EntryDate._(this.value);
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;
}
