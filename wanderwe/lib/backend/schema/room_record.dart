import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoomRecord extends FirestoreRecord {
  RoomRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "roomCapacity" field.
  int? _roomCapacity;
  int get roomCapacity => _roomCapacity ?? 0;
  bool hasRoomCapacity() => _roomCapacity != null;

  // "availability" field.
  bool? _availability;
  bool get availability => _availability ?? false;
  bool hasAvailability() => _availability != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "roomPrice" field.
  int? _roomPrice;
  int get roomPrice => _roomPrice ?? 0;
  bool hasRoomPrice() => _roomPrice != null;

  // "roomPicture" field.
  String? _roomPicture;
  String get roomPicture => _roomPicture ?? '';
  bool hasRoomPicture() => _roomPicture != null;

  // "hotelRef" field.
  DocumentReference? _hotelRef;
  DocumentReference? get hotelRef => _hotelRef;
  bool hasHotelRef() => _hotelRef != null;

  // "RoomNo" field.
  int? _roomNo;
  int get roomNo => _roomNo ?? 0;
  bool hasRoomNo() => _roomNo != null;

  void _initializeFields() {
    _roomCapacity = castToType<int>(snapshotData['roomCapacity']);
    _availability = snapshotData['availability'] as bool?;
    _type = snapshotData['type'] as String?;
    _roomPrice = castToType<int>(snapshotData['roomPrice']);
    _roomPicture = snapshotData['roomPicture'] as String?;
    _hotelRef = snapshotData['hotelRef'] as DocumentReference?;
    _roomNo = castToType<int>(snapshotData['RoomNo']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Room');

  static Stream<RoomRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoomRecord.fromSnapshot(s));

  static Future<RoomRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoomRecord.fromSnapshot(s));

  static RoomRecord fromSnapshot(DocumentSnapshot snapshot) => RoomRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoomRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoomRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoomRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoomRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoomRecordData({
  int? roomCapacity,
  bool? availability,
  String? type,
  int? roomPrice,
  String? roomPicture,
  DocumentReference? hotelRef,
  int? roomNo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'roomCapacity': roomCapacity,
      'availability': availability,
      'type': type,
      'roomPrice': roomPrice,
      'roomPicture': roomPicture,
      'hotelRef': hotelRef,
      'RoomNo': roomNo,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoomRecordDocumentEquality implements Equality<RoomRecord> {
  const RoomRecordDocumentEquality();

  @override
  bool equals(RoomRecord? e1, RoomRecord? e2) {
    return e1?.roomCapacity == e2?.roomCapacity &&
        e1?.availability == e2?.availability &&
        e1?.type == e2?.type &&
        e1?.roomPrice == e2?.roomPrice &&
        e1?.roomPicture == e2?.roomPicture &&
        e1?.hotelRef == e2?.hotelRef &&
        e1?.roomNo == e2?.roomNo;
  }

  @override
  int hash(RoomRecord? e) => const ListEquality().hash([
        e?.roomCapacity,
        e?.availability,
        e?.type,
        e?.roomPrice,
        e?.roomPicture,
        e?.hotelRef,
        e?.roomNo
      ]);

  @override
  bool isValidKey(Object? o) => o is RoomRecord;
}
