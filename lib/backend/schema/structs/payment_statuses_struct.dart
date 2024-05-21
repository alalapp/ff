// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentStatusesStruct extends FFFirebaseStruct {
  PaymentStatusesStruct({
    int? statusID,
    int? paymentVarID,
    String? paymentStatus,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _statusID = statusID,
        _paymentVarID = paymentVarID,
        _paymentStatus = paymentStatus,
        super(firestoreUtilData);

  // "statusID" field.
  int? _statusID;
  int get statusID => _statusID ?? 0;
  set statusID(int? val) => _statusID = val;
  void incrementStatusID(int amount) => _statusID = statusID + amount;
  bool hasStatusID() => _statusID != null;

  // "paymentVarID" field.
  int? _paymentVarID;
  int get paymentVarID => _paymentVarID ?? 0;
  set paymentVarID(int? val) => _paymentVarID = val;
  void incrementPaymentVarID(int amount) =>
      _paymentVarID = paymentVarID + amount;
  bool hasPaymentVarID() => _paymentVarID != null;

  // "paymentStatus" field.
  String? _paymentStatus;
  String get paymentStatus => _paymentStatus ?? '';
  set paymentStatus(String? val) => _paymentStatus = val;
  bool hasPaymentStatus() => _paymentStatus != null;

  static PaymentStatusesStruct fromMap(Map<String, dynamic> data) =>
      PaymentStatusesStruct(
        statusID: castToType<int>(data['statusID']),
        paymentVarID: castToType<int>(data['paymentVarID']),
        paymentStatus: data['paymentStatus'] as String?,
      );

  static PaymentStatusesStruct? maybeFromMap(dynamic data) => data is Map
      ? PaymentStatusesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'statusID': _statusID,
        'paymentVarID': _paymentVarID,
        'paymentStatus': _paymentStatus,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'statusID': serializeParam(
          _statusID,
          ParamType.int,
        ),
        'paymentVarID': serializeParam(
          _paymentVarID,
          ParamType.int,
        ),
        'paymentStatus': serializeParam(
          _paymentStatus,
          ParamType.String,
        ),
      }.withoutNulls;

  static PaymentStatusesStruct fromSerializableMap(Map<String, dynamic> data) =>
      PaymentStatusesStruct(
        statusID: deserializeParam(
          data['statusID'],
          ParamType.int,
          false,
        ),
        paymentVarID: deserializeParam(
          data['paymentVarID'],
          ParamType.int,
          false,
        ),
        paymentStatus: deserializeParam(
          data['paymentStatus'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PaymentStatusesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PaymentStatusesStruct &&
        statusID == other.statusID &&
        paymentVarID == other.paymentVarID &&
        paymentStatus == other.paymentStatus;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([statusID, paymentVarID, paymentStatus]);
}

PaymentStatusesStruct createPaymentStatusesStruct({
  int? statusID,
  int? paymentVarID,
  String? paymentStatus,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PaymentStatusesStruct(
      statusID: statusID,
      paymentVarID: paymentVarID,
      paymentStatus: paymentStatus,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PaymentStatusesStruct? updatePaymentStatusesStruct(
  PaymentStatusesStruct? paymentStatuses, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    paymentStatuses
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPaymentStatusesStructData(
  Map<String, dynamic> firestoreData,
  PaymentStatusesStruct? paymentStatuses,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (paymentStatuses == null) {
    return;
  }
  if (paymentStatuses.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && paymentStatuses.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final paymentStatusesData =
      getPaymentStatusesFirestoreData(paymentStatuses, forFieldValue);
  final nestedData =
      paymentStatusesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = paymentStatuses.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPaymentStatusesFirestoreData(
  PaymentStatusesStruct? paymentStatuses, [
  bool forFieldValue = false,
]) {
  if (paymentStatuses == null) {
    return {};
  }
  final firestoreData = mapToFirestore(paymentStatuses.toMap());

  // Add any Firestore field values
  paymentStatuses.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPaymentStatusesListFirestoreData(
  List<PaymentStatusesStruct>? paymentStatusess,
) =>
    paymentStatusess
        ?.map((e) => getPaymentStatusesFirestoreData(e, true))
        .toList() ??
    [];
