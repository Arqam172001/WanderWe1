import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TravellersDataRecord extends FirestoreRecord {
  TravellersDataRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "contactno" field.
  String? _contactno;
  String get contactno => _contactno ?? '';
  bool hasContactno() => _contactno != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "profilepic" field.
  String? _profilepic;
  String get profilepic => _profilepic ?? '';
  bool hasProfilepic() => _profilepic != null;

  // "miletravelled" field.
  int? _miletravelled;
  int get miletravelled => _miletravelled ?? 0;
  bool hasMiletravelled() => _miletravelled != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _contactno = snapshotData['contactno'] as String?;
    _rating = castToType<double>(snapshotData['rating']);
    _description = snapshotData['description'] as String?;
    _profilepic = snapshotData['profilepic'] as String?;
    _miletravelled = castToType<int>(snapshotData['miletravelled']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TravellersData');

  static Stream<TravellersDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TravellersDataRecord.fromSnapshot(s));

  static Future<TravellersDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TravellersDataRecord.fromSnapshot(s));

  static TravellersDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TravellersDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TravellersDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TravellersDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TravellersDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TravellersDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTravellersDataRecordData({
  String? name,
  String? contactno,
  double? rating,
  String? description,
  String? profilepic,
  int? miletravelled,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'contactno': contactno,
      'rating': rating,
      'description': description,
      'profilepic': profilepic,
      'miletravelled': miletravelled,
    }.withoutNulls,
  );

  return firestoreData;
}

class TravellersDataRecordDocumentEquality
    implements Equality<TravellersDataRecord> {
  const TravellersDataRecordDocumentEquality();

  @override
  bool equals(TravellersDataRecord? e1, TravellersDataRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.contactno == e2?.contactno &&
        e1?.rating == e2?.rating &&
        e1?.description == e2?.description &&
        e1?.profilepic == e2?.profilepic &&
        e1?.miletravelled == e2?.miletravelled;
  }

  @override
  int hash(TravellersDataRecord? e) => const ListEquality().hash([
        e?.name,
        e?.contactno,
        e?.rating,
        e?.description,
        e?.profilepic,
        e?.miletravelled
      ]);

  @override
  bool isValidKey(Object? o) => o is TravellersDataRecord;
}
