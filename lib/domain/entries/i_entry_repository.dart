import 'package:fpdart/fpdart.dart';

import 'entry.dart';
import 'entry_failure.dart';

abstract class IEntryRepository {
  Stream<Either<EntryFailure, List<Entry>>> watch([int? count]);
  Future<Either<EntryFailure, Unit>> create(Entry entry);
  Future<Either<EntryFailure, Unit>> update(Entry entry);
  Future<Either<EntryFailure, Unit>> delete(Entry entry);
}
