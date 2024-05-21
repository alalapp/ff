import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BasketRecord extends FirestoreRecord {
  BasketRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "xml_id_product" field.
  String? _xmlIdProduct;
  String get xmlIdProduct => _xmlIdProduct ?? '';
  bool hasXmlIdProduct() => _xmlIdProduct != null;

  // "xml_id_variant" field.
  String? _xmlIdVariant;
  String get xmlIdVariant => _xmlIdVariant ?? '';
  bool hasXmlIdVariant() => _xmlIdVariant != null;

  // "id_product" field.
  int? _idProduct;
  int get idProduct => _idProduct ?? 0;
  bool hasIdProduct() => _idProduct != null;

  // "id_variant" field.
  int? _idVariant;
  int get idVariant => _idVariant ?? 0;
  bool hasIdVariant() => _idVariant != null;

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "variant_name" field.
  String? _variantName;
  String get variantName => _variantName ?? '';
  bool hasVariantName() => _variantName != null;

  // "volume_full" field.
  String? _volumeFull;
  String get volumeFull => _volumeFull ?? '';
  bool hasVolumeFull() => _volumeFull != null;

  // "volume_cut" field.
  String? _volumeCut;
  String get volumeCut => _volumeCut ?? '';
  bool hasVolumeCut() => _volumeCut != null;

  // "color_name" field.
  String? _colorName;
  String get colorName => _colorName ?? '';
  bool hasColorName() => _colorName != null;

  // "kolvo" field.
  int? _kolvo;
  int get kolvo => _kolvo ?? 0;
  bool hasKolvo() => _kolvo != null;

  // "r_price" field.
  int? _rPrice;
  int get rPrice => _rPrice ?? 0;
  bool hasRPrice() => _rPrice != null;

  // "user_price" field.
  int? _userPrice;
  int get userPrice => _userPrice ?? 0;
  bool hasUserPrice() => _userPrice != null;

  // "discount" field.
  int? _discount;
  int get discount => _discount ?? 0;
  bool hasDiscount() => _discount != null;

  // "discount_sum" field.
  int? _discountSum;
  int get discountSum => _discountSum ?? 0;
  bool hasDiscountSum() => _discountSum != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "basket_main_reference" field.
  DocumentReference? _basketMainReference;
  DocumentReference? get basketMainReference => _basketMainReference;
  bool hasBasketMainReference() => _basketMainReference != null;

  // "color" field.
  Color? _color;
  Color? get color => _color;
  bool hasColor() => _color != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _xmlIdProduct = snapshotData['xml_id_product'] as String?;
    _xmlIdVariant = snapshotData['xml_id_variant'] as String?;
    _idProduct = castToType<int>(snapshotData['id_product']);
    _idVariant = castToType<int>(snapshotData['id_variant']);
    _productName = snapshotData['product_name'] as String?;
    _variantName = snapshotData['variant_name'] as String?;
    _volumeFull = snapshotData['volume_full'] as String?;
    _volumeCut = snapshotData['volume_cut'] as String?;
    _colorName = snapshotData['color_name'] as String?;
    _kolvo = castToType<int>(snapshotData['kolvo']);
    _rPrice = castToType<int>(snapshotData['r_price']);
    _userPrice = castToType<int>(snapshotData['user_price']);
    _discount = castToType<int>(snapshotData['discount']);
    _discountSum = castToType<int>(snapshotData['discount_sum']);
    _image = snapshotData['image'] as String?;
    _basketMainReference =
        snapshotData['basket_main_reference'] as DocumentReference?;
    _color = getSchemaColor(snapshotData['color']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('basket')
          : FirebaseFirestore.instance.collectionGroup('basket');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('basket').doc(id);

  static Stream<BasketRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BasketRecord.fromSnapshot(s));

  static Future<BasketRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BasketRecord.fromSnapshot(s));

  static BasketRecord fromSnapshot(DocumentSnapshot snapshot) => BasketRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BasketRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BasketRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BasketRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BasketRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBasketRecordData({
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
  DocumentReference? basketMainReference,
  Color? color,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'xml_id_product': xmlIdProduct,
      'xml_id_variant': xmlIdVariant,
      'id_product': idProduct,
      'id_variant': idVariant,
      'product_name': productName,
      'variant_name': variantName,
      'volume_full': volumeFull,
      'volume_cut': volumeCut,
      'color_name': colorName,
      'kolvo': kolvo,
      'r_price': rPrice,
      'user_price': userPrice,
      'discount': discount,
      'discount_sum': discountSum,
      'image': image,
      'basket_main_reference': basketMainReference,
      'color': color,
    }.withoutNulls,
  );

  return firestoreData;
}

class BasketRecordDocumentEquality implements Equality<BasketRecord> {
  const BasketRecordDocumentEquality();

  @override
  bool equals(BasketRecord? e1, BasketRecord? e2) {
    return e1?.xmlIdProduct == e2?.xmlIdProduct &&
        e1?.xmlIdVariant == e2?.xmlIdVariant &&
        e1?.idProduct == e2?.idProduct &&
        e1?.idVariant == e2?.idVariant &&
        e1?.productName == e2?.productName &&
        e1?.variantName == e2?.variantName &&
        e1?.volumeFull == e2?.volumeFull &&
        e1?.volumeCut == e2?.volumeCut &&
        e1?.colorName == e2?.colorName &&
        e1?.kolvo == e2?.kolvo &&
        e1?.rPrice == e2?.rPrice &&
        e1?.userPrice == e2?.userPrice &&
        e1?.discount == e2?.discount &&
        e1?.discountSum == e2?.discountSum &&
        e1?.image == e2?.image &&
        e1?.basketMainReference == e2?.basketMainReference &&
        e1?.color == e2?.color;
  }

  @override
  int hash(BasketRecord? e) => const ListEquality().hash([
        e?.xmlIdProduct,
        e?.xmlIdVariant,
        e?.idProduct,
        e?.idVariant,
        e?.productName,
        e?.variantName,
        e?.volumeFull,
        e?.volumeCut,
        e?.colorName,
        e?.kolvo,
        e?.rPrice,
        e?.userPrice,
        e?.discount,
        e?.discountSum,
        e?.image,
        e?.basketMainReference,
        e?.color
      ]);

  @override
  bool isValidKey(Object? o) => o is BasketRecord;
}
