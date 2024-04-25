import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JeepReviewRecord extends FirestoreRecord {
  JeepReviewRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  // "subtitle" field.
  String? _subtitle;
  String get subtitle => _subtitle ?? '';
  bool hasSubtitle() => _subtitle != null;

  // "JeepReview" field.
  DocumentReference? _jeepReview;
  DocumentReference? get jeepReview => _jeepReview;
  bool hasJeepReview() => _jeepReview != null;

  // "CutomerRef" field.
  DocumentReference? _cutomerRef;
  DocumentReference? get cutomerRef => _cutomerRef;
  bool hasCutomerRef() => _cutomerRef != null;

  // "reviewDate" field.
  DateTime? _reviewDate;
  DateTime? get reviewDate => _reviewDate;
  bool hasReviewDate() => _reviewDate != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _rating = castToType<double>(snapshotData['rating']);
    _comment = snapshotData['comment'] as String?;
    _subtitle = snapshotData['subtitle'] as String?;
    _jeepReview = snapshotData['JeepReview'] as DocumentReference?;
    _cutomerRef = snapshotData['CutomerRef'] as DocumentReference?;
    _reviewDate = snapshotData['reviewDate'] as DateTime?;
    _status = snapshotData['status'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('JeepReview');

  static Stream<JeepReviewRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JeepReviewRecord.fromSnapshot(s));

  static Future<JeepReviewRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JeepReviewRecord.fromSnapshot(s));

  static JeepReviewRecord fromSnapshot(DocumentSnapshot snapshot) =>
      JeepReviewRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JeepReviewRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JeepReviewRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JeepReviewRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JeepReviewRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJeepReviewRecordData({
  double? rating,
  String? comment,
  String? subtitle,
  DocumentReference? jeepReview,
  DocumentReference? cutomerRef,
  DateTime? reviewDate,
  bool? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'rating': rating,
      'comment': comment,
      'subtitle': subtitle,
      'JeepReview': jeepReview,
      'CutomerRef': cutomerRef,
      'reviewDate': reviewDate,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class JeepReviewRecordDocumentEquality implements Equality<JeepReviewRecord> {
  const JeepReviewRecordDocumentEquality();

  @override
  bool equals(JeepReviewRecord? e1, JeepReviewRecord? e2) {
    return e1?.rating == e2?.rating &&
        e1?.comment == e2?.comment &&
        e1?.subtitle == e2?.subtitle &&
        e1?.jeepReview == e2?.jeepReview &&
        e1?.cutomerRef == e2?.cutomerRef &&
        e1?.reviewDate == e2?.reviewDate &&
        e1?.status == e2?.status;
  }

  @override
  int hash(JeepReviewRecord? e) => const ListEquality().hash([
        e?.rating,
        e?.comment,
        e?.subtitle,
        e?.jeepReview,
        e?.cutomerRef,
        e?.reviewDate,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is JeepReviewRecord;
}
