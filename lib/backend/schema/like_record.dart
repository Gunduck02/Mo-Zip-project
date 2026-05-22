import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LikeRecord extends FirestoreRecord {
  LikeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "club_ref" field.
  DocumentReference? _clubRef;
  DocumentReference? get clubRef => _clubRef;
  bool hasClubRef() => _clubRef != null;

  // "good" field.
  bool? _good;
  bool get good => _good ?? false;
  bool hasGood() => _good != null;

  void _initializeFields() {
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _clubRef = snapshotData['club_ref'] as DocumentReference?;
    _good = snapshotData['good'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('like');

  static Stream<LikeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LikeRecord.fromSnapshot(s));

  static Future<LikeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LikeRecord.fromSnapshot(s));

  static LikeRecord fromSnapshot(DocumentSnapshot snapshot) => LikeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LikeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LikeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LikeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LikeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLikeRecordData({
  DocumentReference? userRef,
  DocumentReference? clubRef,
  bool? good,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_ref': userRef,
      'club_ref': clubRef,
      'good': good,
    }.withoutNulls,
  );

  return firestoreData;
}

class LikeRecordDocumentEquality implements Equality<LikeRecord> {
  const LikeRecordDocumentEquality();

  @override
  bool equals(LikeRecord? e1, LikeRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.clubRef == e2?.clubRef &&
        e1?.good == e2?.good;
  }

  @override
  int hash(LikeRecord? e) =>
      const ListEquality().hash([e?.userRef, e?.clubRef, e?.good]);

  @override
  bool isValidKey(Object? o) => o is LikeRecord;
}
