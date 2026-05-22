import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// clubs
class ClubsRecord extends FirestoreRecord {
  ClubsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "club_name" field.
  String? _clubName;
  String get clubName => _clubName ?? '';
  bool hasClubName() => _clubName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "thumbnail_url" field.
  String? _thumbnailUrl;
  String get thumbnailUrl => _thumbnailUrl ?? '';
  bool hasThumbnailUrl() => _thumbnailUrl != null;

  // "manager_uid" field.
  List<String>? _managerUid;
  List<String> get managerUid => _managerUid ?? const [];
  bool hasManagerUid() => _managerUid != null;

  // "recruit_status" field.
  String? _recruitStatus;
  String get recruitStatus => _recruitStatus ?? '';
  bool hasRecruitStatus() => _recruitStatus != null;

  // "deadline" field.
  DateTime? _deadline;
  DateTime? get deadline => _deadline;
  bool hasDeadline() => _deadline != null;

  // "member_count" field.
  int? _memberCount;
  int get memberCount => _memberCount ?? 0;
  bool hasMemberCount() => _memberCount != null;

  // "is_central" field.
  bool? _isCentral;
  bool get isCentral => _isCentral ?? false;
  bool hasIsCentral() => _isCentral != null;

  // "is_club" field.
  bool? _isClub;
  bool get isClub => _isClub ?? false;
  bool hasIsClub() => _isClub != null;

  // "is_somo" field.
  bool? _isSomo;
  bool get isSomo => _isSomo ?? false;
  bool hasIsSomo() => _isSomo != null;

  // "club_intro_image" field.
  List<String>? _clubIntroImage;
  List<String> get clubIntroImage => _clubIntroImage ?? const [];
  bool hasClubIntroImage() => _clubIntroImage != null;

  // "tags" field.
  List<String>? _tags;
  List<String> get tags => _tags ?? const [];
  bool hasTags() => _tags != null;

  // "rr" field.
  bool? _rr;
  bool get rr => _rr ?? false;
  bool hasRr() => _rr != null;

  void _initializeFields() {
    _clubName = snapshotData['club_name'] as String?;
    _description = snapshotData['description'] as String?;
    _thumbnailUrl = snapshotData['thumbnail_url'] as String?;
    _managerUid = getDataList(snapshotData['manager_uid']);
    _recruitStatus = snapshotData['recruit_status'] as String?;
    _deadline = snapshotData['deadline'] as DateTime?;
    _memberCount = castToType<int>(snapshotData['member_count']);
    _isCentral = snapshotData['is_central'] as bool?;
    _isClub = snapshotData['is_club'] as bool?;
    _isSomo = snapshotData['is_somo'] as bool?;
    _clubIntroImage = getDataList(snapshotData['club_intro_image']);
    _tags = getDataList(snapshotData['tags']);
    _rr = snapshotData['rr'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clubs');

  static Stream<ClubsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClubsRecord.fromSnapshot(s));

  static Future<ClubsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClubsRecord.fromSnapshot(s));

  static ClubsRecord fromSnapshot(DocumentSnapshot snapshot) => ClubsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClubsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClubsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClubsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClubsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClubsRecordData({
  String? clubName,
  String? description,
  String? thumbnailUrl,
  String? recruitStatus,
  DateTime? deadline,
  int? memberCount,
  bool? isCentral,
  bool? isClub,
  bool? isSomo,
  bool? rr,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'club_name': clubName,
      'description': description,
      'thumbnail_url': thumbnailUrl,
      'recruit_status': recruitStatus,
      'deadline': deadline,
      'member_count': memberCount,
      'is_central': isCentral,
      'is_club': isClub,
      'is_somo': isSomo,
      'rr': rr,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClubsRecordDocumentEquality implements Equality<ClubsRecord> {
  const ClubsRecordDocumentEquality();

  @override
  bool equals(ClubsRecord? e1, ClubsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.clubName == e2?.clubName &&
        e1?.description == e2?.description &&
        e1?.thumbnailUrl == e2?.thumbnailUrl &&
        listEquality.equals(e1?.managerUid, e2?.managerUid) &&
        e1?.recruitStatus == e2?.recruitStatus &&
        e1?.deadline == e2?.deadline &&
        e1?.memberCount == e2?.memberCount &&
        e1?.isCentral == e2?.isCentral &&
        e1?.isClub == e2?.isClub &&
        e1?.isSomo == e2?.isSomo &&
        listEquality.equals(e1?.clubIntroImage, e2?.clubIntroImage) &&
        listEquality.equals(e1?.tags, e2?.tags) &&
        e1?.rr == e2?.rr;
  }

  @override
  int hash(ClubsRecord? e) => const ListEquality().hash([
        e?.clubName,
        e?.description,
        e?.thumbnailUrl,
        e?.managerUid,
        e?.recruitStatus,
        e?.deadline,
        e?.memberCount,
        e?.isCentral,
        e?.isClub,
        e?.isSomo,
        e?.clubIntroImage,
        e?.tags,
        e?.rr
      ]);

  @override
  bool isValidKey(Object? o) => o is ClubsRecord;
}
