import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HotelDataRecord extends FirestoreRecord {
  HotelDataRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "hotelcontactno" field.
  String? _hotelcontactno;
  String get hotelcontactno => _hotelcontactno ?? '';
  bool hasHotelcontactno() => _hotelcontactno != null;

  // "noOfrooms" field.
  int? _noOfrooms;
  int get noOfrooms => _noOfrooms ?? 0;
  bool hasNoOfrooms() => _noOfrooms != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "HoteldispPicture" field.
  String? _hoteldispPicture;
  String get hoteldispPicture => _hoteldispPicture ?? '';
  bool hasHoteldispPicture() => _hoteldispPicture != null;

  // "hotelemail" field.
  String? _hotelemail;
  String get hotelemail => _hotelemail ?? '';
  bool hasHotelemail() => _hotelemail != null;

  // "listofrooms" field.
  List<DocumentReference>? _listofrooms;
  List<DocumentReference> get listofrooms => _listofrooms ?? const [];
  bool hasListofrooms() => _listofrooms != null;

  // "listofreviews" field.
  List<DocumentReference>? _listofreviews;
  List<DocumentReference> get listofreviews => _listofreviews ?? const [];
  bool hasListofreviews() => _listofreviews != null;

  // "hotelName" field.
  String? _hotelName;
  String get hotelName => _hotelName ?? '';
  bool hasHotelName() => _hotelName != null;

  // "locationname" field.
  String? _locationname;
  String get locationname => _locationname ?? '';
  bool hasLocationname() => _locationname != null;

  // "locationLatLong" field.
  LatLng? _locationLatLong;
  LatLng? get locationLatLong => _locationLatLong;
  bool hasLocationLatLong() => _locationLatLong != null;

  void _initializeFields() {
    _hotelcontactno = snapshotData['hotelcontactno'] as String?;
    _noOfrooms = castToType<int>(snapshotData['noOfrooms']);
    _rating = castToType<double>(snapshotData['rating']);
    _hoteldispPicture = snapshotData['HoteldispPicture'] as String?;
    _hotelemail = snapshotData['hotelemail'] as String?;
    _listofrooms = getDataList(snapshotData['listofrooms']);
    _listofreviews = getDataList(snapshotData['listofreviews']);
    _hotelName = snapshotData['hotelName'] as String?;
    _locationname = snapshotData['locationname'] as String?;
    _locationLatLong = snapshotData['locationLatLong'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('HotelData');

  static Stream<HotelDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HotelDataRecord.fromSnapshot(s));

  static Future<HotelDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HotelDataRecord.fromSnapshot(s));

  static HotelDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HotelDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HotelDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HotelDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HotelDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HotelDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHotelDataRecordData({
  String? hotelcontactno,
  int? noOfrooms,
  double? rating,
  String? hoteldispPicture,
  String? hotelemail,
  String? hotelName,
  String? locationname,
  LatLng? locationLatLong,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'hotelcontactno': hotelcontactno,
      'noOfrooms': noOfrooms,
      'rating': rating,
      'HoteldispPicture': hoteldispPicture,
      'hotelemail': hotelemail,
      'hotelName': hotelName,
      'locationname': locationname,
      'locationLatLong': locationLatLong,
    }.withoutNulls,
  );

  return firestoreData;
}

class HotelDataRecordDocumentEquality implements Equality<HotelDataRecord> {
  const HotelDataRecordDocumentEquality();

  @override
  bool equals(HotelDataRecord? e1, HotelDataRecord? e2) {
    const listEquality = ListEquality();
    return e1?.hotelcontactno == e2?.hotelcontactno &&
        e1?.noOfrooms == e2?.noOfrooms &&
        e1?.rating == e2?.rating &&
        e1?.hoteldispPicture == e2?.hoteldispPicture &&
        e1?.hotelemail == e2?.hotelemail &&
        listEquality.equals(e1?.listofrooms, e2?.listofrooms) &&
        listEquality.equals(e1?.listofreviews, e2?.listofreviews) &&
        e1?.hotelName == e2?.hotelName &&
        e1?.locationname == e2?.locationname &&
        e1?.locationLatLong == e2?.locationLatLong;
  }

  @override
  int hash(HotelDataRecord? e) => const ListEquality().hash([
        e?.hotelcontactno,
        e?.noOfrooms,
        e?.rating,
        e?.hoteldispPicture,
        e?.hotelemail,
        e?.listofrooms,
        e?.listofreviews,
        e?.hotelName,
        e?.locationname,
        e?.locationLatLong
      ]);

  @override
  bool isValidKey(Object? o) => o is HotelDataRecord;
}
