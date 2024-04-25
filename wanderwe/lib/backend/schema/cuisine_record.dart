import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CuisineRecord extends FirestoreRecord {
  CuisineRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "cuisineName" field.
  String? _cuisineName;
  String get cuisineName => _cuisineName ?? '';
  bool hasCuisineName() => _cuisineName != null;

  // "imageCuisine" field.
  String? _imageCuisine;
  String get imageCuisine => _imageCuisine ?? '';
  bool hasImageCuisine() => _imageCuisine != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _cuisineName = snapshotData['cuisineName'] as String?;
    _imageCuisine = snapshotData['imageCuisine'] as String?;
    _description = snapshotData['description'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Cuisine')
          : FirebaseFirestore.instance.collectionGroup('Cuisine');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Cuisine').doc(id);

  static Stream<CuisineRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CuisineRecord.fromSnapshot(s));

  static Future<CuisineRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CuisineRecord.fromSnapshot(s));

  static CuisineRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CuisineRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CuisineRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CuisineRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CuisineRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CuisineRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCuisineRecordData({
  String? cuisineName,
  String? imageCuisine,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cuisineName': cuisineName,
      'imageCuisine': imageCuisine,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class CuisineRecordDocumentEquality implements Equality<CuisineRecord> {
  const CuisineRecordDocumentEquality();

  @override
  bool equals(CuisineRecord? e1, CuisineRecord? e2) {
    return e1?.cuisineName == e2?.cuisineName &&
        e1?.imageCuisine == e2?.imageCuisine &&
        e1?.description == e2?.description;
  }

  @override
  int hash(CuisineRecord? e) => const ListEquality()
      .hash([e?.cuisineName, e?.imageCuisine, e?.description]);

  @override
  bool isValidKey(Object? o) => o is CuisineRecord;
}
