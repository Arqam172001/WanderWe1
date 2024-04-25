import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class RoutePlanRecord extends FirestoreRecord {
  RoutePlanRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

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

  // "destinationLatLong" field.
  LatLng? _destinationLatLong;
  LatLng? get destinationLatLong => _destinationLatLong;
  bool hasDestinationLatLong() => _destinationLatLong != null;

  // "jeepRef" field.
  DocumentReference? _jeepRef;
  DocumentReference? get jeepRef => _jeepRef;
  bool hasJeepRef() => _jeepRef != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _sourceName = snapshotData['sourceName'] as String?;
    _sourceLatLong = snapshotData['sourceLatLong'] as LatLng?;
    _destinationName = snapshotData['destinationName'] as String?;
    _destinationLatLong = snapshotData['destinationLatLong'] as LatLng?;
    _jeepRef = snapshotData['jeepRef'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('routePlan')
          : FirebaseFirestore.instance.collectionGroup('routePlan');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('routePlan').doc(id);

  static Stream<RoutePlanRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoutePlanRecord.fromSnapshot(s));

  static Future<RoutePlanRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoutePlanRecord.fromSnapshot(s));

  static RoutePlanRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RoutePlanRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoutePlanRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoutePlanRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoutePlanRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoutePlanRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoutePlanRecordData({
  String? sourceName,
  LatLng? sourceLatLong,
  String? destinationName,
  LatLng? destinationLatLong,
  DocumentReference? jeepRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sourceName': sourceName,
      'sourceLatLong': sourceLatLong,
      'destinationName': destinationName,
      'destinationLatLong': destinationLatLong,
      'jeepRef': jeepRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoutePlanRecordDocumentEquality implements Equality<RoutePlanRecord> {
  const RoutePlanRecordDocumentEquality();

  @override
  bool equals(RoutePlanRecord? e1, RoutePlanRecord? e2) {
    return e1?.sourceName == e2?.sourceName &&
        e1?.sourceLatLong == e2?.sourceLatLong &&
        e1?.destinationName == e2?.destinationName &&
        e1?.destinationLatLong == e2?.destinationLatLong &&
        e1?.jeepRef == e2?.jeepRef;
  }

  @override
  int hash(RoutePlanRecord? e) => const ListEquality().hash([
        e?.sourceName,
        e?.sourceLatLong,
        e?.destinationName,
        e?.destinationLatLong,
        e?.jeepRef
      ]);

  @override
  bool isValidKey(Object? o) => o is RoutePlanRecord;
}
