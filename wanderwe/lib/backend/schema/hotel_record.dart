import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HotelRecord extends FirestoreRecord {
  HotelRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "hotelContactno" field.
  String? _hotelContactno;
  String get hotelContactno => _hotelContactno ?? '';
  bool hasHotelContactno() => _hotelContactno != null;

  // "noOfRooms" field.
  int? _noOfRooms;
  int get noOfRooms => _noOfRooms ?? 0;
  bool hasNoOfRooms() => _noOfRooms != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "hotelPicture" field.
  String? _hotelPicture;
  String get hotelPicture => _hotelPicture ?? '';
  bool hasHotelPicture() => _hotelPicture != null;

  // "hotelEmail" field.
  String? _hotelEmail;
  String get hotelEmail => _hotelEmail ?? '';
  bool hasHotelEmail() => _hotelEmail != null;

  // "listOfRooms" field.
  List<DocumentReference>? _listOfRooms;
  List<DocumentReference> get listOfRooms => _listOfRooms ?? const [];
  bool hasListOfRooms() => _listOfRooms != null;

  // "listOfReviews" field.
  List<DocumentReference>? _listOfReviews;
  List<DocumentReference> get listOfReviews => _listOfReviews ?? const [];
  bool hasListOfReviews() => _listOfReviews != null;

  // "hotelName" field.
  String? _hotelName;
  String get hotelName => _hotelName ?? '';
  bool hasHotelName() => _hotelName != null;

  // "locationName" field.
  String? _locationName;
  String get locationName => _locationName ?? '';
  bool hasLocationName() => _locationName != null;

  // "locatioLatLong" field.
  LatLng? _locatioLatLong;
  LatLng? get locatioLatLong => _locatioLatLong;
  bool hasLocatioLatLong() => _locatioLatLong != null;

  // "mastercost" field.
  int? _mastercost;
  int get mastercost => _mastercost ?? 0;
  bool hasMastercost() => _mastercost != null;

  // "singlecost" field.
  int? _singlecost;
  int get singlecost => _singlecost ?? 0;
  bool hasSinglecost() => _singlecost != null;

  // "hoteldescription" field.
  String? _hoteldescription;
  String get hoteldescription => _hoteldescription ?? '';
  bool hasHoteldescription() => _hoteldescription != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _hotelContactno = snapshotData['hotelContactno'] as String?;
    _noOfRooms = castToType<int>(snapshotData['noOfRooms']);
    _rating = castToType<double>(snapshotData['rating']);
    _hotelPicture = snapshotData['hotelPicture'] as String?;
    _hotelEmail = snapshotData['hotelEmail'] as String?;
    _listOfRooms = getDataList(snapshotData['listOfRooms']);
    _listOfReviews = getDataList(snapshotData['listOfReviews']);
    _hotelName = snapshotData['hotelName'] as String?;
    _locationName = snapshotData['locationName'] as String?;
    _locatioLatLong = snapshotData['locatioLatLong'] as LatLng?;
    _mastercost = castToType<int>(snapshotData['mastercost']);
    _singlecost = castToType<int>(snapshotData['singlecost']);
    _hoteldescription = snapshotData['hoteldescription'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Hotel')
          : FirebaseFirestore.instance.collectionGroup('Hotel');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Hotel').doc(id);

  static Stream<HotelRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HotelRecord.fromSnapshot(s));

  static Future<HotelRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HotelRecord.fromSnapshot(s));

  static HotelRecord fromSnapshot(DocumentSnapshot snapshot) => HotelRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HotelRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HotelRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HotelRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HotelRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHotelRecordData({
  String? hotelContactno,
  int? noOfRooms,
  double? rating,
  String? hotelPicture,
  String? hotelEmail,
  String? hotelName,
  String? locationName,
  LatLng? locatioLatLong,
  int? mastercost,
  int? singlecost,
  String? hoteldescription,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'hotelContactno': hotelContactno,
      'noOfRooms': noOfRooms,
      'rating': rating,
      'hotelPicture': hotelPicture,
      'hotelEmail': hotelEmail,
      'hotelName': hotelName,
      'locationName': locationName,
      'locatioLatLong': locatioLatLong,
      'mastercost': mastercost,
      'singlecost': singlecost,
      'hoteldescription': hoteldescription,
    }.withoutNulls,
  );

  return firestoreData;
}

class HotelRecordDocumentEquality implements Equality<HotelRecord> {
  const HotelRecordDocumentEquality();

  @override
  bool equals(HotelRecord? e1, HotelRecord? e2) {
    const listEquality = ListEquality();
    return e1?.hotelContactno == e2?.hotelContactno &&
        e1?.noOfRooms == e2?.noOfRooms &&
        e1?.rating == e2?.rating &&
        e1?.hotelPicture == e2?.hotelPicture &&
        e1?.hotelEmail == e2?.hotelEmail &&
        listEquality.equals(e1?.listOfRooms, e2?.listOfRooms) &&
        listEquality.equals(e1?.listOfReviews, e2?.listOfReviews) &&
        e1?.hotelName == e2?.hotelName &&
        e1?.locationName == e2?.locationName &&
        e1?.locatioLatLong == e2?.locatioLatLong &&
        e1?.mastercost == e2?.mastercost &&
        e1?.singlecost == e2?.singlecost &&
        e1?.hoteldescription == e2?.hoteldescription;
  }

  @override
  int hash(HotelRecord? e) => const ListEquality().hash([
        e?.hotelContactno,
        e?.noOfRooms,
        e?.rating,
        e?.hotelPicture,
        e?.hotelEmail,
        e?.listOfRooms,
        e?.listOfReviews,
        e?.hotelName,
        e?.locationName,
        e?.locatioLatLong,
        e?.mastercost,
        e?.singlecost,
        e?.hoteldescription
      ]);

  @override
  bool isValidKey(Object? o) => o is HotelRecord;
}
