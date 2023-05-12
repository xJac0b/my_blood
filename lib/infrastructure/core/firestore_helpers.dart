import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fpdart/fpdart.dart';

import '../../domain/auth/i_auth_facade.dart';
import '../../domain/core/errors.dart';
import '../../injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance.collection('users').doc(
          user.id.getOrCrash(),
        );
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get entryCollection => collection('entries');
}
