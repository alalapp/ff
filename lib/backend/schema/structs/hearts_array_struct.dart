// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HeartsArrayStruct extends FFFirebaseStruct {
  HeartsArrayStruct({
    int? idProduct,
    bool? isFavorite,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _idProduct = idProduct,
        _isFavorite = isFavorite,
        super(firestoreUtilData);

  // "id_product" field.
  int? _idProduct;
  int get idProduct => _idProduct ?? 0;
  set idProduct(int? val) => _idProduct = val;
  void incrementIdProduct(int amount) => _idProduct = idProduct + amount;
  bool hasIdProduct() => _idProduct != null;

  // "is_favorite" field.
  bool? _isFavorite;
  bool get isFavorite => _isFavorite ?? false;
  set isFavorite(bool? val) => _isFavorite = val;
  bool hasIsFavorite() => _isFavorite != null;

  static HeartsArrayStruct fromMap(Map<String, dynamic> data) =>
      HeartsArrayStruct(
        idProduct: castToType<int>(data['id_product']),
        isFavorite: data['is_favorite'] as bool?,
      );

  static HeartsArrayStruct? maybeFromMap(dynamic data) => data is Map
      ? HeartsArrayStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id_product': _idProduct,
        'is_favorite': _isFavorite,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id_product': serializeParam(
          _idProduct,
          ParamType.int,
        ),
        'is_favorite': serializeParam(
          _isFavorite,
          ParamType.bool,
        ),
      }.withoutNulls;

  static HeartsArrayStruct fromSerializableMap(Map<String, dynamic> data) =>
      HeartsArrayStruct(
        idProduct: deserializeParam(
          data['id_product'],
          ParamType.int,
          false,
        ),
        isFavorite: deserializeParam(
          data['is_favorite'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'HeartsArrayStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HeartsArrayStruct &&
        idProduct == other.idProduct &&
        isFavorite == other.isFavorite;
  }

  @override
  int get hashCode => const ListEquality().hash([idProduct, isFavorite]);
}

HeartsArrayStruct createHeartsArrayStruct({
  int? idProduct,
  bool? isFavorite,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    HeartsArrayStruct(
      idProduct: idProduct,
      isFavorite: isFavorite,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

HeartsArrayStruct? updateHeartsArrayStruct(
  HeartsArrayStruct? heartsArray, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    heartsArray
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addHeartsArrayStructData(
  Map<String, dynamic> firestoreData,
  HeartsArrayStruct? heartsArray,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (heartsArray == null) {
    return;
  }
  if (heartsArray.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && heartsArray.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final heartsArrayData =
      getHeartsArrayFirestoreData(heartsArray, forFieldValue);
  final nestedData =
      heartsArrayData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = heartsArray.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getHeartsArrayFirestoreData(
  HeartsArrayStruct? heartsArray, [
  bool forFieldValue = false,
]) {
  if (heartsArray == null) {
    return {};
  }
  final firestoreData = mapToFirestore(heartsArray.toMap());

  // Add any Firestore field values
  heartsArray.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getHeartsArrayListFirestoreData(
  List<HeartsArrayStruct>? heartsArrays,
) =>
    heartsArrays?.map((e) => getHeartsArrayFirestoreData(e, true)).toList() ??
    [];
