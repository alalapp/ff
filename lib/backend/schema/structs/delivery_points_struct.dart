// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeliveryPointsStruct extends FFFirebaseStruct {
  DeliveryPointsStruct({
    String? name,
    String? nearestStation,
    String? workTime,
    String? phone,
    String? type,
    String? ownerCode,
    String? city,
    String? postalCode,
    double? longitude,
    double? latitude,
    String? address,
    String? addressFull,
    LatLng? coordinates,
    String? codePvz,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _nearestStation = nearestStation,
        _workTime = workTime,
        _phone = phone,
        _type = type,
        _ownerCode = ownerCode,
        _city = city,
        _postalCode = postalCode,
        _longitude = longitude,
        _latitude = latitude,
        _address = address,
        _addressFull = addressFull,
        _coordinates = coordinates,
        _codePvz = codePvz,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "nearest_station" field.
  String? _nearestStation;
  String get nearestStation => _nearestStation ?? '';
  set nearestStation(String? val) => _nearestStation = val;
  bool hasNearestStation() => _nearestStation != null;

  // "work_time" field.
  String? _workTime;
  String get workTime => _workTime ?? '';
  set workTime(String? val) => _workTime = val;
  bool hasWorkTime() => _workTime != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;
  bool hasPhone() => _phone != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;
  bool hasType() => _type != null;

  // "owner_code" field.
  String? _ownerCode;
  String get ownerCode => _ownerCode ?? '';
  set ownerCode(String? val) => _ownerCode = val;
  bool hasOwnerCode() => _ownerCode != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;
  bool hasCity() => _city != null;

  // "postal_code" field.
  String? _postalCode;
  String get postalCode => _postalCode ?? '';
  set postalCode(String? val) => _postalCode = val;
  bool hasPostalCode() => _postalCode != null;

  // "longitude" field.
  double? _longitude;
  double get longitude => _longitude ?? 0.0;
  set longitude(double? val) => _longitude = val;
  void incrementLongitude(double amount) => _longitude = longitude + amount;
  bool hasLongitude() => _longitude != null;

  // "latitude" field.
  double? _latitude;
  double get latitude => _latitude ?? 0.0;
  set latitude(double? val) => _latitude = val;
  void incrementLatitude(double amount) => _latitude = latitude + amount;
  bool hasLatitude() => _latitude != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;
  bool hasAddress() => _address != null;

  // "address_full" field.
  String? _addressFull;
  String get addressFull => _addressFull ?? '';
  set addressFull(String? val) => _addressFull = val;
  bool hasAddressFull() => _addressFull != null;

  // "coordinates" field.
  LatLng? _coordinates;
  LatLng? get coordinates => _coordinates;
  set coordinates(LatLng? val) => _coordinates = val;
  bool hasCoordinates() => _coordinates != null;

  // "code_pvz" field.
  String? _codePvz;
  String get codePvz => _codePvz ?? '';
  set codePvz(String? val) => _codePvz = val;
  bool hasCodePvz() => _codePvz != null;

  static DeliveryPointsStruct fromMap(Map<String, dynamic> data) =>
      DeliveryPointsStruct(
        name: data['name'] as String?,
        nearestStation: data['nearest_station'] as String?,
        workTime: data['work_time'] as String?,
        phone: data['phone'] as String?,
        type: data['type'] as String?,
        ownerCode: data['owner_code'] as String?,
        city: data['city'] as String?,
        postalCode: data['postal_code'] as String?,
        longitude: castToType<double>(data['longitude']),
        latitude: castToType<double>(data['latitude']),
        address: data['address'] as String?,
        addressFull: data['address_full'] as String?,
        coordinates: data['coordinates'] as LatLng?,
        codePvz: data['code_pvz'] as String?,
      );

  static DeliveryPointsStruct? maybeFromMap(dynamic data) => data is Map
      ? DeliveryPointsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'nearest_station': _nearestStation,
        'work_time': _workTime,
        'phone': _phone,
        'type': _type,
        'owner_code': _ownerCode,
        'city': _city,
        'postal_code': _postalCode,
        'longitude': _longitude,
        'latitude': _latitude,
        'address': _address,
        'address_full': _addressFull,
        'coordinates': _coordinates,
        'code_pvz': _codePvz,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'nearest_station': serializeParam(
          _nearestStation,
          ParamType.String,
        ),
        'work_time': serializeParam(
          _workTime,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'owner_code': serializeParam(
          _ownerCode,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'postal_code': serializeParam(
          _postalCode,
          ParamType.String,
        ),
        'longitude': serializeParam(
          _longitude,
          ParamType.double,
        ),
        'latitude': serializeParam(
          _latitude,
          ParamType.double,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'address_full': serializeParam(
          _addressFull,
          ParamType.String,
        ),
        'coordinates': serializeParam(
          _coordinates,
          ParamType.LatLng,
        ),
        'code_pvz': serializeParam(
          _codePvz,
          ParamType.String,
        ),
      }.withoutNulls;

  static DeliveryPointsStruct fromSerializableMap(Map<String, dynamic> data) =>
      DeliveryPointsStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        nearestStation: deserializeParam(
          data['nearest_station'],
          ParamType.String,
          false,
        ),
        workTime: deserializeParam(
          data['work_time'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        ownerCode: deserializeParam(
          data['owner_code'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        postalCode: deserializeParam(
          data['postal_code'],
          ParamType.String,
          false,
        ),
        longitude: deserializeParam(
          data['longitude'],
          ParamType.double,
          false,
        ),
        latitude: deserializeParam(
          data['latitude'],
          ParamType.double,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        addressFull: deserializeParam(
          data['address_full'],
          ParamType.String,
          false,
        ),
        coordinates: deserializeParam(
          data['coordinates'],
          ParamType.LatLng,
          false,
        ),
        codePvz: deserializeParam(
          data['code_pvz'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DeliveryPointsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DeliveryPointsStruct &&
        name == other.name &&
        nearestStation == other.nearestStation &&
        workTime == other.workTime &&
        phone == other.phone &&
        type == other.type &&
        ownerCode == other.ownerCode &&
        city == other.city &&
        postalCode == other.postalCode &&
        longitude == other.longitude &&
        latitude == other.latitude &&
        address == other.address &&
        addressFull == other.addressFull &&
        coordinates == other.coordinates &&
        codePvz == other.codePvz;
  }

  @override
  int get hashCode => const ListEquality().hash([
        name,
        nearestStation,
        workTime,
        phone,
        type,
        ownerCode,
        city,
        postalCode,
        longitude,
        latitude,
        address,
        addressFull,
        coordinates,
        codePvz
      ]);
}

DeliveryPointsStruct createDeliveryPointsStruct({
  String? name,
  String? nearestStation,
  String? workTime,
  String? phone,
  String? type,
  String? ownerCode,
  String? city,
  String? postalCode,
  double? longitude,
  double? latitude,
  String? address,
  String? addressFull,
  LatLng? coordinates,
  String? codePvz,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DeliveryPointsStruct(
      name: name,
      nearestStation: nearestStation,
      workTime: workTime,
      phone: phone,
      type: type,
      ownerCode: ownerCode,
      city: city,
      postalCode: postalCode,
      longitude: longitude,
      latitude: latitude,
      address: address,
      addressFull: addressFull,
      coordinates: coordinates,
      codePvz: codePvz,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DeliveryPointsStruct? updateDeliveryPointsStruct(
  DeliveryPointsStruct? deliveryPoints, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    deliveryPoints
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDeliveryPointsStructData(
  Map<String, dynamic> firestoreData,
  DeliveryPointsStruct? deliveryPoints,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (deliveryPoints == null) {
    return;
  }
  if (deliveryPoints.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && deliveryPoints.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final deliveryPointsData =
      getDeliveryPointsFirestoreData(deliveryPoints, forFieldValue);
  final nestedData =
      deliveryPointsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = deliveryPoints.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDeliveryPointsFirestoreData(
  DeliveryPointsStruct? deliveryPoints, [
  bool forFieldValue = false,
]) {
  if (deliveryPoints == null) {
    return {};
  }
  final firestoreData = mapToFirestore(deliveryPoints.toMap());

  // Add any Firestore field values
  deliveryPoints.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDeliveryPointsListFirestoreData(
  List<DeliveryPointsStruct>? deliveryPointss,
) =>
    deliveryPointss
        ?.map((e) => getDeliveryPointsFirestoreData(e, true))
        .toList() ??
    [];
