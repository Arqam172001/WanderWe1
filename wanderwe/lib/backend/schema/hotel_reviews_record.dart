import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HotelReviewsRecord extends FirestoreRecord {
  HotelReviewsRecord._(
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

  // "hotelRev" field.
  DocumentReference? _hotelRev;
  DocumentReference? get hotelRev => _hotelRev;
  bool hasHotelRev() => _hotelRev != null;

  // "reviewDate" field.
  DateTime? _reviewDate;
  DateTime? get reviewDate => _reviewDate;
  bool hasReviewDate() => _reviewDate != null;

  // "customerRef" field.
  DocumentReference? _customerRef;
  DocumentReference? get customerRef => _customerRef;
  bool hasCustomerRef() => _customerRef != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _rating = castToType<double>(snapshotData['rating']);
    _comment = snapshotData['comment'] as String?;
    _subtitle = snapshotData['subtitle'] as String?;
    _hotelRev = snapshotData['hotelRev'] as DocumentReference?;
    _reviewDate = snapshotData['reviewDate'] as DateTime?;
    _customerRef = snapshotData['customerRef'] as DocumentReference?;
    _status = snapshotData['status'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('HotelReviews');

  static Stream<HotelReviewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HotelReviewsRecord.fromSnapshot(s));

  static Future<HotelReviewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HotelReviewsRecord.fromSnapshot(s));

  static HotelReviewsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HotelReviewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HotelReviewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HotelReviewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HotelReviewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HotelReviewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHotelReviewsRecordData({
  double? rating,
  String? comment,
  String? subtitle,
  DocumentReference? hotelRev,
  DateTime? reviewDate,
  DocumentReference? customerRef,
  bool? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'rating': rating,
      'comment': comment,
      'subtitle': subtitle,
      'hotelRev': hotelRev,
      'reviewDate': reviewDate,
      'customerRef': customerRef,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class HotelReviewsRecordDocumentEquality
    implements Equality<HotelReviewsRecord> {
  const HotelReviewsRecordDocumentEquality();

  @override
  bool equals(HotelReviewsRecord? e1, HotelReviewsRecord? e2) {
    return e1?.rating == e2?.rating &&
        e1?.comment == e2?.comment &&
        e1?.subtitle == e2?.subtitle &&
        e1?.hotelRev == e2?.hotelRev &&
        e1?.reviewDate == e2?.reviewDate &&
        e1?.customerRef == e2?.customerRef &&
        e1?.status == e2?.status;
  }

  @override
  int hash(HotelReviewsRecord? e) => const ListEquality().hash([
        e?.rating,
        e?.comment,
        e?.subtitle,
        e?.hotelRev,
        e?.reviewDate,
        e?.customerRef,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is HotelReviewsRecord;
}
