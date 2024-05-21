// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChildCategoryStruct extends FFFirebaseStruct {
  ChildCategoryStruct({
    int? idChild,
    String? nameChild,
    int? parentId,
    String? childCode,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _idChild = idChild,
        _nameChild = nameChild,
        _parentId = parentId,
        _childCode = childCode,
        super(firestoreUtilData);

  // "id_child" field.
  int? _idChild;
  int get idChild => _idChild ?? 0;
  set idChild(int? val) => _idChild = val;
  void incrementIdChild(int amount) => _idChild = idChild + amount;
  bool hasIdChild() => _idChild != null;

  // "name_child" field.
  String? _nameChild;
  String get nameChild => _nameChild ?? '';
  set nameChild(String? val) => _nameChild = val;
  bool hasNameChild() => _nameChild != null;

  // "parent_id" field.
  int? _parentId;
  int get parentId => _parentId ?? 0;
  set parentId(int? val) => _parentId = val;
  void incrementParentId(int amount) => _parentId = parentId + amount;
  bool hasParentId() => _parentId != null;

  // "child_code" field.
  String? _childCode;
  String get childCode => _childCode ?? '';
  set childCode(String? val) => _childCode = val;
  bool hasChildCode() => _childCode != null;

  static ChildCategoryStruct fromMap(Map<String, dynamic> data) =>
      ChildCategoryStruct(
        idChild: castToType<int>(data['id_child']),
        nameChild: data['name_child'] as String?,
        parentId: castToType<int>(data['parent_id']),
        childCode: data['child_code'] as String?,
      );

  static ChildCategoryStruct? maybeFromMap(dynamic data) => data is Map
      ? ChildCategoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id_child': _idChild,
        'name_child': _nameChild,
        'parent_id': _parentId,
        'child_code': _childCode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id_child': serializeParam(
          _idChild,
          ParamType.int,
        ),
        'name_child': serializeParam(
          _nameChild,
          ParamType.String,
        ),
        'parent_id': serializeParam(
          _parentId,
          ParamType.int,
        ),
        'child_code': serializeParam(
          _childCode,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChildCategoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChildCategoryStruct(
        idChild: deserializeParam(
          data['id_child'],
          ParamType.int,
          false,
        ),
        nameChild: deserializeParam(
          data['name_child'],
          ParamType.String,
          false,
        ),
        parentId: deserializeParam(
          data['parent_id'],
          ParamType.int,
          false,
        ),
        childCode: deserializeParam(
          data['child_code'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChildCategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChildCategoryStruct &&
        idChild == other.idChild &&
        nameChild == other.nameChild &&
        parentId == other.parentId &&
        childCode == other.childCode;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([idChild, nameChild, parentId, childCode]);
}

ChildCategoryStruct createChildCategoryStruct({
  int? idChild,
  String? nameChild,
  int? parentId,
  String? childCode,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChildCategoryStruct(
      idChild: idChild,
      nameChild: nameChild,
      parentId: parentId,
      childCode: childCode,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChildCategoryStruct? updateChildCategoryStruct(
  ChildCategoryStruct? childCategory, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    childCategory
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChildCategoryStructData(
  Map<String, dynamic> firestoreData,
  ChildCategoryStruct? childCategory,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (childCategory == null) {
    return;
  }
  if (childCategory.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && childCategory.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final childCategoryData =
      getChildCategoryFirestoreData(childCategory, forFieldValue);
  final nestedData =
      childCategoryData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = childCategory.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChildCategoryFirestoreData(
  ChildCategoryStruct? childCategory, [
  bool forFieldValue = false,
]) {
  if (childCategory == null) {
    return {};
  }
  final firestoreData = mapToFirestore(childCategory.toMap());

  // Add any Firestore field values
  childCategory.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChildCategoryListFirestoreData(
  List<ChildCategoryStruct>? childCategorys,
) =>
    childCategorys
        ?.map((e) => getChildCategoryFirestoreData(e, true))
        .toList() ??
    [];
