import 'package:fpdart/fpdart.dart';

import '../../utils/extensions.dart';
import 'failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.exceedingLength(failedValue: input, max: maxLength),
    );
  }
}

Either<ValueFailure<String>, String> validateMinStringLength(
  String input,
  int minLength,
) {
  if (input.length >= minLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.insufficientLength(failedValue: input, min: minLength),
    );
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<DateTime>, DateTime> validateDateNotInFuture(
    DateTime date) {
  if (date.isAfter(DateTimeX.nowDate)) {
    return left(ValueFailure.invalidDate(failedValue: date));
  } else {
    return right(date);
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  if (input.contains('@')) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<double>, double> validateWeight(double input) {
  if (input > 0 && input < 1000) {
    return right(input);
  } else {
    return left(ValueFailure.invalidWeight(failedValue: input));
  }
}
