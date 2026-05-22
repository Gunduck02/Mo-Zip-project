import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ApplicationsRecord extends FirestoreRecord {
  ApplicationsRecord._(
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

  // "apply_time" field.
  DateTime? _applyTime;
  DateTime? get applyTime => _applyTime;
  bool hasApplyTime() => _applyTime != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "reason" field.
  String? _reason;
  String get reason => _reason ?? '';
  bool hasReason() => _reason != null;

  void _initializeFields() {
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _clubRef = snapshotData['club_ref'] as DocumentReference?;
    _applyTime = snapshotData['apply_time'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _reason = snapshotData['reason'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('applications');

  static Stream<ApplicationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ApplicationsRecord.fromSnapshot(s));

  static Future<ApplicationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ApplicationsRecord.fromSnapshot(s));

  static ApplicationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ApplicationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ApplicationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ApplicationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ApplicationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ApplicationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createApplicationsRecordData({
  DocumentReference? userRef,
  DocumentReference? clubRef,
  DateTime? applyTime,
  String? status,
  String? reason,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_ref': userRef,
      'club_ref': clubRef,
      'apply_time': applyTime,
      'status': status,
      'reason': reason,
    }.withoutNulls,
  );

  return firestoreData;
}

class ApplicationsRecordDocumentEquality
    implements Equality<ApplicationsRecord> {
  const ApplicationsRecordDocumentEquality();

  @override
  bool equals(ApplicationsRecord? e1, ApplicationsRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.clubRef == e2?.clubRef &&
        e1?.applyTime == e2?.applyTime &&
        e1?.status == e2?.status &&
        e1?.reason == e2?.reason;
  }

  @override
  int hash(ApplicationsRecord? e) => const ListEquality()
      .hash([e?.userRef, e?.clubRef, e?.applyTime, e?.status, e?.reason]);

  @override
  bool isValidKey(Object? o) => o is ApplicationsRecord;
}
