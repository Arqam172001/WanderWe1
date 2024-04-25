import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocationsListRecord extends FirestoreRecord {
  LocationsListRecord._(
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

  // "locationlat" field.
  LatLng? _locationlat;
  LatLng? get locationlat => _locationlat;
  bool hasLocationlat() => _locationlat != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _locationlat = snapshotData['locationlat'] as LatLng?;
    _image = snapshotData['image'] as String?;
    _rating = castToType<double>(snapshotData['rating']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('LocationsList');

  static Stream<LocationsListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LocationsListRecord.fromSnapshot(s));

  static Future<LocationsListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LocationsListRecord.fromSnapshot(s));

  static LocationsListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LocationsListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LocationsListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LocationsListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LocationsListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LocationsListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLocationsListRecordData({
  String? name,
  String? description,
  LatLng? locationlat,
  String? image,
  double? rating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'locationlat': locationlat,
      'image': image,
      'rating': rating,
    }.withoutNulls,
  );

  return firestoreData;
}

class LocationsListRecordDocumentEquality
    implements Equality<LocationsListRecord> {
  const LocationsListRecordDocumentEquality();

  @override
  bool equals(LocationsListRecord? e1, LocationsListRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.locationlat == e2?.locationlat &&
        e1?.image == e2?.image &&
        e1?.rating == e2?.rating;
  }

  @override
  int hash(LocationsListRecord? e) => const ListEquality()
      .hash([e?.name, e?.description, e?.locationlat, e?.image, e?.rating]);

  @override
  bool isValidKey(Object? o) => o is LocationsListRecord;
}
