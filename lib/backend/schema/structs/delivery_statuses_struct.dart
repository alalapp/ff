// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeliveryStatusesStruct extends FFFirebaseStruct {
  DeliveryStatusesStruct({
    int? statusID,
    int? deliveryVarID,
    String? status,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _statusID = statusID,
        _deliveryVarID = deliveryVarID,
        _status = status,
        super(firestoreUtilData);

  // "statusID" field.
  int? _statusID;
  int get statusID => _statusID ?? 0;
  set statusID(int? val) => _statusID = val;
  void incrementStatusID(int amount) => _statusID = statusID + amount;
  bool hasStatusID() => _statusID != null;

  // "deliveryVarID" field.
  int? _deliveryVarID;
  int get deliveryVarID => _deliveryVarID ?? 0;
  set deliveryVarID(int? val) => _deliveryVarID = val;
  void incrementDeliveryVarID(int amount) =>
      _deliveryVarID = deliveryVarID + amount;
  bool hasDeliveryVarID() => _deliveryVarID != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;
  bool hasStatus() => _status != null;

  static DeliveryStatusesStruct fromMap(Map<String, dynamic> data) =>
      DeliveryStatusesStruct(
        statusID: castToType<int>(data['statusID']),
        deliveryVarID: castToType<int>(data['deliveryVarID']),
        status: data['status'] as String?,
      );

  static DeliveryStatusesStruct? maybeFromMap(dynamic data) => data is Map
      ? DeliveryStatusesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'statusID': _statusID,
        'deliveryVarID': _deliveryVarID,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'statusID': serializeParam(
          _statusID,
          ParamType.int,
        ),
        'deliveryVarID': serializeParam(
          _deliveryVarID,
          ParamType.int,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static DeliveryStatusesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DeliveryStatusesStruct(
        statusID: deserializeParam(
          data['statusID'],
          ParamType.int,
          false,
        ),
        deliveryVarID: deserializeParam(
          data['deliveryVarID'],
          ParamType.int,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DeliveryStatusesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DeliveryStatusesStruct &&
        statusID == other.statusID &&
        deliveryVarID == other.deliveryVarID &&
        status == other.status;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([statusID, deliveryVarID, status]);
}

DeliveryStatusesStruct createDeliveryStatusesStruct({
  int? statusID,
  int? deliveryVarID,
  String? status,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DeliveryStatusesStruct(
      statusID: statusID,
      deliveryVarID: deliveryVarID,
      status: status,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DeliveryStatusesStruct? updateDeliveryStatusesStruct(
  DeliveryStatusesStruct? deliveryStatuses, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    deliveryStatuses
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDeliveryStatusesStructData(
  Map<String, dynamic> firestoreData,
  DeliveryStatusesStruct? deliveryStatuses,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (deliveryStatuses == null) {
    return;
  }
  if (deliveryStatuses.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && deliveryStatuses.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final deliveryStatusesData =
      getDeliveryStatusesFirestoreData(deliveryStatuses, forFieldValue);
  final nestedData =
      deliveryStatusesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = deliveryStatuses.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDeliveryStatusesFirestoreData(
  DeliveryStatusesStruct? deliveryStatuses, [
  bool forFieldValue = false,
]) {
  if (deliveryStatuses == null) {
    return {};
  }
  final firestoreData = mapToFirestore(deliveryStatuses.toMap());

  // Add any Firestore field values
  deliveryStatuses.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDeliveryStatusesListFirestoreData(
  List<DeliveryStatusesStruct>? deliveryStatusess,
) =>
    deliveryStatusess
        ?.map((e) => getDeliveryStatusesFirestoreData(e, true))
        .toList() ??
    [];
