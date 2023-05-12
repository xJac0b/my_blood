import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/transformers.dart';

import '../../domain/entries/entry.dart';
import '../../domain/entries/entry_failure.dart';
import '../../domain/entries/i_entry_repository.dart';
import '../core/firestore_helpers.dart';
import 'entry_dtos.dart';

@LazySingleton(as: IEntryRepository)
class EntryRepository implements IEntryRepository {
  EntryRepository(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Stream<Either<EntryFailure, List<Entry>>> watch([int? count]) async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.entryCollection
        .orderBy('date', descending: true)
        .limit(count ?? 1000)
        .snapshots()
        .map(
          (snapshot) => right<EntryFailure, List<Entry>>(
            snapshot.docs
                .map((doc) => EntryDto.fromFirestore(doc).toDomain())
                .toList(),
          ),
        )
        .onErrorReturnWith(
      (e, _) {
        if (e is FirebaseException &&
            e.message!.contains('PERMISSION_DENIED')) {
          return left(const EntryFailure.insufficientPermission());
        } else {
          debugPrint(e.toString());
          return left(const EntryFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<EntryFailure, Unit>> create(Entry entry) async {
    try {
      final userDoc = await _firestore.userDocument();
      final entryDto = EntryDto.fromDomain(entry);

      await userDoc.entryCollection.doc(entryDto.id).set(entryDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const EntryFailure.insufficientPermission());
      } else {
        return left(const EntryFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<EntryFailure, Unit>> update(Entry entry) async {
    try {
      final userDoc = await _firestore.userDocument();
      final entryDto = EntryDto.fromDomain(entry);

      await userDoc.entryCollection.doc(entryDto.id).update(entryDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const EntryFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const EntryFailure.unableToUpdate());
      } else {
        return left(const EntryFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<EntryFailure, Unit>> delete(Entry entry) async {
    try {
      final userDoc = await _firestore.userDocument();
      final entryId = entry.id.getOrCrash();

      await userDoc.entryCollection.doc(entryId).delete();

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const EntryFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const EntryFailure.unableToUpdate());
      } else {
        return left(const EntryFailure.unexpected());
      }
    }
  }
}
