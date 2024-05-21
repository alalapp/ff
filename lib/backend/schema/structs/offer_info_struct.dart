// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OfferInfoStruct extends FFFirebaseStruct {
  OfferInfoStruct({
    int? id,
    String? name,
    String? volume,
    String? colorName,
    String? strihcode,
    String? referenceOffer,
    String? available,
    int? rPrice,
    int? iPrice,
    int? specPrice,
    int? blackPrice,
    int? goldPrice,
    int? infinityPrice,
    int? vipPrice,
    String? xmlIDOffer,
    String? color,
    String? discName,
    String? discType,
    String? discValue,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _volume = volume,
        _colorName = colorName,
        _strihcode = strihcode,
        _referenceOffer = referenceOffer,
        _available = available,
        _rPrice = rPrice,
        _iPrice = iPrice,
        _specPrice = specPrice,
        _blackPrice = blackPrice,
        _goldPrice = goldPrice,
        _infinityPrice = infinityPrice,
        _vipPrice = vipPrice,
        _xmlIDOffer = xmlIDOffer,
        _color = color,
        _discName = discName,
        _discType = discType,
        _discValue = discValue,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "volume" field.
  String? _volume;
  String get volume => _volume ?? '';
  set volume(String? val) => _volume = val;
  bool hasVolume() => _volume != null;

  // "colorName" field.
  String? _colorName;
  String get colorName => _colorName ?? '';
  set colorName(String? val) => _colorName = val;
  bool hasColorName() => _colorName != null;

  // "strihcode" field.
  String? _strihcode;
  String get strihcode => _strihcode ?? '';
  set strihcode(String? val) => _strihcode = val;
  bool hasStrihcode() => _strihcode != null;

  // "referenceOffer" field.
  String? _referenceOffer;
  String get referenceOffer => _referenceOffer ?? '';
  set referenceOffer(String? val) => _referenceOffer = val;
  bool hasReferenceOffer() => _referenceOffer != null;

  // "available" field.
  String? _available;
  String get available => _available ?? '';
  set available(String? val) => _available = val;
  bool hasAvailable() => _available != null;

  // "rPrice" field.
  int? _rPrice;
  int get rPrice => _rPrice ?? 0;
  set rPrice(int? val) => _rPrice = val;
  void incrementRPrice(int amount) => _rPrice = rPrice + amount;
  bool hasRPrice() => _rPrice != null;

  // "iPrice" field.
  int? _iPrice;
  int get iPrice => _iPrice ?? 0;
  set iPrice(int? val) => _iPrice = val;
  void incrementIPrice(int amount) => _iPrice = iPrice + amount;
  bool hasIPrice() => _iPrice != null;

  // "specPrice" field.
  int? _specPrice;
  int get specPrice => _specPrice ?? 0;
  set specPrice(int? val) => _specPrice = val;
  void incrementSpecPrice(int amount) => _specPrice = specPrice + amount;
  bool hasSpecPrice() => _specPrice != null;

  // "blackPrice" field.
  int? _blackPrice;
  int get blackPrice => _blackPrice ?? 0;
  set blackPrice(int? val) => _blackPrice = val;
  void incrementBlackPrice(int amount) => _blackPrice = blackPrice + amount;
  bool hasBlackPrice() => _blackPrice != null;

  // "goldPrice" field.
  int? _goldPrice;
  int get goldPrice => _goldPrice ?? 0;
  set goldPrice(int? val) => _goldPrice = val;
  void incrementGoldPrice(int amount) => _goldPrice = goldPrice + amount;
  bool hasGoldPrice() => _goldPrice != null;

  // "infinityPrice" field.
  int? _infinityPrice;
  int get infinityPrice => _infinityPrice ?? 0;
  set infinityPrice(int? val) => _infinityPrice = val;
  void incrementInfinityPrice(int amount) =>
      _infinityPrice = infinityPrice + amount;
  bool hasInfinityPrice() => _infinityPrice != null;

  // "vipPrice" field.
  int? _vipPrice;
  int get vipPrice => _vipPrice ?? 0;
  set vipPrice(int? val) => _vipPrice = val;
  void incrementVipPrice(int amount) => _vipPrice = vipPrice + amount;
  bool hasVipPrice() => _vipPrice != null;

  // "xmlIDOffer" field.
  String? _xmlIDOffer;
  String get xmlIDOffer => _xmlIDOffer ?? '';
  set xmlIDOffer(String? val) => _xmlIDOffer = val;
  bool hasXmlIDOffer() => _xmlIDOffer != null;

  // "color" field.
  String? _color;
  String get color => _color ?? '';
  set color(String? val) => _color = val;
  bool hasColor() => _color != null;

  // "disc_name" field.
  String? _discName;
  String get discName => _discName ?? '';
  set discName(String? val) => _discName = val;
  bool hasDiscName() => _discName != null;

  // "disc_type" field.
  String? _discType;
  String get discType => _discType ?? '';
  set discType(String? val) => _discType = val;
  bool hasDiscType() => _discType != null;

  // "disc_value" field.
  String? _discValue;
  String get discValue => _discValue ?? '';
  set discValue(String? val) => _discValue = val;
  bool hasDiscValue() => _discValue != null;

  static OfferInfoStruct fromMap(Map<String, dynamic> data) => OfferInfoStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        volume: data['volume'] as String?,
        colorName: data['colorName'] as String?,
        strihcode: data['strihcode'] as String?,
        referenceOffer: data['referenceOffer'] as String?,
        available: data['available'] as String?,
        rPrice: castToType<int>(data['rPrice']),
        iPrice: castToType<int>(data['iPrice']),
        specPrice: castToType<int>(data['specPrice']),
        blackPrice: castToType<int>(data['blackPrice']),
        goldPrice: castToType<int>(data['goldPrice']),
        infinityPrice: castToType<int>(data['infinityPrice']),
        vipPrice: castToType<int>(data['vipPrice']),
        xmlIDOffer: data['xmlIDOffer'] as String?,
        color: data['color'] as String?,
        discName: data['disc_name'] as String?,
        discType: data['disc_type'] as String?,
        discValue: data['disc_value'] as String?,
      );

  static OfferInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? OfferInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'volume': _volume,
        'colorName': _colorName,
        'strihcode': _strihcode,
        'referenceOffer': _referenceOffer,
        'available': _available,
        'rPrice': _rPrice,
        'iPrice': _iPrice,
        'specPrice': _specPrice,
        'blackPrice': _blackPrice,
        'goldPrice': _goldPrice,
        'infinityPrice': _infinityPrice,
        'vipPrice': _vipPrice,
        'xmlIDOffer': _xmlIDOffer,
        'color': _color,
        'disc_name': _discName,
        'disc_type': _discType,
        'disc_value': _discValue,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'volume': serializeParam(
          _volume,
          ParamType.String,
        ),
        'colorName': serializeParam(
          _colorName,
          ParamType.String,
        ),
        'strihcode': serializeParam(
          _strihcode,
          ParamType.String,
        ),
        'referenceOffer': serializeParam(
          _referenceOffer,
          ParamType.String,
        ),
        'available': serializeParam(
          _available,
          ParamType.String,
        ),
        'rPrice': serializeParam(
          _rPrice,
          ParamType.int,
        ),
        'iPrice': serializeParam(
          _iPrice,
          ParamType.int,
        ),
        'specPrice': serializeParam(
          _specPrice,
          ParamType.int,
        ),
        'blackPrice': serializeParam(
          _blackPrice,
          ParamType.int,
        ),
        'goldPrice': serializeParam(
          _goldPrice,
          ParamType.int,
        ),
        'infinityPrice': serializeParam(
          _infinityPrice,
          ParamType.int,
        ),
        'vipPrice': serializeParam(
          _vipPrice,
          ParamType.int,
        ),
        'xmlIDOffer': serializeParam(
          _xmlIDOffer,
          ParamType.String,
        ),
        'color': serializeParam(
          _color,
          ParamType.String,
        ),
        'disc_name': serializeParam(
          _discName,
          ParamType.String,
        ),
        'disc_type': serializeParam(
          _discType,
          ParamType.String,
        ),
        'disc_value': serializeParam(
          _discValue,
          ParamType.String,
        ),
      }.withoutNulls;

  static OfferInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      OfferInfoStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        volume: deserializeParam(
          data['volume'],
          ParamType.String,
          false,
        ),
        colorName: deserializeParam(
          data['colorName'],
          ParamType.String,
          false,
        ),
        strihcode: deserializeParam(
          data['strihcode'],
          ParamType.String,
          false,
        ),
        referenceOffer: deserializeParam(
          data['referenceOffer'],
          ParamType.String,
          false,
        ),
        available: deserializeParam(
          data['available'],
          ParamType.String,
          false,
        ),
        rPrice: deserializeParam(
          data['rPrice'],
          ParamType.int,
          false,
        ),
        iPrice: deserializeParam(
          data['iPrice'],
          ParamType.int,
          false,
        ),
        specPrice: deserializeParam(
          data['specPrice'],
          ParamType.int,
          false,
        ),
        blackPrice: deserializeParam(
          data['blackPrice'],
          ParamType.int,
          false,
        ),
        goldPrice: deserializeParam(
          data['goldPrice'],
          ParamType.int,
          false,
        ),
        infinityPrice: deserializeParam(
          data['infinityPrice'],
          ParamType.int,
          false,
        ),
        vipPrice: deserializeParam(
          data['vipPrice'],
          ParamType.int,
          false,
        ),
        xmlIDOffer: deserializeParam(
          data['xmlIDOffer'],
          ParamType.String,
          false,
        ),
        color: deserializeParam(
          data['color'],
          ParamType.String,
          false,
        ),
        discName: deserializeParam(
          data['disc_name'],
          ParamType.String,
          false,
        ),
        discType: deserializeParam(
          data['disc_type'],
          ParamType.String,
          false,
        ),
        discValue: deserializeParam(
          data['disc_value'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OfferInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OfferInfoStruct &&
        id == other.id &&
        name == other.name &&
        volume == other.volume &&
        colorName == other.colorName &&
        strihcode == other.strihcode &&
        referenceOffer == other.referenceOffer &&
        available == other.available &&
        rPrice == other.rPrice &&
        iPrice == other.iPrice &&
        specPrice == other.specPrice &&
        blackPrice == other.blackPrice &&
        goldPrice == other.goldPrice &&
        infinityPrice == other.infinityPrice &&
        vipPrice == other.vipPrice &&
        xmlIDOffer == other.xmlIDOffer &&
        color == other.color &&
        discName == other.discName &&
        discType == other.discType &&
        discValue == other.discValue;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        volume,
        colorName,
        strihcode,
        referenceOffer,
        available,
        rPrice,
        iPrice,
        specPrice,
        blackPrice,
        goldPrice,
        infinityPrice,
        vipPrice,
        xmlIDOffer,
        color,
        discName,
        discType,
        discValue
      ]);
}

OfferInfoStruct createOfferInfoStruct({
  int? id,
  String? name,
  String? volume,
  String? colorName,
  String? strihcode,
  String? referenceOffer,
  String? available,
  int? rPrice,
  int? iPrice,
  int? specPrice,
  int? blackPrice,
  int? goldPrice,
  int? infinityPrice,
  int? vipPrice,
  String? xmlIDOffer,
  String? color,
  String? discName,
  String? discType,
  String? discValue,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OfferInfoStruct(
      id: id,
      name: name,
      volume: volume,
      colorName: colorName,
      strihcode: strihcode,
      referenceOffer: referenceOffer,
      available: available,
      rPrice: rPrice,
      iPrice: iPrice,
      specPrice: specPrice,
      blackPrice: blackPrice,
      goldPrice: goldPrice,
      infinityPrice: infinityPrice,
      vipPrice: vipPrice,
      xmlIDOffer: xmlIDOffer,
      color: color,
      discName: discName,
      discType: discType,
      discValue: discValue,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OfferInfoStruct? updateOfferInfoStruct(
  OfferInfoStruct? offerInfo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    offerInfo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOfferInfoStructData(
  Map<String, dynamic> firestoreData,
  OfferInfoStruct? offerInfo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (offerInfo == null) {
    return;
  }
  if (offerInfo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && offerInfo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final offerInfoData = getOfferInfoFirestoreData(offerInfo, forFieldValue);
  final nestedData = offerInfoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = offerInfo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOfferInfoFirestoreData(
  OfferInfoStruct? offerInfo, [
  bool forFieldValue = false,
]) {
  if (offerInfo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(offerInfo.toMap());

  // Add any Firestore field values
  offerInfo.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOfferInfoListFirestoreData(
  List<OfferInfoStruct>? offerInfos,
) =>
    offerInfos?.map((e) => getOfferInfoFirestoreData(e, true)).toList() ?? [];
