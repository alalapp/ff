// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BasketStruct extends FFFirebaseStruct {
  BasketStruct({
    String? xmlIdProduct,
    String? xmlIdVariant,
    int? idProduct,
    int? idVariant,
    String? productName,
    String? variantName,
    String? volumeFull,
    String? volumeCut,
    String? colorName,
    int? kolvo,
    int? rPrice,
    int? userPrice,
    int? discount,
    int? discountSum,
    String? image,
    Color? color,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _xmlIdProduct = xmlIdProduct,
        _xmlIdVariant = xmlIdVariant,
        _idProduct = idProduct,
        _idVariant = idVariant,
        _productName = productName,
        _variantName = variantName,
        _volumeFull = volumeFull,
        _volumeCut = volumeCut,
        _colorName = colorName,
        _kolvo = kolvo,
        _rPrice = rPrice,
        _userPrice = userPrice,
        _discount = discount,
        _discountSum = discountSum,
        _image = image,
        _color = color,
        super(firestoreUtilData);

  // "xml_id_product" field.
  String? _xmlIdProduct;
  String get xmlIdProduct => _xmlIdProduct ?? '';
  set xmlIdProduct(String? val) => _xmlIdProduct = val;
  bool hasXmlIdProduct() => _xmlIdProduct != null;

  // "xml_id_variant" field.
  String? _xmlIdVariant;
  String get xmlIdVariant => _xmlIdVariant ?? '';
  set xmlIdVariant(String? val) => _xmlIdVariant = val;
  bool hasXmlIdVariant() => _xmlIdVariant != null;

  // "id_product" field.
  int? _idProduct;
  int get idProduct => _idProduct ?? 0;
  set idProduct(int? val) => _idProduct = val;
  void incrementIdProduct(int amount) => _idProduct = idProduct + amount;
  bool hasIdProduct() => _idProduct != null;

  // "id_variant" field.
  int? _idVariant;
  int get idVariant => _idVariant ?? 0;
  set idVariant(int? val) => _idVariant = val;
  void incrementIdVariant(int amount) => _idVariant = idVariant + amount;
  bool hasIdVariant() => _idVariant != null;

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  set productName(String? val) => _productName = val;
  bool hasProductName() => _productName != null;

  // "variant_name" field.
  String? _variantName;
  String get variantName => _variantName ?? '';
  set variantName(String? val) => _variantName = val;
  bool hasVariantName() => _variantName != null;

  // "volume_full" field.
  String? _volumeFull;
  String get volumeFull => _volumeFull ?? '';
  set volumeFull(String? val) => _volumeFull = val;
  bool hasVolumeFull() => _volumeFull != null;

  // "volume_cut" field.
  String? _volumeCut;
  String get volumeCut => _volumeCut ?? '';
  set volumeCut(String? val) => _volumeCut = val;
  bool hasVolumeCut() => _volumeCut != null;

  // "color_name" field.
  String? _colorName;
  String get colorName => _colorName ?? '';
  set colorName(String? val) => _colorName = val;
  bool hasColorName() => _colorName != null;

  // "kolvo" field.
  int? _kolvo;
  int get kolvo => _kolvo ?? 0;
  set kolvo(int? val) => _kolvo = val;
  void incrementKolvo(int amount) => _kolvo = kolvo + amount;
  bool hasKolvo() => _kolvo != null;

  // "r_price" field.
  int? _rPrice;
  int get rPrice => _rPrice ?? 0;
  set rPrice(int? val) => _rPrice = val;
  void incrementRPrice(int amount) => _rPrice = rPrice + amount;
  bool hasRPrice() => _rPrice != null;

  // "user_price" field.
  int? _userPrice;
  int get userPrice => _userPrice ?? 0;
  set userPrice(int? val) => _userPrice = val;
  void incrementUserPrice(int amount) => _userPrice = userPrice + amount;
  bool hasUserPrice() => _userPrice != null;

  // "discount" field.
  int? _discount;
  int get discount => _discount ?? 0;
  set discount(int? val) => _discount = val;
  void incrementDiscount(int amount) => _discount = discount + amount;
  bool hasDiscount() => _discount != null;

  // "discount_sum" field.
  int? _discountSum;
  int get discountSum => _discountSum ?? 0;
  set discountSum(int? val) => _discountSum = val;
  void incrementDiscountSum(int amount) => _discountSum = discountSum + amount;
  bool hasDiscountSum() => _discountSum != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  // "color" field.
  Color? _color;
  Color? get color => _color;
  set color(Color? val) => _color = val;
  bool hasColor() => _color != null;

  static BasketStruct fromMap(Map<String, dynamic> data) => BasketStruct(
        xmlIdProduct: data['xml_id_product'] as String?,
        xmlIdVariant: data['xml_id_variant'] as String?,
        idProduct: castToType<int>(data['id_product']),
        idVariant: castToType<int>(data['id_variant']),
        productName: data['product_name'] as String?,
        variantName: data['variant_name'] as String?,
        volumeFull: data['volume_full'] as String?,
        volumeCut: data['volume_cut'] as String?,
        colorName: data['color_name'] as String?,
        kolvo: castToType<int>(data['kolvo']),
        rPrice: castToType<int>(data['r_price']),
        userPrice: castToType<int>(data['user_price']),
        discount: castToType<int>(data['discount']),
        discountSum: castToType<int>(data['discount_sum']),
        image: data['image'] as String?,
        color: getSchemaColor(data['color']),
      );

  static BasketStruct? maybeFromMap(dynamic data) =>
      data is Map ? BasketStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'xml_id_product': _xmlIdProduct,
        'xml_id_variant': _xmlIdVariant,
        'id_product': _idProduct,
        'id_variant': _idVariant,
        'product_name': _productName,
        'variant_name': _variantName,
        'volume_full': _volumeFull,
        'volume_cut': _volumeCut,
        'color_name': _colorName,
        'kolvo': _kolvo,
        'r_price': _rPrice,
        'user_price': _userPrice,
        'discount': _discount,
        'discount_sum': _discountSum,
        'image': _image,
        'color': _color,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'xml_id_product': serializeParam(
          _xmlIdProduct,
          ParamType.String,
        ),
        'xml_id_variant': serializeParam(
          _xmlIdVariant,
          ParamType.String,
        ),
        'id_product': serializeParam(
          _idProduct,
          ParamType.int,
        ),
        'id_variant': serializeParam(
          _idVariant,
          ParamType.int,
        ),
        'product_name': serializeParam(
          _productName,
          ParamType.String,
        ),
        'variant_name': serializeParam(
          _variantName,
          ParamType.String,
        ),
        'volume_full': serializeParam(
          _volumeFull,
          ParamType.String,
        ),
        'volume_cut': serializeParam(
          _volumeCut,
          ParamType.String,
        ),
        'color_name': serializeParam(
          _colorName,
          ParamType.String,
        ),
        'kolvo': serializeParam(
          _kolvo,
          ParamType.int,
        ),
        'r_price': serializeParam(
          _rPrice,
          ParamType.int,
        ),
        'user_price': serializeParam(
          _userPrice,
          ParamType.int,
        ),
        'discount': serializeParam(
          _discount,
          ParamType.int,
        ),
        'discount_sum': serializeParam(
          _discountSum,
          ParamType.int,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'color': serializeParam(
          _color,
          ParamType.Color,
        ),
      }.withoutNulls;

  static BasketStruct fromSerializableMap(Map<String, dynamic> data) =>
      BasketStruct(
        xmlIdProduct: deserializeParam(
          data['xml_id_product'],
          ParamType.String,
          false,
        ),
        xmlIdVariant: deserializeParam(
          data['xml_id_variant'],
          ParamType.String,
          false,
        ),
        idProduct: deserializeParam(
          data['id_product'],
          ParamType.int,
          false,
        ),
        idVariant: deserializeParam(
          data['id_variant'],
          ParamType.int,
          false,
        ),
        productName: deserializeParam(
          data['product_name'],
          ParamType.String,
          false,
        ),
        variantName: deserializeParam(
          data['variant_name'],
          ParamType.String,
          false,
        ),
        volumeFull: deserializeParam(
          data['volume_full'],
          ParamType.String,
          false,
        ),
        volumeCut: deserializeParam(
          data['volume_cut'],
          ParamType.String,
          false,
        ),
        colorName: deserializeParam(
          data['color_name'],
          ParamType.String,
          false,
        ),
        kolvo: deserializeParam(
          data['kolvo'],
          ParamType.int,
          false,
        ),
        rPrice: deserializeParam(
          data['r_price'],
          ParamType.int,
          false,
        ),
        userPrice: deserializeParam(
          data['user_price'],
          ParamType.int,
          false,
        ),
        discount: deserializeParam(
          data['discount'],
          ParamType.int,
          false,
        ),
        discountSum: deserializeParam(
          data['discount_sum'],
          ParamType.int,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        color: deserializeParam(
          data['color'],
          ParamType.Color,
          false,
        ),
      );

  @override
  String toString() => 'BasketStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BasketStruct &&
        xmlIdProduct == other.xmlIdProduct &&
        xmlIdVariant == other.xmlIdVariant &&
        idProduct == other.idProduct &&
        idVariant == other.idVariant &&
        productName == other.productName &&
        variantName == other.variantName &&
        volumeFull == other.volumeFull &&
        volumeCut == other.volumeCut &&
        colorName == other.colorName &&
        kolvo == other.kolvo &&
        rPrice == other.rPrice &&
        userPrice == other.userPrice &&
        discount == other.discount &&
        discountSum == other.discountSum &&
        image == other.image &&
        color == other.color;
  }

  @override
  int get hashCode => const ListEquality().hash([
        xmlIdProduct,
        xmlIdVariant,
        idProduct,
        idVariant,
        productName,
        variantName,
        volumeFull,
        volumeCut,
        colorName,
        kolvo,
        rPrice,
        userPrice,
        discount,
        discountSum,
        image,
        color
      ]);
}

BasketStruct createBasketStruct({
  String? xmlIdProduct,
  String? xmlIdVariant,
  int? idProduct,
  int? idVariant,
  String? productName,
  String? variantName,
  String? volumeFull,
  String? volumeCut,
  String? colorName,
  int? kolvo,
  int? rPrice,
  int? userPrice,
  int? discount,
  int? discountSum,
  String? image,
  Color? color,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BasketStruct(
      xmlIdProduct: xmlIdProduct,
      xmlIdVariant: xmlIdVariant,
      idProduct: idProduct,
      idVariant: idVariant,
      productName: productName,
      variantName: variantName,
      volumeFull: volumeFull,
      volumeCut: volumeCut,
      colorName: colorName,
      kolvo: kolvo,
      rPrice: rPrice,
      userPrice: userPrice,
      discount: discount,
      discountSum: discountSum,
      image: image,
      color: color,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BasketStruct? updateBasketStruct(
  BasketStruct? basket, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    basket
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBasketStructData(
  Map<String, dynamic> firestoreData,
  BasketStruct? basket,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (basket == null) {
    return;
  }
  if (basket.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && basket.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final basketData = getBasketFirestoreData(basket, forFieldValue);
  final nestedData = basketData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = basket.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBasketFirestoreData(
  BasketStruct? basket, [
  bool forFieldValue = false,
]) {
  if (basket == null) {
    return {};
  }
  final firestoreData = mapToFirestore(basket.toMap());

  // Add any Firestore field values
  basket.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBasketListFirestoreData(
  List<BasketStruct>? baskets,
) =>
    baskets?.map((e) => getBasketFirestoreData(e, true)).toList() ?? [];
