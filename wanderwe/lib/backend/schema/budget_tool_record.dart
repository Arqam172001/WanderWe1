import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BudgetToolRecord extends FirestoreRecord {
  BudgetToolRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _price = castToType<double>(snapshotData['price']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('BudgetTool')
          : FirebaseFirestore.instance.collectionGroup('BudgetTool');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('BudgetTool').doc(id);

  static Stream<BudgetToolRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BudgetToolRecord.fromSnapshot(s));

  static Future<BudgetToolRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BudgetToolRecord.fromSnapshot(s));

  static BudgetToolRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BudgetToolRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BudgetToolRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BudgetToolRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BudgetToolRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BudgetToolRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBudgetToolRecordData({
  String? name,
  double? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'price': price,
    }.withoutNulls,
  );

  return firestoreData;
}

class BudgetToolRecordDocumentEquality implements Equality<BudgetToolRecord> {
  const BudgetToolRecordDocumentEquality();

  @override
  bool equals(BudgetToolRecord? e1, BudgetToolRecord? e2) {
    return e1?.name == e2?.name && e1?.price == e2?.price;
  }

  @override
  int hash(BudgetToolRecord? e) =>
      const ListEquality().hash([e?.name, e?.price]);

  @override
  bool isValidKey(Object? o) => o is BudgetToolRecord;
}
