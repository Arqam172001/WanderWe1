import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "cnic" field.
  String? _cnic;
  String get cnic => _cnic ?? '';
  bool hasCnic() => _cnic != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "drivingLicense" field.
  bool? _drivingLicense;
  bool get drivingLicense => _drivingLicense ?? false;
  bool hasDrivingLicense() => _drivingLicense != null;

  // "drivingLicenseNo" field.
  String? _drivingLicenseNo;
  String get drivingLicenseNo => _drivingLicenseNo ?? '';
  bool hasDrivingLicenseNo() => _drivingLicenseNo != null;

  // "businessLicense" field.
  bool? _businessLicense;
  bool get businessLicense => _businessLicense ?? false;
  bool hasBusinessLicense() => _businessLicense != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "approval" field.
  bool? _approval;
  bool get approval => _approval ?? false;
  bool hasApproval() => _approval != null;

  // "businessLicenseNo" field.
  String? _businessLicenseNo;
  String get businessLicenseNo => _businessLicenseNo ?? '';
  bool hasBusinessLicenseNo() => _businessLicenseNo != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "bookingStatus" field.
  String? _bookingStatus;
  String get bookingStatus => _bookingStatus ?? '';
  bool hasBookingStatus() => _bookingStatus != null;

  // "userBio" field.
  String? _userBio;
  String get userBio => _userBio ?? '';
  bool hasUserBio() => _userBio != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _role = snapshotData['role'] as String?;
    _cnic = snapshotData['cnic'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _city = snapshotData['city'] as String?;
    _drivingLicense = snapshotData['drivingLicense'] as bool?;
    _drivingLicenseNo = snapshotData['drivingLicenseNo'] as String?;
    _businessLicense = snapshotData['businessLicense'] as bool?;
    _address = snapshotData['address'] as String?;
    _approval = snapshotData['approval'] as bool?;
    _businessLicenseNo = snapshotData['businessLicenseNo'] as String?;
    _type = snapshotData['type'] as String?;
    _bookingStatus = snapshotData['bookingStatus'] as String?;
    _userBio = snapshotData['userBio'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('User');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? role,
  String? cnic,
  LatLng? location,
  String? city,
  bool? drivingLicense,
  String? drivingLicenseNo,
  bool? businessLicense,
  String? address,
  bool? approval,
  String? businessLicenseNo,
  String? type,
  String? bookingStatus,
  String? userBio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'role': role,
      'cnic': cnic,
      'location': location,
      'city': city,
      'drivingLicense': drivingLicense,
      'drivingLicenseNo': drivingLicenseNo,
      'businessLicense': businessLicense,
      'address': address,
      'approval': approval,
      'businessLicenseNo': businessLicenseNo,
      'type': type,
      'bookingStatus': bookingStatus,
      'userBio': userBio,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.role == e2?.role &&
        e1?.cnic == e2?.cnic &&
        e1?.location == e2?.location &&
        e1?.city == e2?.city &&
        e1?.drivingLicense == e2?.drivingLicense &&
        e1?.drivingLicenseNo == e2?.drivingLicenseNo &&
        e1?.businessLicense == e2?.businessLicense &&
        e1?.address == e2?.address &&
        e1?.approval == e2?.approval &&
        e1?.businessLicenseNo == e2?.businessLicenseNo &&
        e1?.type == e2?.type &&
        e1?.bookingStatus == e2?.bookingStatus &&
        e1?.userBio == e2?.userBio;
  }

  @override
  int hash(UserRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.role,
        e?.cnic,
        e?.location,
        e?.city,
        e?.drivingLicense,
        e?.drivingLicenseNo,
        e?.businessLicense,
        e?.address,
        e?.approval,
        e?.businessLicenseNo,
        e?.type,
        e?.bookingStatus,
        e?.userBio
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
