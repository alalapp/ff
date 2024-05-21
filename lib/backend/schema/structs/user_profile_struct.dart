// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserProfileStruct extends FFFirebaseStruct {
  UserProfileStruct({
    String? userID,
    String? userSULID,
    String? cardID,
    String? cardLevelID,
    String? cardLevelName,
    String? userFIO,
    String? userTEL,
    String? userEMAIL,
    int? userAmount,
    int? userBonusBalance,
    String? userBD,
    String? cardBarcode,
    String? role,
    String? cardName,
    int? ostatok,
    String? userGender,
    AddressStruct? address,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _userID = userID,
        _userSULID = userSULID,
        _cardID = cardID,
        _cardLevelID = cardLevelID,
        _cardLevelName = cardLevelName,
        _userFIO = userFIO,
        _userTEL = userTEL,
        _userEMAIL = userEMAIL,
        _userAmount = userAmount,
        _userBonusBalance = userBonusBalance,
        _userBD = userBD,
        _cardBarcode = cardBarcode,
        _role = role,
        _cardName = cardName,
        _ostatok = ostatok,
        _userGender = userGender,
        _address = address,
        super(firestoreUtilData);

  // "user_ID" field.
  String? _userID;
  String get userID => _userID ?? '';
  set userID(String? val) => _userID = val;
  bool hasUserID() => _userID != null;

  // "user_SUL_ID" field.
  String? _userSULID;
  String get userSULID => _userSULID ?? '';
  set userSULID(String? val) => _userSULID = val;
  bool hasUserSULID() => _userSULID != null;

  // "card_ID" field.
  String? _cardID;
  String get cardID => _cardID ?? '';
  set cardID(String? val) => _cardID = val;
  bool hasCardID() => _cardID != null;

  // "card_level_ID" field.
  String? _cardLevelID;
  String get cardLevelID => _cardLevelID ?? '';
  set cardLevelID(String? val) => _cardLevelID = val;
  bool hasCardLevelID() => _cardLevelID != null;

  // "card_level_name" field.
  String? _cardLevelName;
  String get cardLevelName => _cardLevelName ?? '';
  set cardLevelName(String? val) => _cardLevelName = val;
  bool hasCardLevelName() => _cardLevelName != null;

  // "user_FIO" field.
  String? _userFIO;
  String get userFIO => _userFIO ?? '';
  set userFIO(String? val) => _userFIO = val;
  bool hasUserFIO() => _userFIO != null;

  // "user_TEL" field.
  String? _userTEL;
  String get userTEL => _userTEL ?? '';
  set userTEL(String? val) => _userTEL = val;
  bool hasUserTEL() => _userTEL != null;

  // "user_EMAIL" field.
  String? _userEMAIL;
  String get userEMAIL => _userEMAIL ?? '';
  set userEMAIL(String? val) => _userEMAIL = val;
  bool hasUserEMAIL() => _userEMAIL != null;

  // "user_amount" field.
  int? _userAmount;
  int get userAmount => _userAmount ?? 0;
  set userAmount(int? val) => _userAmount = val;
  void incrementUserAmount(int amount) => _userAmount = userAmount + amount;
  bool hasUserAmount() => _userAmount != null;

  // "user_bonus_balance" field.
  int? _userBonusBalance;
  int get userBonusBalance => _userBonusBalance ?? 0;
  set userBonusBalance(int? val) => _userBonusBalance = val;
  void incrementUserBonusBalance(int amount) =>
      _userBonusBalance = userBonusBalance + amount;
  bool hasUserBonusBalance() => _userBonusBalance != null;

  // "user_BD" field.
  String? _userBD;
  String get userBD => _userBD ?? '';
  set userBD(String? val) => _userBD = val;
  bool hasUserBD() => _userBD != null;

  // "card_barcode" field.
  String? _cardBarcode;
  String get cardBarcode => _cardBarcode ?? '';
  set cardBarcode(String? val) => _cardBarcode = val;
  bool hasCardBarcode() => _cardBarcode != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;
  bool hasRole() => _role != null;

  // "cardName" field.
  String? _cardName;
  String get cardName => _cardName ?? '';
  set cardName(String? val) => _cardName = val;
  bool hasCardName() => _cardName != null;

  // "ostatok" field.
  int? _ostatok;
  int get ostatok => _ostatok ?? 0;
  set ostatok(int? val) => _ostatok = val;
  void incrementOstatok(int amount) => _ostatok = ostatok + amount;
  bool hasOstatok() => _ostatok != null;

  // "user_gender" field.
  String? _userGender;
  String get userGender => _userGender ?? '';
  set userGender(String? val) => _userGender = val;
  bool hasUserGender() => _userGender != null;

  // "address" field.
  AddressStruct? _address;
  AddressStruct get address => _address ?? AddressStruct();
  set address(AddressStruct? val) => _address = val;
  void updateAddress(Function(AddressStruct) updateFn) =>
      updateFn(_address ??= AddressStruct());
  bool hasAddress() => _address != null;

  static UserProfileStruct fromMap(Map<String, dynamic> data) =>
      UserProfileStruct(
        userID: data['user_ID'] as String?,
        userSULID: data['user_SUL_ID'] as String?,
        cardID: data['card_ID'] as String?,
        cardLevelID: data['card_level_ID'] as String?,
        cardLevelName: data['card_level_name'] as String?,
        userFIO: data['user_FIO'] as String?,
        userTEL: data['user_TEL'] as String?,
        userEMAIL: data['user_EMAIL'] as String?,
        userAmount: castToType<int>(data['user_amount']),
        userBonusBalance: castToType<int>(data['user_bonus_balance']),
        userBD: data['user_BD'] as String?,
        cardBarcode: data['card_barcode'] as String?,
        role: data['role'] as String?,
        cardName: data['cardName'] as String?,
        ostatok: castToType<int>(data['ostatok']),
        userGender: data['user_gender'] as String?,
        address: AddressStruct.maybeFromMap(data['address']),
      );

  static UserProfileStruct? maybeFromMap(dynamic data) => data is Map
      ? UserProfileStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'user_ID': _userID,
        'user_SUL_ID': _userSULID,
        'card_ID': _cardID,
        'card_level_ID': _cardLevelID,
        'card_level_name': _cardLevelName,
        'user_FIO': _userFIO,
        'user_TEL': _userTEL,
        'user_EMAIL': _userEMAIL,
        'user_amount': _userAmount,
        'user_bonus_balance': _userBonusBalance,
        'user_BD': _userBD,
        'card_barcode': _cardBarcode,
        'role': _role,
        'cardName': _cardName,
        'ostatok': _ostatok,
        'user_gender': _userGender,
        'address': _address?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'user_ID': serializeParam(
          _userID,
          ParamType.String,
        ),
        'user_SUL_ID': serializeParam(
          _userSULID,
          ParamType.String,
        ),
        'card_ID': serializeParam(
          _cardID,
          ParamType.String,
        ),
        'card_level_ID': serializeParam(
          _cardLevelID,
          ParamType.String,
        ),
        'card_level_name': serializeParam(
          _cardLevelName,
          ParamType.String,
        ),
        'user_FIO': serializeParam(
          _userFIO,
          ParamType.String,
        ),
        'user_TEL': serializeParam(
          _userTEL,
          ParamType.String,
        ),
        'user_EMAIL': serializeParam(
          _userEMAIL,
          ParamType.String,
        ),
        'user_amount': serializeParam(
          _userAmount,
          ParamType.int,
        ),
        'user_bonus_balance': serializeParam(
          _userBonusBalance,
          ParamType.int,
        ),
        'user_BD': serializeParam(
          _userBD,
          ParamType.String,
        ),
        'card_barcode': serializeParam(
          _cardBarcode,
          ParamType.String,
        ),
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
        'cardName': serializeParam(
          _cardName,
          ParamType.String,
        ),
        'ostatok': serializeParam(
          _ostatok,
          ParamType.int,
        ),
        'user_gender': serializeParam(
          _userGender,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static UserProfileStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserProfileStruct(
        userID: deserializeParam(
          data['user_ID'],
          ParamType.String,
          false,
        ),
        userSULID: deserializeParam(
          data['user_SUL_ID'],
          ParamType.String,
          false,
        ),
        cardID: deserializeParam(
          data['card_ID'],
          ParamType.String,
          false,
        ),
        cardLevelID: deserializeParam(
          data['card_level_ID'],
          ParamType.String,
          false,
        ),
        cardLevelName: deserializeParam(
          data['card_level_name'],
          ParamType.String,
          false,
        ),
        userFIO: deserializeParam(
          data['user_FIO'],
          ParamType.String,
          false,
        ),
        userTEL: deserializeParam(
          data['user_TEL'],
          ParamType.String,
          false,
        ),
        userEMAIL: deserializeParam(
          data['user_EMAIL'],
          ParamType.String,
          false,
        ),
        userAmount: deserializeParam(
          data['user_amount'],
          ParamType.int,
          false,
        ),
        userBonusBalance: deserializeParam(
          data['user_bonus_balance'],
          ParamType.int,
          false,
        ),
        userBD: deserializeParam(
          data['user_BD'],
          ParamType.String,
          false,
        ),
        cardBarcode: deserializeParam(
          data['card_barcode'],
          ParamType.String,
          false,
        ),
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
        cardName: deserializeParam(
          data['cardName'],
          ParamType.String,
          false,
        ),
        ostatok: deserializeParam(
          data['ostatok'],
          ParamType.int,
          false,
        ),
        userGender: deserializeParam(
          data['user_gender'],
          ParamType.String,
          false,
        ),
        address: deserializeStructParam(
          data['address'],
          ParamType.DataStruct,
          false,
          structBuilder: AddressStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'UserProfileStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserProfileStruct &&
        userID == other.userID &&
        userSULID == other.userSULID &&
        cardID == other.cardID &&
        cardLevelID == other.cardLevelID &&
        cardLevelName == other.cardLevelName &&
        userFIO == other.userFIO &&
        userTEL == other.userTEL &&
        userEMAIL == other.userEMAIL &&
        userAmount == other.userAmount &&
        userBonusBalance == other.userBonusBalance &&
        userBD == other.userBD &&
        cardBarcode == other.cardBarcode &&
        role == other.role &&
        cardName == other.cardName &&
        ostatok == other.ostatok &&
        userGender == other.userGender &&
        address == other.address;
  }

  @override
  int get hashCode => const ListEquality().hash([
        userID,
        userSULID,
        cardID,
        cardLevelID,
        cardLevelName,
        userFIO,
        userTEL,
        userEMAIL,
        userAmount,
        userBonusBalance,
        userBD,
        cardBarcode,
        role,
        cardName,
        ostatok,
        userGender,
        address
      ]);
}

UserProfileStruct createUserProfileStruct({
  String? userID,
  String? userSULID,
  String? cardID,
  String? cardLevelID,
  String? cardLevelName,
  String? userFIO,
  String? userTEL,
  String? userEMAIL,
  int? userAmount,
  int? userBonusBalance,
  String? userBD,
  String? cardBarcode,
  String? role,
  String? cardName,
  int? ostatok,
  String? userGender,
  AddressStruct? address,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserProfileStruct(
      userID: userID,
      userSULID: userSULID,
      cardID: cardID,
      cardLevelID: cardLevelID,
      cardLevelName: cardLevelName,
      userFIO: userFIO,
      userTEL: userTEL,
      userEMAIL: userEMAIL,
      userAmount: userAmount,
      userBonusBalance: userBonusBalance,
      userBD: userBD,
      cardBarcode: cardBarcode,
      role: role,
      cardName: cardName,
      ostatok: ostatok,
      userGender: userGender,
      address: address ?? (clearUnsetFields ? AddressStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserProfileStruct? updateUserProfileStruct(
  UserProfileStruct? userProfile, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userProfile
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserProfileStructData(
  Map<String, dynamic> firestoreData,
  UserProfileStruct? userProfile,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userProfile == null) {
    return;
  }
  if (userProfile.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userProfile.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userProfileData =
      getUserProfileFirestoreData(userProfile, forFieldValue);
  final nestedData =
      userProfileData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userProfile.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserProfileFirestoreData(
  UserProfileStruct? userProfile, [
  bool forFieldValue = false,
]) {
  if (userProfile == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userProfile.toMap());

  // Handle nested data for "address" field.
  addAddressStructData(
    firestoreData,
    userProfile.hasAddress() ? userProfile.address : null,
    'address',
    forFieldValue,
  );

  // Add any Firestore field values
  userProfile.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserProfileListFirestoreData(
  List<UserProfileStruct>? userProfiles,
) =>
    userProfiles?.map((e) => getUserProfileFirestoreData(e, true)).toList() ??
    [];
