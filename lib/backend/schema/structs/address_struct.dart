// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddressStruct extends FFFirebaseStruct {
  AddressStruct({
    int? cityId,
    String? city,
    int? postcode,
    String? address,
    String? street,
    String? house,
    String? corpus,
    String? stroenie,
    String? flat,
    String? phone,
    String? recipientName,
    String? pvzCode,
    String? pvzName,
    String? pvzAddress,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _cityId = cityId,
        _city = city,
        _postcode = postcode,
        _address = address,
        _street = street,
        _house = house,
        _corpus = corpus,
        _stroenie = stroenie,
        _flat = flat,
        _phone = phone,
        _recipientName = recipientName,
        _pvzCode = pvzCode,
        _pvzName = pvzName,
        _pvzAddress = pvzAddress,
        super(firestoreUtilData);

  // "city_id" field.
  int? _cityId;
  int get cityId => _cityId ?? 0;
  set cityId(int? val) => _cityId = val;
  void incrementCityId(int amount) => _cityId = cityId + amount;
  bool hasCityId() => _cityId != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;
  bool hasCity() => _city != null;

  // "postcode" field.
  int? _postcode;
  int get postcode => _postcode ?? 0;
  set postcode(int? val) => _postcode = val;
  void incrementPostcode(int amount) => _postcode = postcode + amount;
  bool hasPostcode() => _postcode != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;
  bool hasAddress() => _address != null;

  // "street" field.
  String? _street;
  String get street => _street ?? '';
  set street(String? val) => _street = val;
  bool hasStreet() => _street != null;

  // "house" field.
  String? _house;
  String get house => _house ?? '';
  set house(String? val) => _house = val;
  bool hasHouse() => _house != null;

  // "corpus" field.
  String? _corpus;
  String get corpus => _corpus ?? '';
  set corpus(String? val) => _corpus = val;
  bool hasCorpus() => _corpus != null;

  // "stroenie" field.
  String? _stroenie;
  String get stroenie => _stroenie ?? '';
  set stroenie(String? val) => _stroenie = val;
  bool hasStroenie() => _stroenie != null;

  // "flat" field.
  String? _flat;
  String get flat => _flat ?? '';
  set flat(String? val) => _flat = val;
  bool hasFlat() => _flat != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;
  bool hasPhone() => _phone != null;

  // "recipient_name" field.
  String? _recipientName;
  String get recipientName => _recipientName ?? '';
  set recipientName(String? val) => _recipientName = val;
  bool hasRecipientName() => _recipientName != null;

  // "pvz_code" field.
  String? _pvzCode;
  String get pvzCode => _pvzCode ?? '';
  set pvzCode(String? val) => _pvzCode = val;
  bool hasPvzCode() => _pvzCode != null;

  // "pvz_name" field.
  String? _pvzName;
  String get pvzName => _pvzName ?? '';
  set pvzName(String? val) => _pvzName = val;
  bool hasPvzName() => _pvzName != null;

  // "pvz_address" field.
  String? _pvzAddress;
  String get pvzAddress => _pvzAddress ?? '';
  set pvzAddress(String? val) => _pvzAddress = val;
  bool hasPvzAddress() => _pvzAddress != null;

  static AddressStruct fromMap(Map<String, dynamic> data) => AddressStruct(
        cityId: castToType<int>(data['city_id']),
        city: data['city'] as String?,
        postcode: castToType<int>(data['postcode']),
        address: data['address'] as String?,
        street: data['street'] as String?,
        house: data['house'] as String?,
        corpus: data['corpus'] as String?,
        stroenie: data['stroenie'] as String?,
        flat: data['flat'] as String?,
        phone: data['phone'] as String?,
        recipientName: data['recipient_name'] as String?,
        pvzCode: data['pvz_code'] as String?,
        pvzName: data['pvz_name'] as String?,
        pvzAddress: data['pvz_address'] as String?,
      );

  static AddressStruct? maybeFromMap(dynamic data) =>
      data is Map ? AddressStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'city_id': _cityId,
        'city': _city,
        'postcode': _postcode,
        'address': _address,
        'street': _street,
        'house': _house,
        'corpus': _corpus,
        'stroenie': _stroenie,
        'flat': _flat,
        'phone': _phone,
        'recipient_name': _recipientName,
        'pvz_code': _pvzCode,
        'pvz_name': _pvzName,
        'pvz_address': _pvzAddress,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'city_id': serializeParam(
          _cityId,
          ParamType.int,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'postcode': serializeParam(
          _postcode,
          ParamType.int,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'street': serializeParam(
          _street,
          ParamType.String,
        ),
        'house': serializeParam(
          _house,
          ParamType.String,
        ),
        'corpus': serializeParam(
          _corpus,
          ParamType.String,
        ),
        'stroenie': serializeParam(
          _stroenie,
          ParamType.String,
        ),
        'flat': serializeParam(
          _flat,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'recipient_name': serializeParam(
          _recipientName,
          ParamType.String,
        ),
        'pvz_code': serializeParam(
          _pvzCode,
          ParamType.String,
        ),
        'pvz_name': serializeParam(
          _pvzName,
          ParamType.String,
        ),
        'pvz_address': serializeParam(
          _pvzAddress,
          ParamType.String,
        ),
      }.withoutNulls;

  static AddressStruct fromSerializableMap(Map<String, dynamic> data) =>
      AddressStruct(
        cityId: deserializeParam(
          data['city_id'],
          ParamType.int,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        postcode: deserializeParam(
          data['postcode'],
          ParamType.int,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        street: deserializeParam(
          data['street'],
          ParamType.String,
          false,
        ),
        house: deserializeParam(
          data['house'],
          ParamType.String,
          false,
        ),
        corpus: deserializeParam(
          data['corpus'],
          ParamType.String,
          false,
        ),
        stroenie: deserializeParam(
          data['stroenie'],
          ParamType.String,
          false,
        ),
        flat: deserializeParam(
          data['flat'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        recipientName: deserializeParam(
          data['recipient_name'],
          ParamType.String,
          false,
        ),
        pvzCode: deserializeParam(
          data['pvz_code'],
          ParamType.String,
          false,
        ),
        pvzName: deserializeParam(
          data['pvz_name'],
          ParamType.String,
          false,
        ),
        pvzAddress: deserializeParam(
          data['pvz_address'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AddressStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AddressStruct &&
        cityId == other.cityId &&
        city == other.city &&
        postcode == other.postcode &&
        address == other.address &&
        street == other.street &&
        house == other.house &&
        corpus == other.corpus &&
        stroenie == other.stroenie &&
        flat == other.flat &&
        phone == other.phone &&
        recipientName == other.recipientName &&
        pvzCode == other.pvzCode &&
        pvzName == other.pvzName &&
        pvzAddress == other.pvzAddress;
  }

  @override
  int get hashCode => const ListEquality().hash([
        cityId,
        city,
        postcode,
        address,
        street,
        house,
        corpus,
        stroenie,
        flat,
        phone,
        recipientName,
        pvzCode,
        pvzName,
        pvzAddress
      ]);
}

AddressStruct createAddressStruct({
  int? cityId,
  String? city,
  int? postcode,
  String? address,
  String? street,
  String? house,
  String? corpus,
  String? stroenie,
  String? flat,
  String? phone,
  String? recipientName,
  String? pvzCode,
  String? pvzName,
  String? pvzAddress,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AddressStruct(
      cityId: cityId,
      city: city,
      postcode: postcode,
      address: address,
      street: street,
      house: house,
      corpus: corpus,
      stroenie: stroenie,
      flat: flat,
      phone: phone,
      recipientName: recipientName,
      pvzCode: pvzCode,
      pvzName: pvzName,
      pvzAddress: pvzAddress,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AddressStruct? updateAddressStruct(
  AddressStruct? addressStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    addressStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAddressStructData(
  Map<String, dynamic> firestoreData,
  AddressStruct? addressStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (addressStruct == null) {
    return;
  }
  if (addressStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && addressStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final addressStructData =
      getAddressFirestoreData(addressStruct, forFieldValue);
  final nestedData =
      addressStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = addressStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAddressFirestoreData(
  AddressStruct? addressStruct, [
  bool forFieldValue = false,
]) {
  if (addressStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(addressStruct.toMap());

  // Add any Firestore field values
  addressStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAddressListFirestoreData(
  List<AddressStruct>? addressStructs,
) =>
    addressStructs?.map((e) => getAddressFirestoreData(e, true)).toList() ?? [];
