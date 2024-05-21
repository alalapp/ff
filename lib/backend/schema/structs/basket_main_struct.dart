// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BasketMainStruct extends FFFirebaseStruct {
  BasketMainStruct({
    String? userIdFb,
    String? userIdSUL,
    String? cardIdSUL,
    int? kolProducts,
    int? total,
    int? totalDiscount,
    int? totalR,
    int? couponsSum,
    List<String>? couponsList,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _userIdFb = userIdFb,
        _userIdSUL = userIdSUL,
        _cardIdSUL = cardIdSUL,
        _kolProducts = kolProducts,
        _total = total,
        _totalDiscount = totalDiscount,
        _totalR = totalR,
        _couponsSum = couponsSum,
        _couponsList = couponsList,
        super(firestoreUtilData);

  // "user_id_fb" field.
  String? _userIdFb;
  String get userIdFb => _userIdFb ?? '';
  set userIdFb(String? val) => _userIdFb = val;
  bool hasUserIdFb() => _userIdFb != null;

  // "user_id_SUL" field.
  String? _userIdSUL;
  String get userIdSUL => _userIdSUL ?? '';
  set userIdSUL(String? val) => _userIdSUL = val;
  bool hasUserIdSUL() => _userIdSUL != null;

  // "card_id_SUL" field.
  String? _cardIdSUL;
  String get cardIdSUL => _cardIdSUL ?? '';
  set cardIdSUL(String? val) => _cardIdSUL = val;
  bool hasCardIdSUL() => _cardIdSUL != null;

  // "kol_products" field.
  int? _kolProducts;
  int get kolProducts => _kolProducts ?? 0;
  set kolProducts(int? val) => _kolProducts = val;
  void incrementKolProducts(int amount) => _kolProducts = kolProducts + amount;
  bool hasKolProducts() => _kolProducts != null;

  // "total" field.
  int? _total;
  int get total => _total ?? 0;
  set total(int? val) => _total = val;
  void incrementTotal(int amount) => _total = total + amount;
  bool hasTotal() => _total != null;

  // "total_discount" field.
  int? _totalDiscount;
  int get totalDiscount => _totalDiscount ?? 0;
  set totalDiscount(int? val) => _totalDiscount = val;
  void incrementTotalDiscount(int amount) =>
      _totalDiscount = totalDiscount + amount;
  bool hasTotalDiscount() => _totalDiscount != null;

  // "total_r" field.
  int? _totalR;
  int get totalR => _totalR ?? 0;
  set totalR(int? val) => _totalR = val;
  void incrementTotalR(int amount) => _totalR = totalR + amount;
  bool hasTotalR() => _totalR != null;

  // "coupons_sum" field.
  int? _couponsSum;
  int get couponsSum => _couponsSum ?? 0;
  set couponsSum(int? val) => _couponsSum = val;
  void incrementCouponsSum(int amount) => _couponsSum = couponsSum + amount;
  bool hasCouponsSum() => _couponsSum != null;

  // "coupons_list" field.
  List<String>? _couponsList;
  List<String> get couponsList => _couponsList ?? const [];
  set couponsList(List<String>? val) => _couponsList = val;
  void updateCouponsList(Function(List<String>) updateFn) =>
      updateFn(_couponsList ??= []);
  bool hasCouponsList() => _couponsList != null;

  static BasketMainStruct fromMap(Map<String, dynamic> data) =>
      BasketMainStruct(
        userIdFb: data['user_id_fb'] as String?,
        userIdSUL: data['user_id_SUL'] as String?,
        cardIdSUL: data['card_id_SUL'] as String?,
        kolProducts: castToType<int>(data['kol_products']),
        total: castToType<int>(data['total']),
        totalDiscount: castToType<int>(data['total_discount']),
        totalR: castToType<int>(data['total_r']),
        couponsSum: castToType<int>(data['coupons_sum']),
        couponsList: getDataList(data['coupons_list']),
      );

  static BasketMainStruct? maybeFromMap(dynamic data) => data is Map
      ? BasketMainStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'user_id_fb': _userIdFb,
        'user_id_SUL': _userIdSUL,
        'card_id_SUL': _cardIdSUL,
        'kol_products': _kolProducts,
        'total': _total,
        'total_discount': _totalDiscount,
        'total_r': _totalR,
        'coupons_sum': _couponsSum,
        'coupons_list': _couponsList,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'user_id_fb': serializeParam(
          _userIdFb,
          ParamType.String,
        ),
        'user_id_SUL': serializeParam(
          _userIdSUL,
          ParamType.String,
        ),
        'card_id_SUL': serializeParam(
          _cardIdSUL,
          ParamType.String,
        ),
        'kol_products': serializeParam(
          _kolProducts,
          ParamType.int,
        ),
        'total': serializeParam(
          _total,
          ParamType.int,
        ),
        'total_discount': serializeParam(
          _totalDiscount,
          ParamType.int,
        ),
        'total_r': serializeParam(
          _totalR,
          ParamType.int,
        ),
        'coupons_sum': serializeParam(
          _couponsSum,
          ParamType.int,
        ),
        'coupons_list': serializeParam(
          _couponsList,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static BasketMainStruct fromSerializableMap(Map<String, dynamic> data) =>
      BasketMainStruct(
        userIdFb: deserializeParam(
          data['user_id_fb'],
          ParamType.String,
          false,
        ),
        userIdSUL: deserializeParam(
          data['user_id_SUL'],
          ParamType.String,
          false,
        ),
        cardIdSUL: deserializeParam(
          data['card_id_SUL'],
          ParamType.String,
          false,
        ),
        kolProducts: deserializeParam(
          data['kol_products'],
          ParamType.int,
          false,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.int,
          false,
        ),
        totalDiscount: deserializeParam(
          data['total_discount'],
          ParamType.int,
          false,
        ),
        totalR: deserializeParam(
          data['total_r'],
          ParamType.int,
          false,
        ),
        couponsSum: deserializeParam(
          data['coupons_sum'],
          ParamType.int,
          false,
        ),
        couponsList: deserializeParam<String>(
          data['coupons_list'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'BasketMainStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is BasketMainStruct &&
        userIdFb == other.userIdFb &&
        userIdSUL == other.userIdSUL &&
        cardIdSUL == other.cardIdSUL &&
        kolProducts == other.kolProducts &&
        total == other.total &&
        totalDiscount == other.totalDiscount &&
        totalR == other.totalR &&
        couponsSum == other.couponsSum &&
        listEquality.equals(couponsList, other.couponsList);
  }

  @override
  int get hashCode => const ListEquality().hash([
        userIdFb,
        userIdSUL,
        cardIdSUL,
        kolProducts,
        total,
        totalDiscount,
        totalR,
        couponsSum,
        couponsList
      ]);
}

BasketMainStruct createBasketMainStruct({
  String? userIdFb,
  String? userIdSUL,
  String? cardIdSUL,
  int? kolProducts,
  int? total,
  int? totalDiscount,
  int? totalR,
  int? couponsSum,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BasketMainStruct(
      userIdFb: userIdFb,
      userIdSUL: userIdSUL,
      cardIdSUL: cardIdSUL,
      kolProducts: kolProducts,
      total: total,
      totalDiscount: totalDiscount,
      totalR: totalR,
      couponsSum: couponsSum,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BasketMainStruct? updateBasketMainStruct(
  BasketMainStruct? basketMain, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    basketMain
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBasketMainStructData(
  Map<String, dynamic> firestoreData,
  BasketMainStruct? basketMain,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (basketMain == null) {
    return;
  }
  if (basketMain.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && basketMain.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final basketMainData = getBasketMainFirestoreData(basketMain, forFieldValue);
  final nestedData = basketMainData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = basketMain.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBasketMainFirestoreData(
  BasketMainStruct? basketMain, [
  bool forFieldValue = false,
]) {
  if (basketMain == null) {
    return {};
  }
  final firestoreData = mapToFirestore(basketMain.toMap());

  // Add any Firestore field values
  basketMain.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBasketMainListFirestoreData(
  List<BasketMainStruct>? basketMains,
) =>
    basketMains?.map((e) => getBasketMainFirestoreData(e, true)).toList() ?? [];
