import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TravelHistoryRecord extends FirestoreRecord {
  TravelHistoryRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "departure" field.
  LatLng? _departure;
  LatLng? get departure => _departure;
  bool hasDeparture() => _departure != null;

  // "departureCity" field.
  String? _departureCity;
  String get departureCity => _departureCity ?? '';
  bool hasDepartureCity() => _departureCity != null;

  // "destination" field.
  LatLng? _destination;
  LatLng? get destination => _destination;
  bool hasDestination() => _destination != null;

  // "destinationCity" field.
  String? _destinationCity;
  String get destinationCity => _destinationCity ?? '';
  bool hasDestinationCity() => _destinationCity != null;

  // "budget" field.
  int? _budget;
  int get budget => _budget ?? 0;
  bool hasBudget() => _budget != null;

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "typrOfTour" field.
  String? _typrOfTour;
  String get typrOfTour => _typrOfTour ?? '';
  bool hasTyprOfTour() => _typrOfTour != null;

  // "groupMembers" field.
  List<String>? _groupMembers;
  List<String> get groupMembers => _groupMembers ?? const [];
  bool hasGroupMembers() => _groupMembers != null;

  // "groupMembersIds" field.
  List<String>? _groupMembersIds;
  List<String> get groupMembersIds => _groupMembersIds ?? const [];
  bool hasGroupMembersIds() => _groupMembersIds != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _departure = snapshotData['departure'] as LatLng?;
    _departureCity = snapshotData['departureCity'] as String?;
    _destination = snapshotData['destination'] as LatLng?;
    _destinationCity = snapshotData['destinationCity'] as String?;
    _budget = castToType<int>(snapshotData['budget']);
    _startDate = snapshotData['startDate'] as DateTime?;
    _endDate = snapshotData['endDate'] as DateTime?;
    _typrOfTour = snapshotData['typrOfTour'] as String?;
    _groupMembers = getDataList(snapshotData['groupMembers']);
    _groupMembersIds = getDataList(snapshotData['groupMembersIds']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('travelHistory')
          : FirebaseFirestore.instance.collectionGroup('travelHistory');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('travelHistory').doc(id);

  static Stream<TravelHistoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TravelHistoryRecord.fromSnapshot(s));

  static Future<TravelHistoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TravelHistoryRecord.fromSnapshot(s));

  static TravelHistoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TravelHistoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TravelHistoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TravelHistoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TravelHistoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TravelHistoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTravelHistoryRecordData({
  LatLng? departure,
  String? departureCity,
  LatLng? destination,
  String? destinationCity,
  int? budget,
  DateTime? startDate,
  DateTime? endDate,
  String? typrOfTour,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'departure': departure,
      'departureCity': departureCity,
      'destination': destination,
      'destinationCity': destinationCity,
      'budget': budget,
      'startDate': startDate,
      'endDate': endDate,
      'typrOfTour': typrOfTour,
    }.withoutNulls,
  );

  return firestoreData;
}

class TravelHistoryRecordDocumentEquality
    implements Equality<TravelHistoryRecord> {
  const TravelHistoryRecordDocumentEquality();

  @override
  bool equals(TravelHistoryRecord? e1, TravelHistoryRecord? e2) {
    const listEquality = ListEquality();
    return e1?.departure == e2?.departure &&
        e1?.departureCity == e2?.departureCity &&
        e1?.destination == e2?.destination &&
        e1?.destinationCity == e2?.destinationCity &&
        e1?.budget == e2?.budget &&
        e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate &&
        e1?.typrOfTour == e2?.typrOfTour &&
        listEquality.equals(e1?.groupMembers, e2?.groupMembers) &&
        listEquality.equals(e1?.groupMembersIds, e2?.groupMembersIds);
  }

  @override
  int hash(TravelHistoryRecord? e) => const ListEquality().hash([
        e?.departure,
        e?.departureCity,
        e?.destination,
        e?.destinationCity,
        e?.budget,
        e?.startDate,
        e?.endDate,
        e?.typrOfTour,
        e?.groupMembers,
        e?.groupMembersIds
      ]);

  @override
  bool isValidKey(Object? o) => o is TravelHistoryRecord;
}
