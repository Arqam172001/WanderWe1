import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DestinationRecord extends FirestoreRecord {
  DestinationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "destinationRating" field.
  double? _destinationRating;
  double get destinationRating => _destinationRating ?? 0.0;
  bool hasDestinationRating() => _destinationRating != null;

  // "destinationPicture" field.
  String? _destinationPicture;
  String get destinationPicture => _destinationPicture ?? '';
  bool hasDestinationPicture() => _destinationPicture != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _destinationRating = castToType<double>(snapshotData['destinationRating']);
    _destinationPicture = snapshotData['destinationPicture'] as String?;
    _location = snapshotData['location'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Destination');

  static Stream<DestinationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DestinationRecord.fromSnapshot(s));

  static Future<DestinationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DestinationRecord.fromSnapshot(s));

  static DestinationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DestinationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DestinationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DestinationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DestinationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DestinationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDestinationRecordData({
  String? name,
  String? description,
  double? destinationRating,
  String? destinationPicture,
  LatLng? location,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'destinationRating': destinationRating,
      'destinationPicture': destinationPicture,
      'location': location,
    }.withoutNulls,
  );

  return firestoreData;
}

class DestinationRecordDocumentEquality implements Equality<DestinationRecord> {
  const DestinationRecordDocumentEquality();

  @override
  bool equals(DestinationRecord? e1, DestinationRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.destinationRating == e2?.destinationRating &&
        e1?.destinationPicture == e2?.destinationPicture &&
        e1?.location == e2?.location;
  }

  @override
  int hash(DestinationRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.destinationRating,
        e?.destinationPicture,
        e?.location
      ]);

  @override
  bool isValidKey(Object? o) => o is DestinationRecord;
}
