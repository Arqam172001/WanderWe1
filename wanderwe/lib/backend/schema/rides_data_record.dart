import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RidesDataRecord extends FirestoreRecord {
  RidesDataRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "model" field.
  int? _model;
  int get model => _model ?? 0;
  bool hasModel() => _model != null;

  // "registerationNo" field.
  String? _registerationNo;
  String get registerationNo => _registerationNo ?? '';
  bool hasRegisterationNo() => _registerationNo != null;

  // "seatingcapacity" field.
  int? _seatingcapacity;
  int get seatingcapacity => _seatingcapacity ?? 0;
  bool hasSeatingcapacity() => _seatingcapacity != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "jeepimage" field.
  String? _jeepimage;
  String get jeepimage => _jeepimage ?? '';
  bool hasJeepimage() => _jeepimage != null;

  // "jeeprating" field.
  double? _jeeprating;
  double get jeeprating => _jeeprating ?? 0.0;
  bool hasJeeprating() => _jeeprating != null;

  // "listofreviews" field.
  List<DocumentReference>? _listofreviews;
  List<DocumentReference> get listofreviews => _listofreviews ?? const [];
  bool hasListofreviews() => _listofreviews != null;

  // "engineNo" field.
  String? _engineNo;
  String get engineNo => _engineNo ?? '';
  bool hasEngineNo() => _engineNo != null;

  // "nameofride" field.
  String? _nameofride;
  String get nameofride => _nameofride ?? '';
  bool hasNameofride() => _nameofride != null;

  // "ridername" field.
  String? _ridername;
  String get ridername => _ridername ?? '';
  bool hasRidername() => _ridername != null;

  void _initializeFields() {
    _model = castToType<int>(snapshotData['model']);
    _registerationNo = snapshotData['registerationNo'] as String?;
    _seatingcapacity = castToType<int>(snapshotData['seatingcapacity']);
    _price = castToType<int>(snapshotData['price']);
    _jeepimage = snapshotData['jeepimage'] as String?;
    _jeeprating = castToType<double>(snapshotData['jeeprating']);
    _listofreviews = getDataList(snapshotData['listofreviews']);
    _engineNo = snapshotData['engineNo'] as String?;
    _nameofride = snapshotData['nameofride'] as String?;
    _ridername = snapshotData['ridername'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RidesData');

  static Stream<RidesDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RidesDataRecord.fromSnapshot(s));

  static Future<RidesDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RidesDataRecord.fromSnapshot(s));

  static RidesDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RidesDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RidesDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RidesDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RidesDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RidesDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRidesDataRecordData({
  int? model,
  String? registerationNo,
  int? seatingcapacity,
  int? price,
  String? jeepimage,
  double? jeeprating,
  String? engineNo,
  String? nameofride,
  String? ridername,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'model': model,
      'registerationNo': registerationNo,
      'seatingcapacity': seatingcapacity,
      'price': price,
      'jeepimage': jeepimage,
      'jeeprating': jeeprating,
      'engineNo': engineNo,
      'nameofride': nameofride,
      'ridername': ridername,
    }.withoutNulls,
  );

  return firestoreData;
}

class RidesDataRecordDocumentEquality implements Equality<RidesDataRecord> {
  const RidesDataRecordDocumentEquality();

  @override
  bool equals(RidesDataRecord? e1, RidesDataRecord? e2) {
    const listEquality = ListEquality();
    return e1?.model == e2?.model &&
        e1?.registerationNo == e2?.registerationNo &&
        e1?.seatingcapacity == e2?.seatingcapacity &&
        e1?.price == e2?.price &&
        e1?.jeepimage == e2?.jeepimage &&
        e1?.jeeprating == e2?.jeeprating &&
        listEquality.equals(e1?.listofreviews, e2?.listofreviews) &&
        e1?.engineNo == e2?.engineNo &&
        e1?.nameofride == e2?.nameofride &&
        e1?.ridername == e2?.ridername;
  }

  @override
  int hash(RidesDataRecord? e) => const ListEquality().hash([
        e?.model,
        e?.registerationNo,
        e?.seatingcapacity,
        e?.price,
        e?.jeepimage,
        e?.jeeprating,
        e?.listofreviews,
        e?.engineNo,
        e?.nameofride,
        e?.ridername
      ]);

  @override
  bool isValidKey(Object? o) => o is RidesDataRecord;
}
