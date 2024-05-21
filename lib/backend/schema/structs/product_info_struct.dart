// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductInfoStruct extends FFFirebaseStruct {
  ProductInfoStruct({
    int? productID,
    String? catID,
    String? subcatListIDs,
    String? name,
    String? lowName,
    String? brand,
    String? lowBrand,
    int? brandID,
    String? typeProduct,
    String? gender,
    String? country,
    String? family,
    String? topNotes,
    String? heartNotes,
    String? baseNotes,
    String? notes,
    String? parfumer,
    String? collectionName,
    String? year,
    String? description,
    String? previewPicture,
    String? available,
    String? newType,
    String? hitType,
    String? recType,
    String? specCategory,
    bool? iSlike,
    bool? iSbasket,
    int? iPriceMain,
    int? rPriceMain,
    int? minPrice,
    int? specPrice,
    int? blackPrice,
    int? goldPrice,
    int? infinityPrice,
    int? vipPrice,
    String? discountType,
    String? discountName,
    String? discountValue,
    String? xmlId,
    bool? hasVariants,
    List<OfferInfoStruct>? offers,
    String? categType,
    int? minPriceBlack,
    int? minPriceGold,
    int? minPriceInfinity,
    int? minPriceVip,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _productID = productID,
        _catID = catID,
        _subcatListIDs = subcatListIDs,
        _name = name,
        _lowName = lowName,
        _brand = brand,
        _lowBrand = lowBrand,
        _brandID = brandID,
        _typeProduct = typeProduct,
        _gender = gender,
        _country = country,
        _family = family,
        _topNotes = topNotes,
        _heartNotes = heartNotes,
        _baseNotes = baseNotes,
        _notes = notes,
        _parfumer = parfumer,
        _collectionName = collectionName,
        _year = year,
        _description = description,
        _previewPicture = previewPicture,
        _available = available,
        _newType = newType,
        _hitType = hitType,
        _recType = recType,
        _specCategory = specCategory,
        _iSlike = iSlike,
        _iSbasket = iSbasket,
        _iPriceMain = iPriceMain,
        _rPriceMain = rPriceMain,
        _minPrice = minPrice,
        _specPrice = specPrice,
        _blackPrice = blackPrice,
        _goldPrice = goldPrice,
        _infinityPrice = infinityPrice,
        _vipPrice = vipPrice,
        _discountType = discountType,
        _discountName = discountName,
        _discountValue = discountValue,
        _xmlId = xmlId,
        _hasVariants = hasVariants,
        _offers = offers,
        _categType = categType,
        _minPriceBlack = minPriceBlack,
        _minPriceGold = minPriceGold,
        _minPriceInfinity = minPriceInfinity,
        _minPriceVip = minPriceVip,
        super(firestoreUtilData);

  // "productID" field.
  int? _productID;
  int get productID => _productID ?? 0;
  set productID(int? val) => _productID = val;
  void incrementProductID(int amount) => _productID = productID + amount;
  bool hasProductID() => _productID != null;

  // "catID" field.
  String? _catID;
  String get catID => _catID ?? '';
  set catID(String? val) => _catID = val;
  bool hasCatID() => _catID != null;

  // "subcatListIDs" field.
  String? _subcatListIDs;
  String get subcatListIDs => _subcatListIDs ?? '';
  set subcatListIDs(String? val) => _subcatListIDs = val;
  bool hasSubcatListIDs() => _subcatListIDs != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "lowName" field.
  String? _lowName;
  String get lowName => _lowName ?? '';
  set lowName(String? val) => _lowName = val;
  bool hasLowName() => _lowName != null;

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  set brand(String? val) => _brand = val;
  bool hasBrand() => _brand != null;

  // "lowBrand" field.
  String? _lowBrand;
  String get lowBrand => _lowBrand ?? '';
  set lowBrand(String? val) => _lowBrand = val;
  bool hasLowBrand() => _lowBrand != null;

  // "brandID" field.
  int? _brandID;
  int get brandID => _brandID ?? 0;
  set brandID(int? val) => _brandID = val;
  void incrementBrandID(int amount) => _brandID = brandID + amount;
  bool hasBrandID() => _brandID != null;

  // "typeProduct" field.
  String? _typeProduct;
  String get typeProduct => _typeProduct ?? '';
  set typeProduct(String? val) => _typeProduct = val;
  bool hasTypeProduct() => _typeProduct != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;
  bool hasGender() => _gender != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;
  bool hasCountry() => _country != null;

  // "family" field.
  String? _family;
  String get family => _family ?? '';
  set family(String? val) => _family = val;
  bool hasFamily() => _family != null;

  // "topNotes" field.
  String? _topNotes;
  String get topNotes => _topNotes ?? '';
  set topNotes(String? val) => _topNotes = val;
  bool hasTopNotes() => _topNotes != null;

  // "heartNotes" field.
  String? _heartNotes;
  String get heartNotes => _heartNotes ?? '';
  set heartNotes(String? val) => _heartNotes = val;
  bool hasHeartNotes() => _heartNotes != null;

  // "baseNotes" field.
  String? _baseNotes;
  String get baseNotes => _baseNotes ?? '';
  set baseNotes(String? val) => _baseNotes = val;
  bool hasBaseNotes() => _baseNotes != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  set notes(String? val) => _notes = val;
  bool hasNotes() => _notes != null;

  // "parfumer" field.
  String? _parfumer;
  String get parfumer => _parfumer ?? '';
  set parfumer(String? val) => _parfumer = val;
  bool hasParfumer() => _parfumer != null;

  // "collectionName" field.
  String? _collectionName;
  String get collectionName => _collectionName ?? '';
  set collectionName(String? val) => _collectionName = val;
  bool hasCollectionName() => _collectionName != null;

  // "year" field.
  String? _year;
  String get year => _year ?? '';
  set year(String? val) => _year = val;
  bool hasYear() => _year != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "previewPicture" field.
  String? _previewPicture;
  String get previewPicture => _previewPicture ?? '';
  set previewPicture(String? val) => _previewPicture = val;
  bool hasPreviewPicture() => _previewPicture != null;

  // "available" field.
  String? _available;
  String get available => _available ?? '';
  set available(String? val) => _available = val;
  bool hasAvailable() => _available != null;

  // "newType" field.
  String? _newType;
  String get newType => _newType ?? '';
  set newType(String? val) => _newType = val;
  bool hasNewType() => _newType != null;

  // "hitType" field.
  String? _hitType;
  String get hitType => _hitType ?? '';
  set hitType(String? val) => _hitType = val;
  bool hasHitType() => _hitType != null;

  // "recType" field.
  String? _recType;
  String get recType => _recType ?? '';
  set recType(String? val) => _recType = val;
  bool hasRecType() => _recType != null;

  // "specCategory" field.
  String? _specCategory;
  String get specCategory => _specCategory ?? '';
  set specCategory(String? val) => _specCategory = val;
  bool hasSpecCategory() => _specCategory != null;

  // "ISlike" field.
  bool? _iSlike;
  bool get iSlike => _iSlike ?? false;
  set iSlike(bool? val) => _iSlike = val;
  bool hasISlike() => _iSlike != null;

  // "ISbasket" field.
  bool? _iSbasket;
  bool get iSbasket => _iSbasket ?? false;
  set iSbasket(bool? val) => _iSbasket = val;
  bool hasISbasket() => _iSbasket != null;

  // "iPriceMain" field.
  int? _iPriceMain;
  int get iPriceMain => _iPriceMain ?? 0;
  set iPriceMain(int? val) => _iPriceMain = val;
  void incrementIPriceMain(int amount) => _iPriceMain = iPriceMain + amount;
  bool hasIPriceMain() => _iPriceMain != null;

  // "rPriceMain" field.
  int? _rPriceMain;
  int get rPriceMain => _rPriceMain ?? 0;
  set rPriceMain(int? val) => _rPriceMain = val;
  void incrementRPriceMain(int amount) => _rPriceMain = rPriceMain + amount;
  bool hasRPriceMain() => _rPriceMain != null;

  // "minPrice" field.
  int? _minPrice;
  int get minPrice => _minPrice ?? 0;
  set minPrice(int? val) => _minPrice = val;
  void incrementMinPrice(int amount) => _minPrice = minPrice + amount;
  bool hasMinPrice() => _minPrice != null;

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

  // "discountType" field.
  String? _discountType;
  String get discountType => _discountType ?? '';
  set discountType(String? val) => _discountType = val;
  bool hasDiscountType() => _discountType != null;

  // "discountName" field.
  String? _discountName;
  String get discountName => _discountName ?? '';
  set discountName(String? val) => _discountName = val;
  bool hasDiscountName() => _discountName != null;

  // "discountValue" field.
  String? _discountValue;
  String get discountValue => _discountValue ?? '';
  set discountValue(String? val) => _discountValue = val;
  bool hasDiscountValue() => _discountValue != null;

  // "xml_id" field.
  String? _xmlId;
  String get xmlId => _xmlId ?? '';
  set xmlId(String? val) => _xmlId = val;
  bool hasXmlId() => _xmlId != null;

  // "hasVariants" field.
  bool? _hasVariants;
  bool get hasVariants => _hasVariants ?? false;
  set hasVariants(bool? val) => _hasVariants = val;
  bool hasHasVariants() => _hasVariants != null;

  // "offers" field.
  List<OfferInfoStruct>? _offers;
  List<OfferInfoStruct> get offers => _offers ?? const [];
  set offers(List<OfferInfoStruct>? val) => _offers = val;
  void updateOffers(Function(List<OfferInfoStruct>) updateFn) =>
      updateFn(_offers ??= []);
  bool hasOffers() => _offers != null;

  // "categType" field.
  String? _categType;
  String get categType => _categType ?? '';
  set categType(String? val) => _categType = val;
  bool hasCategType() => _categType != null;

  // "min_price_black" field.
  int? _minPriceBlack;
  int get minPriceBlack => _minPriceBlack ?? 0;
  set minPriceBlack(int? val) => _minPriceBlack = val;
  void incrementMinPriceBlack(int amount) =>
      _minPriceBlack = minPriceBlack + amount;
  bool hasMinPriceBlack() => _minPriceBlack != null;

  // "min_price_gold" field.
  int? _minPriceGold;
  int get minPriceGold => _minPriceGold ?? 0;
  set minPriceGold(int? val) => _minPriceGold = val;
  void incrementMinPriceGold(int amount) =>
      _minPriceGold = minPriceGold + amount;
  bool hasMinPriceGold() => _minPriceGold != null;

  // "min_price_infinity" field.
  int? _minPriceInfinity;
  int get minPriceInfinity => _minPriceInfinity ?? 0;
  set minPriceInfinity(int? val) => _minPriceInfinity = val;
  void incrementMinPriceInfinity(int amount) =>
      _minPriceInfinity = minPriceInfinity + amount;
  bool hasMinPriceInfinity() => _minPriceInfinity != null;

  // "min_price_vip" field.
  int? _minPriceVip;
  int get minPriceVip => _minPriceVip ?? 0;
  set minPriceVip(int? val) => _minPriceVip = val;
  void incrementMinPriceVip(int amount) => _minPriceVip = minPriceVip + amount;
  bool hasMinPriceVip() => _minPriceVip != null;

  static ProductInfoStruct fromMap(Map<String, dynamic> data) =>
      ProductInfoStruct(
        productID: castToType<int>(data['productID']),
        catID: data['catID'] as String?,
        subcatListIDs: data['subcatListIDs'] as String?,
        name: data['name'] as String?,
        lowName: data['lowName'] as String?,
        brand: data['brand'] as String?,
        lowBrand: data['lowBrand'] as String?,
        brandID: castToType<int>(data['brandID']),
        typeProduct: data['typeProduct'] as String?,
        gender: data['gender'] as String?,
        country: data['country'] as String?,
        family: data['family'] as String?,
        topNotes: data['topNotes'] as String?,
        heartNotes: data['heartNotes'] as String?,
        baseNotes: data['baseNotes'] as String?,
        notes: data['notes'] as String?,
        parfumer: data['parfumer'] as String?,
        collectionName: data['collectionName'] as String?,
        year: data['year'] as String?,
        description: data['description'] as String?,
        previewPicture: data['previewPicture'] as String?,
        available: data['available'] as String?,
        newType: data['newType'] as String?,
        hitType: data['hitType'] as String?,
        recType: data['recType'] as String?,
        specCategory: data['specCategory'] as String?,
        iSlike: data['ISlike'] as bool?,
        iSbasket: data['ISbasket'] as bool?,
        iPriceMain: castToType<int>(data['iPriceMain']),
        rPriceMain: castToType<int>(data['rPriceMain']),
        minPrice: castToType<int>(data['minPrice']),
        specPrice: castToType<int>(data['specPrice']),
        blackPrice: castToType<int>(data['blackPrice']),
        goldPrice: castToType<int>(data['goldPrice']),
        infinityPrice: castToType<int>(data['infinityPrice']),
        vipPrice: castToType<int>(data['vipPrice']),
        discountType: data['discountType'] as String?,
        discountName: data['discountName'] as String?,
        discountValue: data['discountValue'] as String?,
        xmlId: data['xml_id'] as String?,
        hasVariants: data['hasVariants'] as bool?,
        offers: getStructList(
          data['offers'],
          OfferInfoStruct.fromMap,
        ),
        categType: data['categType'] as String?,
        minPriceBlack: castToType<int>(data['min_price_black']),
        minPriceGold: castToType<int>(data['min_price_gold']),
        minPriceInfinity: castToType<int>(data['min_price_infinity']),
        minPriceVip: castToType<int>(data['min_price_vip']),
      );

  static ProductInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'productID': _productID,
        'catID': _catID,
        'subcatListIDs': _subcatListIDs,
        'name': _name,
        'lowName': _lowName,
        'brand': _brand,
        'lowBrand': _lowBrand,
        'brandID': _brandID,
        'typeProduct': _typeProduct,
        'gender': _gender,
        'country': _country,
        'family': _family,
        'topNotes': _topNotes,
        'heartNotes': _heartNotes,
        'baseNotes': _baseNotes,
        'notes': _notes,
        'parfumer': _parfumer,
        'collectionName': _collectionName,
        'year': _year,
        'description': _description,
        'previewPicture': _previewPicture,
        'available': _available,
        'newType': _newType,
        'hitType': _hitType,
        'recType': _recType,
        'specCategory': _specCategory,
        'ISlike': _iSlike,
        'ISbasket': _iSbasket,
        'iPriceMain': _iPriceMain,
        'rPriceMain': _rPriceMain,
        'minPrice': _minPrice,
        'specPrice': _specPrice,
        'blackPrice': _blackPrice,
        'goldPrice': _goldPrice,
        'infinityPrice': _infinityPrice,
        'vipPrice': _vipPrice,
        'discountType': _discountType,
        'discountName': _discountName,
        'discountValue': _discountValue,
        'xml_id': _xmlId,
        'hasVariants': _hasVariants,
        'offers': _offers?.map((e) => e.toMap()).toList(),
        'categType': _categType,
        'min_price_black': _minPriceBlack,
        'min_price_gold': _minPriceGold,
        'min_price_infinity': _minPriceInfinity,
        'min_price_vip': _minPriceVip,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'productID': serializeParam(
          _productID,
          ParamType.int,
        ),
        'catID': serializeParam(
          _catID,
          ParamType.String,
        ),
        'subcatListIDs': serializeParam(
          _subcatListIDs,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'lowName': serializeParam(
          _lowName,
          ParamType.String,
        ),
        'brand': serializeParam(
          _brand,
          ParamType.String,
        ),
        'lowBrand': serializeParam(
          _lowBrand,
          ParamType.String,
        ),
        'brandID': serializeParam(
          _brandID,
          ParamType.int,
        ),
        'typeProduct': serializeParam(
          _typeProduct,
          ParamType.String,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.String,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'family': serializeParam(
          _family,
          ParamType.String,
        ),
        'topNotes': serializeParam(
          _topNotes,
          ParamType.String,
        ),
        'heartNotes': serializeParam(
          _heartNotes,
          ParamType.String,
        ),
        'baseNotes': serializeParam(
          _baseNotes,
          ParamType.String,
        ),
        'notes': serializeParam(
          _notes,
          ParamType.String,
        ),
        'parfumer': serializeParam(
          _parfumer,
          ParamType.String,
        ),
        'collectionName': serializeParam(
          _collectionName,
          ParamType.String,
        ),
        'year': serializeParam(
          _year,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'previewPicture': serializeParam(
          _previewPicture,
          ParamType.String,
        ),
        'available': serializeParam(
          _available,
          ParamType.String,
        ),
        'newType': serializeParam(
          _newType,
          ParamType.String,
        ),
        'hitType': serializeParam(
          _hitType,
          ParamType.String,
        ),
        'recType': serializeParam(
          _recType,
          ParamType.String,
        ),
        'specCategory': serializeParam(
          _specCategory,
          ParamType.String,
        ),
        'ISlike': serializeParam(
          _iSlike,
          ParamType.bool,
        ),
        'ISbasket': serializeParam(
          _iSbasket,
          ParamType.bool,
        ),
        'iPriceMain': serializeParam(
          _iPriceMain,
          ParamType.int,
        ),
        'rPriceMain': serializeParam(
          _rPriceMain,
          ParamType.int,
        ),
        'minPrice': serializeParam(
          _minPrice,
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
        'discountType': serializeParam(
          _discountType,
          ParamType.String,
        ),
        'discountName': serializeParam(
          _discountName,
          ParamType.String,
        ),
        'discountValue': serializeParam(
          _discountValue,
          ParamType.String,
        ),
        'xml_id': serializeParam(
          _xmlId,
          ParamType.String,
        ),
        'hasVariants': serializeParam(
          _hasVariants,
          ParamType.bool,
        ),
        'offers': serializeParam(
          _offers,
          ParamType.DataStruct,
          true,
        ),
        'categType': serializeParam(
          _categType,
          ParamType.String,
        ),
        'min_price_black': serializeParam(
          _minPriceBlack,
          ParamType.int,
        ),
        'min_price_gold': serializeParam(
          _minPriceGold,
          ParamType.int,
        ),
        'min_price_infinity': serializeParam(
          _minPriceInfinity,
          ParamType.int,
        ),
        'min_price_vip': serializeParam(
          _minPriceVip,
          ParamType.int,
        ),
      }.withoutNulls;

  static ProductInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductInfoStruct(
        productID: deserializeParam(
          data['productID'],
          ParamType.int,
          false,
        ),
        catID: deserializeParam(
          data['catID'],
          ParamType.String,
          false,
        ),
        subcatListIDs: deserializeParam(
          data['subcatListIDs'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        lowName: deserializeParam(
          data['lowName'],
          ParamType.String,
          false,
        ),
        brand: deserializeParam(
          data['brand'],
          ParamType.String,
          false,
        ),
        lowBrand: deserializeParam(
          data['lowBrand'],
          ParamType.String,
          false,
        ),
        brandID: deserializeParam(
          data['brandID'],
          ParamType.int,
          false,
        ),
        typeProduct: deserializeParam(
          data['typeProduct'],
          ParamType.String,
          false,
        ),
        gender: deserializeParam(
          data['gender'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        family: deserializeParam(
          data['family'],
          ParamType.String,
          false,
        ),
        topNotes: deserializeParam(
          data['topNotes'],
          ParamType.String,
          false,
        ),
        heartNotes: deserializeParam(
          data['heartNotes'],
          ParamType.String,
          false,
        ),
        baseNotes: deserializeParam(
          data['baseNotes'],
          ParamType.String,
          false,
        ),
        notes: deserializeParam(
          data['notes'],
          ParamType.String,
          false,
        ),
        parfumer: deserializeParam(
          data['parfumer'],
          ParamType.String,
          false,
        ),
        collectionName: deserializeParam(
          data['collectionName'],
          ParamType.String,
          false,
        ),
        year: deserializeParam(
          data['year'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        previewPicture: deserializeParam(
          data['previewPicture'],
          ParamType.String,
          false,
        ),
        available: deserializeParam(
          data['available'],
          ParamType.String,
          false,
        ),
        newType: deserializeParam(
          data['newType'],
          ParamType.String,
          false,
        ),
        hitType: deserializeParam(
          data['hitType'],
          ParamType.String,
          false,
        ),
        recType: deserializeParam(
          data['recType'],
          ParamType.String,
          false,
        ),
        specCategory: deserializeParam(
          data['specCategory'],
          ParamType.String,
          false,
        ),
        iSlike: deserializeParam(
          data['ISlike'],
          ParamType.bool,
          false,
        ),
        iSbasket: deserializeParam(
          data['ISbasket'],
          ParamType.bool,
          false,
        ),
        iPriceMain: deserializeParam(
          data['iPriceMain'],
          ParamType.int,
          false,
        ),
        rPriceMain: deserializeParam(
          data['rPriceMain'],
          ParamType.int,
          false,
        ),
        minPrice: deserializeParam(
          data['minPrice'],
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
        discountType: deserializeParam(
          data['discountType'],
          ParamType.String,
          false,
        ),
        discountName: deserializeParam(
          data['discountName'],
          ParamType.String,
          false,
        ),
        discountValue: deserializeParam(
          data['discountValue'],
          ParamType.String,
          false,
        ),
        xmlId: deserializeParam(
          data['xml_id'],
          ParamType.String,
          false,
        ),
        hasVariants: deserializeParam(
          data['hasVariants'],
          ParamType.bool,
          false,
        ),
        offers: deserializeStructParam<OfferInfoStruct>(
          data['offers'],
          ParamType.DataStruct,
          true,
          structBuilder: OfferInfoStruct.fromSerializableMap,
        ),
        categType: deserializeParam(
          data['categType'],
          ParamType.String,
          false,
        ),
        minPriceBlack: deserializeParam(
          data['min_price_black'],
          ParamType.int,
          false,
        ),
        minPriceGold: deserializeParam(
          data['min_price_gold'],
          ParamType.int,
          false,
        ),
        minPriceInfinity: deserializeParam(
          data['min_price_infinity'],
          ParamType.int,
          false,
        ),
        minPriceVip: deserializeParam(
          data['min_price_vip'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ProductInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProductInfoStruct &&
        productID == other.productID &&
        catID == other.catID &&
        subcatListIDs == other.subcatListIDs &&
        name == other.name &&
        lowName == other.lowName &&
        brand == other.brand &&
        lowBrand == other.lowBrand &&
        brandID == other.brandID &&
        typeProduct == other.typeProduct &&
        gender == other.gender &&
        country == other.country &&
        family == other.family &&
        topNotes == other.topNotes &&
        heartNotes == other.heartNotes &&
        baseNotes == other.baseNotes &&
        notes == other.notes &&
        parfumer == other.parfumer &&
        collectionName == other.collectionName &&
        year == other.year &&
        description == other.description &&
        previewPicture == other.previewPicture &&
        available == other.available &&
        newType == other.newType &&
        hitType == other.hitType &&
        recType == other.recType &&
        specCategory == other.specCategory &&
        iSlike == other.iSlike &&
        iSbasket == other.iSbasket &&
        iPriceMain == other.iPriceMain &&
        rPriceMain == other.rPriceMain &&
        minPrice == other.minPrice &&
        specPrice == other.specPrice &&
        blackPrice == other.blackPrice &&
        goldPrice == other.goldPrice &&
        infinityPrice == other.infinityPrice &&
        vipPrice == other.vipPrice &&
        discountType == other.discountType &&
        discountName == other.discountName &&
        discountValue == other.discountValue &&
        xmlId == other.xmlId &&
        hasVariants == other.hasVariants &&
        listEquality.equals(offers, other.offers) &&
        categType == other.categType &&
        minPriceBlack == other.minPriceBlack &&
        minPriceGold == other.minPriceGold &&
        minPriceInfinity == other.minPriceInfinity &&
        minPriceVip == other.minPriceVip;
  }

  @override
  int get hashCode => const ListEquality().hash([
        productID,
        catID,
        subcatListIDs,
        name,
        lowName,
        brand,
        lowBrand,
        brandID,
        typeProduct,
        gender,
        country,
        family,
        topNotes,
        heartNotes,
        baseNotes,
        notes,
        parfumer,
        collectionName,
        year,
        description,
        previewPicture,
        available,
        newType,
        hitType,
        recType,
        specCategory,
        iSlike,
        iSbasket,
        iPriceMain,
        rPriceMain,
        minPrice,
        specPrice,
        blackPrice,
        goldPrice,
        infinityPrice,
        vipPrice,
        discountType,
        discountName,
        discountValue,
        xmlId,
        hasVariants,
        offers,
        categType,
        minPriceBlack,
        minPriceGold,
        minPriceInfinity,
        minPriceVip
      ]);
}

ProductInfoStruct createProductInfoStruct({
  int? productID,
  String? catID,
  String? subcatListIDs,
  String? name,
  String? lowName,
  String? brand,
  String? lowBrand,
  int? brandID,
  String? typeProduct,
  String? gender,
  String? country,
  String? family,
  String? topNotes,
  String? heartNotes,
  String? baseNotes,
  String? notes,
  String? parfumer,
  String? collectionName,
  String? year,
  String? description,
  String? previewPicture,
  String? available,
  String? newType,
  String? hitType,
  String? recType,
  String? specCategory,
  bool? iSlike,
  bool? iSbasket,
  int? iPriceMain,
  int? rPriceMain,
  int? minPrice,
  int? specPrice,
  int? blackPrice,
  int? goldPrice,
  int? infinityPrice,
  int? vipPrice,
  String? discountType,
  String? discountName,
  String? discountValue,
  String? xmlId,
  bool? hasVariants,
  String? categType,
  int? minPriceBlack,
  int? minPriceGold,
  int? minPriceInfinity,
  int? minPriceVip,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductInfoStruct(
      productID: productID,
      catID: catID,
      subcatListIDs: subcatListIDs,
      name: name,
      lowName: lowName,
      brand: brand,
      lowBrand: lowBrand,
      brandID: brandID,
      typeProduct: typeProduct,
      gender: gender,
      country: country,
      family: family,
      topNotes: topNotes,
      heartNotes: heartNotes,
      baseNotes: baseNotes,
      notes: notes,
      parfumer: parfumer,
      collectionName: collectionName,
      year: year,
      description: description,
      previewPicture: previewPicture,
      available: available,
      newType: newType,
      hitType: hitType,
      recType: recType,
      specCategory: specCategory,
      iSlike: iSlike,
      iSbasket: iSbasket,
      iPriceMain: iPriceMain,
      rPriceMain: rPriceMain,
      minPrice: minPrice,
      specPrice: specPrice,
      blackPrice: blackPrice,
      goldPrice: goldPrice,
      infinityPrice: infinityPrice,
      vipPrice: vipPrice,
      discountType: discountType,
      discountName: discountName,
      discountValue: discountValue,
      xmlId: xmlId,
      hasVariants: hasVariants,
      categType: categType,
      minPriceBlack: minPriceBlack,
      minPriceGold: minPriceGold,
      minPriceInfinity: minPriceInfinity,
      minPriceVip: minPriceVip,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductInfoStruct? updateProductInfoStruct(
  ProductInfoStruct? productInfo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    productInfo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductInfoStructData(
  Map<String, dynamic> firestoreData,
  ProductInfoStruct? productInfo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (productInfo == null) {
    return;
  }
  if (productInfo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && productInfo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productInfoData =
      getProductInfoFirestoreData(productInfo, forFieldValue);
  final nestedData =
      productInfoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = productInfo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductInfoFirestoreData(
  ProductInfoStruct? productInfo, [
  bool forFieldValue = false,
]) {
  if (productInfo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(productInfo.toMap());

  // Add any Firestore field values
  productInfo.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductInfoListFirestoreData(
  List<ProductInfoStruct>? productInfos,
) =>
    productInfos?.map((e) => getProductInfoFirestoreData(e, true)).toList() ??
    [];
