import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JeepRecord extends FirestoreRecord {
  JeepRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "model" field.
  int? _model;
  int get model => _model ?? 0;
  bool hasModel() => _model != null;

  // "registrationNo" field.
  String? _registrationNo;
  String get registrationNo => _registrationNo ?? '';
  bool hasRegistrationNo() => _registrationNo != null;

  // "seatingCapacity" field.
  int? _seatingCapacity;
  int get seatingCapacity => _seatingCapacity ?? 0;
  bool hasSeatingCapacity() => _seatingCapacity != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "jeepImage" field.
  String? _jeepImage;
  String get jeepImage => _jeepImage ?? '';
  bool hasJeepImage() => _jeepImage != null;

  // "jeepRating" field.
  double? _jeepRating;
  double get jeepRating => _jeepRating ?? 0.0;
  bool hasJeepRating() => _jeepRating != null;

  // "listOfReviews" field.
  List<DocumentReference>? _listOfReviews;
  List<DocumentReference> get listOfReviews => _listOfReviews ?? const [];
  bool hasListOfReviews() => _listOfReviews != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "engineNo" field.
  String? _engineNo;
  String get engineNo => _engineNo ?? '';
  bool hasEngineNo() => _engineNo != null;

  // "jeepLocName" field.
  String? _jeepLocName;
  String get jeepLocName => _jeepLocName ?? '';
  bool hasJeepLocName() => _jeepLocName != null;

  // "jeepLocLatLong" field.
  LatLng? _jeepLocLatLong;
  LatLng? get jeepLocLatLong => _jeepLocLatLong;
  bool hasJeepLocLatLong() => _jeepLocLatLong != null;

  // "enginecc" field.
  int? _enginecc;
  int get enginecc => _enginecc ?? 0;
  bool hasEnginecc() => _enginecc != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _model = castToType<int>(snapshotData['model']);
    _registrationNo = snapshotData['registrationNo'] as String?;
    _seatingCapacity = castToType<int>(snapshotData['seatingCapacity']);
    _price = castToType<int>(snapshotData['price']);
    _jeepImage = snapshotData['jeepImage'] as String?;
    _jeepRating = castToType<double>(snapshotData['jeepRating']);
    _listOfReviews = getDataList(snapshotData['listOfReviews']);
    _name = snapshotData['name'] as String?;
    _engineNo = snapshotData['engineNo'] as String?;
    _jeepLocName = snapshotData['jeepLocName'] as String?;
    _jeepLocLatLong = snapshotData['jeepLocLatLong'] as LatLng?;
    _enginecc = castToType<int>(snapshotData['enginecc']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Jeep')
          : FirebaseFirestore.instance.collectionGroup('Jeep');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Jeep').doc(id);

  static Stream<JeepRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JeepRecord.fromSnapshot(s));

  static Future<JeepRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JeepRecord.fromSnapshot(s));

  static JeepRecord fromSnapshot(DocumentSnapshot snapshot) => JeepRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JeepRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JeepRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JeepRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JeepRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJeepRecordData({
  int? model,
  String? registrationNo,
  int? seatingCapacity,
  int? price,
  String? jeepImage,
  double? jeepRating,
  String? name,
  String? engineNo,
  String? jeepLocName,
  LatLng? jeepLocLatLong,
  int? enginecc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'model': model,
      'registrationNo': registrationNo,
      'seatingCapacity': seatingCapacity,
      'price': price,
      'jeepImage': jeepImage,
      'jeepRating': jeepRating,
      'name': name,
      'engineNo': engineNo,
      'jeepLocName': jeepLocName,
      'jeepLocLatLong': jeepLocLatLong,
      'enginecc': enginecc,
    }.withoutNulls,
  );

  return firestoreData;
}

class JeepRecordDocumentEquality implements Equality<JeepRecord> {
  const JeepRecordDocumentEquality();

  @override
  bool equals(JeepRecord? e1, JeepRecord? e2) {
    const listEquality = ListEquality();
    return e1?.model == e2?.model &&
        e1?.registrationNo == e2?.registrationNo &&
        e1?.seatingCapacity == e2?.seatingCapacity &&
        e1?.price == e2?.price &&
        e1?.jeepImage == e2?.jeepImage &&
        e1?.jeepRating == e2?.jeepRating &&
        listEquality.equals(e1?.listOfReviews, e2?.listOfReviews) &&
        e1?.name == e2?.name &&
        e1?.engineNo == e2?.engineNo &&
        e1?.jeepLocName == e2?.jeepLocName &&
        e1?.jeepLocLatLong == e2?.jeepLocLatLong &&
        e1?.enginecc == e2?.enginecc;
  }

  @override
  int hash(JeepRecord? e) => const ListEquality().hash([
        e?.model,
        e?.registrationNo,
        e?.seatingCapacity,
        e?.price,
        e?.jeepImage,
        e?.jeepRating,
        e?.listOfReviews,
        e?.name,
        e?.engineNo,
        e?.jeepLocName,
        e?.jeepLocLatLong,
        e?.enginecc
      ]);

  @override
  bool isValidKey(Object? o) => o is JeepRecord;
}
