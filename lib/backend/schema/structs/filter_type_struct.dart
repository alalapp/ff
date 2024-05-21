// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FilterTypeStruct extends FFFirebaseStruct {
  FilterTypeStruct({
    bool? sortByName,
    String? showUnavailable,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _sortByName = sortByName,
        _showUnavailable = showUnavailable,
        super(firestoreUtilData);

  // "sort_by_name" field.
  bool? _sortByName;
  bool get sortByName => _sortByName ?? true;
  set sortByName(bool? val) => _sortByName = val;
  bool hasSortByName() => _sortByName != null;

  // "show_unavailable" field.
  String? _showUnavailable;
  String get showUnavailable => _showUnavailable ?? 'Y';
  set showUnavailable(String? val) => _showUnavailable = val;
  bool hasShowUnavailable() => _showUnavailable != null;

  static FilterTypeStruct fromMap(Map<String, dynamic> data) =>
      FilterTypeStruct(
        sortByName: data['sort_by_name'] as bool?,
        showUnavailable: data['show_unavailable'] as String?,
      );

  static FilterTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? FilterTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'sort_by_name': _sortByName,
        'show_unavailable': _showUnavailable,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'sort_by_name': serializeParam(
          _sortByName,
          ParamType.bool,
        ),
        'show_unavailable': serializeParam(
          _showUnavailable,
          ParamType.String,
        ),
      }.withoutNulls;

  static FilterTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      FilterTypeStruct(
        sortByName: deserializeParam(
          data['sort_by_name'],
          ParamType.bool,
          false,
        ),
        showUnavailable: deserializeParam(
          data['show_unavailable'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FilterTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FilterTypeStruct &&
        sortByName == other.sortByName &&
        showUnavailable == other.showUnavailable;
  }

  @override
  int get hashCode => const ListEquality().hash([sortByName, showUnavailable]);
}

FilterTypeStruct createFilterTypeStruct({
  bool? sortByName,
  String? showUnavailable,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FilterTypeStruct(
      sortByName: sortByName,
      showUnavailable: showUnavailable,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FilterTypeStruct? updateFilterTypeStruct(
  FilterTypeStruct? filterType, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    filterType
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFilterTypeStructData(
  Map<String, dynamic> firestoreData,
  FilterTypeStruct? filterType,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (filterType == null) {
    return;
  }
  if (filterType.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && filterType.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final filterTypeData = getFilterTypeFirestoreData(filterType, forFieldValue);
  final nestedData = filterTypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = filterType.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFilterTypeFirestoreData(
  FilterTypeStruct? filterType, [
  bool forFieldValue = false,
]) {
  if (filterType == null) {
    return {};
  }
  final firestoreData = mapToFirestore(filterType.toMap());

  // Add any Firestore field values
  filterType.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFilterTypeListFirestoreData(
  List<FilterTypeStruct>? filterTypes,
) =>
    filterTypes?.map((e) => getFilterTypeFirestoreData(e, true)).toList() ?? [];
