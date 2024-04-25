import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class BookingRecord extends FirestoreRecord {
  BookingRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "roomRef" field.
  DocumentReference? _roomRef;
  DocumentReference? get roomRef => _roomRef;
  bool hasRoomRef() => _roomRef != null;

  // "hotelRef" field.
  DocumentReference? _hotelRef;
  DocumentReference? get hotelRef => _hotelRef;
  bool hasHotelRef() => _hotelRef != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "jeepref" field.
  DocumentReference? _jeepref;
  DocumentReference? get jeepref => _jeepref;
  bool hasJeepref() => _jeepref != null;

  // "sourceName" field.
  String? _sourceName;
  String get sourceName => _sourceName ?? '';
  bool hasSourceName() => _sourceName != null;

  // "sourceLatLong" field.
  LatLng? _sourceLatLong;
  LatLng? get sourceLatLong => _sourceLatLong;
  bool hasSourceLatLong() => _sourceLatLong != null;

  // "destinationName" field.
  String? _destinationName;
  String get destinationName => _destinationName ?? '';
  bool hasDestinationName() => _destinationName != null;

  // "destinationLatlong" field.
  LatLng? _destinationLatlong;
  LatLng? get destinationLatlong => _destinationLatlong;
  bool hasDestinationLatlong() => _destinationLatlong != null;

  // "bookingDate" field.
  DateTime? _bookingDate;
  DateTime? get bookingDate => _bookingDate;
  bool hasBookingDate() => _bookingDate != null;

  // "travelDate" field.
  DateTime? _travelDate;
  DateTime? get travelDate => _travelDate;
  bool hasTravelDate() => _travelDate != null;

  // "bookingNo" field.
  String? _bookingNo;
  String get bookingNo => _bookingNo ?? '';
  bool hasBookingNo() => _bookingNo != null;

  // "jeepbookCheck" field.
  bool? _jeepbookCheck;
  bool get jeepbookCheck => _jeepbookCheck ?? false;
  bool hasJeepbookCheck() => _jeepbookCheck != null;

  // "hotelBookCheck" field.
  bool? _hotelBookCheck;
  bool get hotelBookCheck => _hotelBookCheck ?? false;
  bool hasHotelBookCheck() => _hotelBookCheck != null;

  // "checkIn" field.
  DateTime? _checkIn;
  DateTime? get checkIn => _checkIn;
  bool hasCheckIn() => _checkIn != null;

  // "checkOut" field.
  DateTime? _checkOut;
  DateTime? get checkOut => _checkOut;
  bool hasCheckOut() => _checkOut != null;

  // "bookingStatus" field.
  String? _bookingStatus;
  String get bookingStatus => _bookingStatus ?? '';
  bool hasBookingStatus() => _bookingStatus != null;

  void _initializeFields() {
    _roomRef = snapshotData['roomRef'] as DocumentReference?;
    _hotelRef = snapshotData['hotelRef'] as DocumentReference?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _jeepref = snapshotData['jeepref'] as DocumentReference?;
    _sourceName = snapshotData['sourceName'] as String?;
    _sourceLatLong = snapshotData['sourceLatLong'] as LatLng?;
    _destinationName = snapshotData['destinationName'] as String?;
    _destinationLatlong = snapshotData['destinationLatlong'] as LatLng?;
    _bookingDate = snapshotData['bookingDate'] as DateTime?;
    _travelDate = snapshotData['travelDate'] as DateTime?;
    _bookingNo = snapshotData['bookingNo'] as String?;
    _jeepbookCheck = snapshotData['jeepbookCheck'] as bool?;
    _hotelBookCheck = snapshotData['hotelBookCheck'] as bool?;
    _checkIn = snapshotData['checkIn'] as DateTime?;
    _checkOut = snapshotData['checkOut'] as DateTime?;
    _bookingStatus = snapshotData['bookingStatus'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('booking');

  static Stream<BookingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingRecord.fromSnapshot(s));

  static Future<BookingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookingRecord.fromSnapshot(s));

  static BookingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingRecordData({
  DocumentReference? roomRef,
  DocumentReference? hotelRef,
  DocumentReference? userRef,
  DocumentReference? jeepref,
  String? sourceName,
  LatLng? sourceLatLong,
  String? destinationName,
  LatLng? destinationLatlong,
  DateTime? bookingDate,
  DateTime? travelDate,
  String? bookingNo,
  bool? jeepbookCheck,
  bool? hotelBookCheck,
  DateTime? checkIn,
  DateTime? checkOut,
  String? bookingStatus,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'roomRef': roomRef,
      'hotelRef': hotelRef,
      'userRef': userRef,
      'jeepref': jeepref,
      'sourceName': sourceName,
      'sourceLatLong': sourceLatLong,
      'destinationName': destinationName,
      'destinationLatlong': destinationLatlong,
      'bookingDate': bookingDate,
      'travelDate': travelDate,
      'bookingNo': bookingNo,
      'jeepbookCheck': jeepbookCheck,
      'hotelBookCheck': hotelBookCheck,
      'checkIn': checkIn,
      'checkOut': checkOut,
      'bookingStatus': bookingStatus,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookingRecordDocumentEquality implements Equality<BookingRecord> {
  const BookingRecordDocumentEquality();

  @override
  bool equals(BookingRecord? e1, BookingRecord? e2) {
    return e1?.roomRef == e2?.roomRef &&
        e1?.hotelRef == e2?.hotelRef &&
        e1?.userRef == e2?.userRef &&
        e1?.jeepref == e2?.jeepref &&
        e1?.sourceName == e2?.sourceName &&
        e1?.sourceLatLong == e2?.sourceLatLong &&
        e1?.destinationName == e2?.destinationName &&
        e1?.destinationLatlong == e2?.destinationLatlong &&
        e1?.bookingDate == e2?.bookingDate &&
        e1?.travelDate == e2?.travelDate &&
        e1?.bookingNo == e2?.bookingNo &&
        e1?.jeepbookCheck == e2?.jeepbookCheck &&
        e1?.hotelBookCheck == e2?.hotelBookCheck &&
        e1?.checkIn == e2?.checkIn &&
        e1?.checkOut == e2?.checkOut &&
        e1?.bookingStatus == e2?.bookingStatus;
  }

  @override
  int hash(BookingRecord? e) => const ListEquality().hash([
        e?.roomRef,
        e?.hotelRef,
        e?.userRef,
        e?.jeepref,
        e?.sourceName,
        e?.sourceLatLong,
        e?.destinationName,
        e?.destinationLatlong,
        e?.bookingDate,
        e?.travelDate,
        e?.bookingNo,
        e?.jeepbookCheck,
        e?.hotelBookCheck,
        e?.checkIn,
        e?.checkOut,
        e?.bookingStatus
      ]);

  @override
  bool isValidKey(Object? o) => o is BookingRecord;
}
