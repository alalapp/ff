import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
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

  // "gender" field.
  Gender? _gender;
  Gender? get gender => _gender;
  bool hasGender() => _gender != null;

  // "birthday" field.
  String? _birthday;
  String get birthday => _birthday ?? '';
  bool hasBirthday() => _birthday != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "userSULID" field.
  String? _userSULID;
  String get userSULID => _userSULID ?? '';
  bool hasUserSULID() => _userSULID != null;

  // "userCardID" field.
  String? _userCardID;
  String get userCardID => _userCardID ?? '';
  bool hasUserCardID() => _userCardID != null;

  // "userCardLevelName" field.
  String? _userCardLevelName;
  String get userCardLevelName => _userCardLevelName ?? '';
  bool hasUserCardLevelName() => _userCardLevelName != null;

  // "userCardName" field.
  String? _userCardName;
  String get userCardName => _userCardName ?? '';
  bool hasUserCardName() => _userCardName != null;

  // "userCardBarcode" field.
  String? _userCardBarcode;
  String get userCardBarcode => _userCardBarcode ?? '';
  bool hasUserCardBarcode() => _userCardBarcode != null;

  // "userAmount" field.
  int? _userAmount;
  int get userAmount => _userAmount ?? 0;
  bool hasUserAmount() => _userAmount != null;

  // "userBonusBalance" field.
  int? _userBonusBalance;
  int get userBonusBalance => _userBonusBalance ?? 0;
  bool hasUserBonusBalance() => _userBonusBalance != null;

  // "userOstatok" field.
  int? _userOstatok;
  int get userOstatok => _userOstatok ?? 0;
  bool hasUserOstatok() => _userOstatok != null;

  // "userAddress" field.
  AddressStruct? _userAddress;
  AddressStruct get userAddress => _userAddress ?? AddressStruct();
  bool hasUserAddress() => _userAddress != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _gender = deserializeEnum<Gender>(snapshotData['gender']);
    _birthday = snapshotData['birthday'] as String?;
    _role = snapshotData['role'] as String?;
    _userSULID = snapshotData['userSULID'] as String?;
    _userCardID = snapshotData['userCardID'] as String?;
    _userCardLevelName = snapshotData['userCardLevelName'] as String?;
    _userCardName = snapshotData['userCardName'] as String?;
    _userCardBarcode = snapshotData['userCardBarcode'] as String?;
    _userAmount = castToType<int>(snapshotData['userAmount']);
    _userBonusBalance = castToType<int>(snapshotData['userBonusBalance']);
    _userOstatok = castToType<int>(snapshotData['userOstatok']);
    _userAddress = AddressStruct.maybeFromMap(snapshotData['userAddress']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  Gender? gender,
  String? birthday,
  String? role,
  String? userSULID,
  String? userCardID,
  String? userCardLevelName,
  String? userCardName,
  String? userCardBarcode,
  int? userAmount,
  int? userBonusBalance,
  int? userOstatok,
  AddressStruct? userAddress,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'gender': gender,
      'birthday': birthday,
      'role': role,
      'userSULID': userSULID,
      'userCardID': userCardID,
      'userCardLevelName': userCardLevelName,
      'userCardName': userCardName,
      'userCardBarcode': userCardBarcode,
      'userAmount': userAmount,
      'userBonusBalance': userBonusBalance,
      'userOstatok': userOstatok,
      'userAddress': AddressStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "userAddress" field.
  addAddressStructData(firestoreData, userAddress, 'userAddress');

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.gender == e2?.gender &&
        e1?.birthday == e2?.birthday &&
        e1?.role == e2?.role &&
        e1?.userSULID == e2?.userSULID &&
        e1?.userCardID == e2?.userCardID &&
        e1?.userCardLevelName == e2?.userCardLevelName &&
        e1?.userCardName == e2?.userCardName &&
        e1?.userCardBarcode == e2?.userCardBarcode &&
        e1?.userAmount == e2?.userAmount &&
        e1?.userBonusBalance == e2?.userBonusBalance &&
        e1?.userOstatok == e2?.userOstatok &&
        e1?.userAddress == e2?.userAddress;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.gender,
        e?.birthday,
        e?.role,
        e?.userSULID,
        e?.userCardID,
        e?.userCardLevelName,
        e?.userCardName,
        e?.userCardBarcode,
        e?.userAmount,
        e?.userBonusBalance,
        e?.userOstatok,
        e?.userAddress
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
