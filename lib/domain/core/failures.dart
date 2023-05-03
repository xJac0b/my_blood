import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.exceedingLength({
    required T failedValue,
    required int max,
  }) = ExceedingLength<T>;

  const factory ValueFailure.insufficientLength({
    required T failedValue,
    required int min,
  }) = InsufficientLength<T>;

  const factory ValueFailure.empty({
    required T failedValue,
  }) = Empty<T>;

  const factory ValueFailure.invalidDate({
    required T failedValue,
  }) = InvalidDate<T>;

  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;
}
