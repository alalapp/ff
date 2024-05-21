// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PropertyValuesStruct extends FFFirebaseStruct {
  PropertyValuesStruct({
    String? value,
    bool? checked,
    bool? active,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _value = value,
        _checked = checked,
        _active = active,
        super(firestoreUtilData);

  // "value" field.
  String? _value;
  String get value => _value ?? '';
  set value(String? val) => _value = val;
  bool hasValue() => _value != null;

  // "checked" field.
  bool? _checked;
  bool get checked => _checked ?? false;
  set checked(bool? val) => _checked = val;
  bool hasChecked() => _checked != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? true;
  set active(bool? val) => _active = val;
  bool hasActive() => _active != null;

  static PropertyValuesStruct fromMap(Map<String, dynamic> data) =>
      PropertyValuesStruct(
        value: data['value'] as String?,
        checked: data['checked'] as bool?,
        active: data['active'] as bool?,
      );

  static PropertyValuesStruct? maybeFromMap(dynamic data) => data is Map
      ? PropertyValuesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'value': _value,
        'checked': _checked,
        'active': _active,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'value': serializeParam(
          _value,
          ParamType.String,
        ),
        'checked': serializeParam(
          _checked,
          ParamType.bool,
        ),
        'active': serializeParam(
          _active,
          ParamType.bool,
        ),
      }.withoutNulls;

  static PropertyValuesStruct fromSerializableMap(Map<String, dynamic> data) =>
      PropertyValuesStruct(
        value: deserializeParam(
          data['value'],
          ParamType.String,
          false,
        ),
        checked: deserializeParam(
          data['checked'],
          ParamType.bool,
          false,
        ),
        active: deserializeParam(
          data['active'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'PropertyValuesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PropertyValuesStruct &&
        value == other.value &&
        checked == other.checked &&
        active == other.active;
  }

  @override
  int get hashCode => const ListEquality().hash([value, checked, active]);
}

PropertyValuesStruct createPropertyValuesStruct({
  String? value,
  bool? checked,
  bool? active,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PropertyValuesStruct(
      value: value,
      checked: checked,
      active: active,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PropertyValuesStruct? updatePropertyValuesStruct(
  PropertyValuesStruct? propertyValues, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    propertyValues
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPropertyValuesStructData(
  Map<String, dynamic> firestoreData,
  PropertyValuesStruct? propertyValues,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (propertyValues == null) {
    return;
  }
  if (propertyValues.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && propertyValues.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final propertyValuesData =
      getPropertyValuesFirestoreData(propertyValues, forFieldValue);
  final nestedData =
      propertyValuesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = propertyValues.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPropertyValuesFirestoreData(
  PropertyValuesStruct? propertyValues, [
  bool forFieldValue = false,
]) {
  if (propertyValues == null) {
    return {};
  }
  final firestoreData = mapToFirestore(propertyValues.toMap());

  // Add any Firestore field values
  propertyValues.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPropertyValuesListFirestoreData(
  List<PropertyValuesStruct>? propertyValuess,
) =>
    propertyValuess
        ?.map((e) => getPropertyValuesFirestoreData(e, true))
        .toList() ??
    [];
