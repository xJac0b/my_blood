import 'package:fpdart/fpdart.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

class NewEntryTitle extends ValueObject<String> {
  factory NewEntryTitle(String input) {
    return NewEntryTitle._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const NewEntryTitle._(this.value);
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;
}

class NewEntryDate extends ValueObject<DateTime> {
  factory NewEntryDate(DateTime date) {
    return NewEntryDate._(validateDateNotInFuture(date));
  }

  const NewEntryDate._(this.value);
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;
}
