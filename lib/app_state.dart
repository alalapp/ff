import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _basketstr = prefs.getString('ff_basketstr')?.ref ?? _basketstr;
    });
    _safeInit(() {
      _startbase = prefs.getDouble('ff_startbase') ?? _startbase;
    });
    _safeInit(() {
      _endbase = prefs.getDouble('ff_endbase') ?? _endbase;
    });
    _safeInit(() {
      _totalFilteredItems =
          prefs.getInt('ff_totalFilteredItems') ?? _totalFilteredItems;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_userProfile')) {
        try {
          final serializedData = prefs.getString('ff_userProfile') ?? '{}';
          _userProfile =
              UserProfileStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _code0 = 0;
  int get code0 => _code0;
  set code0(int value) {
    _code0 = value;
  }

  int _code110 = 110;
  int get code110 => _code110;
  set code110(int value) {
    _code110 = value;
  }

  int _code114 = 114;
  int get code114 => _code114;
  set code114(int value) {
    _code114 = value;
  }

  String _userIDsul = '';
  String get userIDsul => _userIDsul;
  set userIDsul(String value) {
    _userIDsul = value;
  }

  String _userIDfb = '';
  String get userIDfb => _userIDfb;
  set userIDfb(String value) {
    _userIDfb = value;
  }

  String _usertel = '';
  String get usertel => _usertel;
  set usertel(String value) {
    _usertel = value;
  }

  String _username = '';
  String get username => _username;
  set username(String value) {
    _username = value;
  }

  int _accumsaleamount = 0;
  int get accumsaleamount => _accumsaleamount;
  set accumsaleamount(int value) {
    _accumsaleamount = value;
  }

  String _cardlevelname = '';
  String get cardlevelname => _cardlevelname;
  set cardlevelname(String value) {
    _cardlevelname = value;
  }

  String _cardname = '';
  String get cardname => _cardname;
  set cardname(String value) {
    _cardname = value;
  }

  int _bonusbalance = 0;
  int get bonusbalance => _bonusbalance;
  set bonusbalance(int value) {
    _bonusbalance = value;
  }

  String _usergender = '';
  String get usergender => _usergender;
  set usergender(String value) {
    _usergender = value;
  }

  String _cardid = '';
  String get cardid => _cardid;
  set cardid(String value) {
    _cardid = value;
  }

  String _cardbarcode = '';
  String get cardbarcode => _cardbarcode;
  set cardbarcode(String value) {
    _cardbarcode = value;
  }

  int _codeerr = 112;
  int get codeerr => _codeerr;
  set codeerr(int value) {
    _codeerr = value;
  }

  dynamic _appuserinfo = jsonDecode('{}');
  dynamic get appuserinfo => _appuserinfo;
  set appuserinfo(dynamic value) {
    _appuserinfo = value;
  }

  int _isUserHasinFB = 0;
  int get isUserHasinFB => _isUserHasinFB;
  set isUserHasinFB(int value) {
    _isUserHasinFB = value;
  }

  String _userbirthday = '';
  String get userbirthday => _userbirthday;
  set userbirthday(String value) {
    _userbirthday = value;
  }

  String _cardnextlevelname = '';
  String get cardnextlevelname => _cardnextlevelname;
  set cardnextlevelname(String value) {
    _cardnextlevelname = value;
  }

  int _ostatok = 0;
  int get ostatok => _ostatok;
  set ostatok(int value) {
    _ostatok = value;
  }

  int _cardnextlevelsumm = 0;
  int get cardnextlevelsumm => _cardnextlevelsumm;
  set cardnextlevelsumm(int value) {
    _cardnextlevelsumm = value;
  }

  bool _goodLogin = false;
  bool get goodLogin => _goodLogin;
  set goodLogin(bool value) {
    _goodLogin = value;
  }

  String _statuscancel = 'canceled';
  String get statuscancel => _statuscancel;
  set statuscancel(String value) {
    _statuscancel = value;
  }

  String _statusactive = 'active';
  String get statusactive => _statusactive;
  set statusactive(String value) {
    _statusactive = value;
  }

  String _statuscompleted = 'completed';
  String get statuscompleted => _statuscompleted;
  set statuscompleted(String value) {
    _statuscompleted = value;
  }

  List<dynamic> _goodsarray = [];
  List<dynamic> get goodsarray => _goodsarray;
  set goodsarray(List<dynamic> value) {
    _goodsarray = value;
  }

  void addToGoodsarray(dynamic value) {
    _goodsarray.add(value);
  }

  void removeFromGoodsarray(dynamic value) {
    _goodsarray.remove(value);
  }

  void removeAtIndexFromGoodsarray(int index) {
    _goodsarray.removeAt(index);
  }

  void updateGoodsarrayAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _goodsarray[index] = updateFn(_goodsarray[index]);
  }

  void insertAtIndexInGoodsarray(int index, dynamic value) {
    _goodsarray.insert(index, value);
  }

  int _badgecount = 0;
  int get badgecount => _badgecount;
  set badgecount(int value) {
    _badgecount = value;
  }

  List<dynamic> _goodsarrayID = [];
  List<dynamic> get goodsarrayID => _goodsarrayID;
  set goodsarrayID(List<dynamic> value) {
    _goodsarrayID = value;
  }

  void addToGoodsarrayID(dynamic value) {
    _goodsarrayID.add(value);
  }

  void removeFromGoodsarrayID(dynamic value) {
    _goodsarrayID.remove(value);
  }

  void removeAtIndexFromGoodsarrayID(int index) {
    _goodsarrayID.removeAt(index);
  }

  void updateGoodsarrayIDAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _goodsarrayID[index] = updateFn(_goodsarrayID[index]);
  }

  void insertAtIndexInGoodsarrayID(int index, dynamic value) {
    _goodsarrayID.insert(index, value);
  }

  bool _tapBasket = false;
  bool get tapBasket => _tapBasket;
  set tapBasket(bool value) {
    _tapBasket = value;
  }

  bool _tapHeart = false;
  bool get tapHeart => _tapHeart;
  set tapHeart(bool value) {
    _tapHeart = value;
  }

  List<HeartsArrayStruct> _heartslist = [];
  List<HeartsArrayStruct> get heartslist => _heartslist;
  set heartslist(List<HeartsArrayStruct> value) {
    _heartslist = value;
  }

  void addToHeartslist(HeartsArrayStruct value) {
    _heartslist.add(value);
  }

  void removeFromHeartslist(HeartsArrayStruct value) {
    _heartslist.remove(value);
  }

  void removeAtIndexFromHeartslist(int index) {
    _heartslist.removeAt(index);
  }

  void updateHeartslistAtIndex(
    int index,
    HeartsArrayStruct Function(HeartsArrayStruct) updateFn,
  ) {
    _heartslist[index] = updateFn(_heartslist[index]);
  }

  void insertAtIndexInHeartslist(int index, HeartsArrayStruct value) {
    _heartslist.insert(index, value);
  }

  bool _IsBrendsListLoad = false;
  bool get IsBrendsListLoad => _IsBrendsListLoad;
  set IsBrendsListLoad(bool value) {
    _IsBrendsListLoad = value;
  }

  List<dynamic> _BrandList = [];
  List<dynamic> get BrandList => _BrandList;
  set BrandList(List<dynamic> value) {
    _BrandList = value;
  }

  void addToBrandList(dynamic value) {
    _BrandList.add(value);
  }

  void removeFromBrandList(dynamic value) {
    _BrandList.remove(value);
  }

  void removeAtIndexFromBrandList(int index) {
    _BrandList.removeAt(index);
  }

  void updateBrandListAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _BrandList[index] = updateFn(_BrandList[index]);
  }

  void insertAtIndexInBrandList(int index, dynamic value) {
    _BrandList.insert(index, value);
  }

  String _Brandhash = '';
  String get Brandhash => _Brandhash;
  set Brandhash(String value) {
    _Brandhash = value;
  }

  bool _IsCategoryListLoad = false;
  bool get IsCategoryListLoad => _IsCategoryListLoad;
  set IsCategoryListLoad(bool value) {
    _IsCategoryListLoad = value;
  }

  List<dynamic> _CategoryList = [];
  List<dynamic> get CategoryList => _CategoryList;
  set CategoryList(List<dynamic> value) {
    _CategoryList = value;
  }

  void addToCategoryList(dynamic value) {
    _CategoryList.add(value);
  }

  void removeFromCategoryList(dynamic value) {
    _CategoryList.remove(value);
  }

  void removeAtIndexFromCategoryList(int index) {
    _CategoryList.removeAt(index);
  }

  void updateCategoryListAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _CategoryList[index] = updateFn(_CategoryList[index]);
  }

  void insertAtIndexInCategoryList(int index, dynamic value) {
    _CategoryList.insert(index, value);
  }

  String _CategoryHash = '';
  String get CategoryHash => _CategoryHash;
  set CategoryHash(String value) {
    _CategoryHash = value;
  }

  int _codeResultProperties = 0;
  int get codeResultProperties => _codeResultProperties;
  set codeResultProperties(int value) {
    _codeResultProperties = value;
  }

  List<dynamic> _categoryCount = [];
  List<dynamic> get categoryCount => _categoryCount;
  set categoryCount(List<dynamic> value) {
    _categoryCount = value;
  }

  void addToCategoryCount(dynamic value) {
    _categoryCount.add(value);
  }

  void removeFromCategoryCount(dynamic value) {
    _categoryCount.remove(value);
  }

  void removeAtIndexFromCategoryCount(int index) {
    _categoryCount.removeAt(index);
  }

  void updateCategoryCountAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _categoryCount[index] = updateFn(_categoryCount[index]);
  }

  void insertAtIndexInCategoryCount(int index, dynamic value) {
    _categoryCount.insert(index, value);
  }

  BasketMainStruct _BasketMain = BasketMainStruct.fromSerializableMap(jsonDecode(
      '{\"kol_products\":\"0\",\"total\":\"0\",\"total_discount\":\"0\",\"total_r\":\"0\",\"coupons_sum\":\"0\",\"coupons_list\":\"[]\"}'));
  BasketMainStruct get BasketMain => _BasketMain;
  set BasketMain(BasketMainStruct value) {
    _BasketMain = value;
  }

  void updateBasketMainStruct(Function(BasketMainStruct) updateFn) {
    updateFn(_BasketMain);
  }

  List<BasketStruct> _Basket = [];
  List<BasketStruct> get Basket => _Basket;
  set Basket(List<BasketStruct> value) {
    _Basket = value;
  }

  void addToBasket(BasketStruct value) {
    _Basket.add(value);
  }

  void removeFromBasket(BasketStruct value) {
    _Basket.remove(value);
  }

  void removeAtIndexFromBasket(int index) {
    _Basket.removeAt(index);
  }

  void updateBasketAtIndex(
    int index,
    BasketStruct Function(BasketStruct) updateFn,
  ) {
    _Basket[index] = updateFn(_Basket[index]);
  }

  void insertAtIndexInBasket(int index, BasketStruct value) {
    _Basket.insert(index, value);
  }

  int _basketItemsCount = 0;
  int get basketItemsCount => _basketItemsCount;
  set basketItemsCount(int value) {
    _basketItemsCount = value;
  }

  DocumentReference? _basketstr;
  DocumentReference? get basketstr => _basketstr;
  set basketstr(DocumentReference? value) {
    _basketstr = value;
    value != null
        ? prefs.setString('ff_basketstr', value.path)
        : prefs.remove('ff_basketstr');
  }

  int _basketTotal = 0;
  int get basketTotal => _basketTotal;
  set basketTotal(int value) {
    _basketTotal = value;
  }

  int _basketDiscountSum = 0;
  int get basketDiscountSum => _basketDiscountSum;
  set basketDiscountSum(int value) {
    _basketDiscountSum = value;
  }

  FilterTypeStruct _brandfilter = FilterTypeStruct.fromSerializableMap(
      jsonDecode('{\"sort_by_name\":\"true\",\"show_unavailable\":\"Y\"}'));
  FilterTypeStruct get brandfilter => _brandfilter;
  set brandfilter(FilterTypeStruct value) {
    _brandfilter = value;
  }

  void updateBrandfilterStruct(Function(FilterTypeStruct) updateFn) {
    updateFn(_brandfilter);
  }

  double _start = 0.0;
  double get start => _start;
  set start(double value) {
    _start = value;
  }

  double _end = 0.0;
  double get end => _end;
  set end(double value) {
    _end = value;
  }

  double _startbase = 0.0;
  double get startbase => _startbase;
  set startbase(double value) {
    _startbase = value;
    prefs.setDouble('ff_startbase', value);
  }

  double _endbase = 0.0;
  double get endbase => _endbase;
  set endbase(double value) {
    _endbase = value;
    prefs.setDouble('ff_endbase', value);
  }

  List<PropertyValuesStruct> _yearPropList = [];
  List<PropertyValuesStruct> get yearPropList => _yearPropList;
  set yearPropList(List<PropertyValuesStruct> value) {
    _yearPropList = value;
  }

  void addToYearPropList(PropertyValuesStruct value) {
    _yearPropList.add(value);
  }

  void removeFromYearPropList(PropertyValuesStruct value) {
    _yearPropList.remove(value);
  }

  void removeAtIndexFromYearPropList(int index) {
    _yearPropList.removeAt(index);
  }

  void updateYearPropListAtIndex(
    int index,
    PropertyValuesStruct Function(PropertyValuesStruct) updateFn,
  ) {
    _yearPropList[index] = updateFn(_yearPropList[index]);
  }

  void insertAtIndexInYearPropList(int index, PropertyValuesStruct value) {
    _yearPropList.insert(index, value);
  }

  List<PropertyValuesStruct> _brandPropList = [];
  List<PropertyValuesStruct> get brandPropList => _brandPropList;
  set brandPropList(List<PropertyValuesStruct> value) {
    _brandPropList = value;
  }

  void addToBrandPropList(PropertyValuesStruct value) {
    _brandPropList.add(value);
  }

  void removeFromBrandPropList(PropertyValuesStruct value) {
    _brandPropList.remove(value);
  }

  void removeAtIndexFromBrandPropList(int index) {
    _brandPropList.removeAt(index);
  }

  void updateBrandPropListAtIndex(
    int index,
    PropertyValuesStruct Function(PropertyValuesStruct) updateFn,
  ) {
    _brandPropList[index] = updateFn(_brandPropList[index]);
  }

  void insertAtIndexInBrandPropList(int index, PropertyValuesStruct value) {
    _brandPropList.insert(index, value);
  }

  List<PropertyValuesStruct> _countryPropList = [];
  List<PropertyValuesStruct> get countryPropList => _countryPropList;
  set countryPropList(List<PropertyValuesStruct> value) {
    _countryPropList = value;
  }

  void addToCountryPropList(PropertyValuesStruct value) {
    _countryPropList.add(value);
  }

  void removeFromCountryPropList(PropertyValuesStruct value) {
    _countryPropList.remove(value);
  }

  void removeAtIndexFromCountryPropList(int index) {
    _countryPropList.removeAt(index);
  }

  void updateCountryPropListAtIndex(
    int index,
    PropertyValuesStruct Function(PropertyValuesStruct) updateFn,
  ) {
    _countryPropList[index] = updateFn(_countryPropList[index]);
  }

  void insertAtIndexInCountryPropList(int index, PropertyValuesStruct value) {
    _countryPropList.insert(index, value);
  }

  List<PropertyValuesStruct> _productTypePropList = [];
  List<PropertyValuesStruct> get productTypePropList => _productTypePropList;
  set productTypePropList(List<PropertyValuesStruct> value) {
    _productTypePropList = value;
  }

  void addToProductTypePropList(PropertyValuesStruct value) {
    _productTypePropList.add(value);
  }

  void removeFromProductTypePropList(PropertyValuesStruct value) {
    _productTypePropList.remove(value);
  }

  void removeAtIndexFromProductTypePropList(int index) {
    _productTypePropList.removeAt(index);
  }

  void updateProductTypePropListAtIndex(
    int index,
    PropertyValuesStruct Function(PropertyValuesStruct) updateFn,
  ) {
    _productTypePropList[index] = updateFn(_productTypePropList[index]);
  }

  void insertAtIndexInProductTypePropList(
      int index, PropertyValuesStruct value) {
    _productTypePropList.insert(index, value);
  }

  List<PropertyValuesStruct> _genderPropList = [];
  List<PropertyValuesStruct> get genderPropList => _genderPropList;
  set genderPropList(List<PropertyValuesStruct> value) {
    _genderPropList = value;
  }

  void addToGenderPropList(PropertyValuesStruct value) {
    _genderPropList.add(value);
  }

  void removeFromGenderPropList(PropertyValuesStruct value) {
    _genderPropList.remove(value);
  }

  void removeAtIndexFromGenderPropList(int index) {
    _genderPropList.removeAt(index);
  }

  void updateGenderPropListAtIndex(
    int index,
    PropertyValuesStruct Function(PropertyValuesStruct) updateFn,
  ) {
    _genderPropList[index] = updateFn(_genderPropList[index]);
  }

  void insertAtIndexInGenderPropList(int index, PropertyValuesStruct value) {
    _genderPropList.insert(index, value);
  }

  List<PropertyValuesStruct> _notesPropList = [];
  List<PropertyValuesStruct> get notesPropList => _notesPropList;
  set notesPropList(List<PropertyValuesStruct> value) {
    _notesPropList = value;
  }

  void addToNotesPropList(PropertyValuesStruct value) {
    _notesPropList.add(value);
  }

  void removeFromNotesPropList(PropertyValuesStruct value) {
    _notesPropList.remove(value);
  }

  void removeAtIndexFromNotesPropList(int index) {
    _notesPropList.removeAt(index);
  }

  void updateNotesPropListAtIndex(
    int index,
    PropertyValuesStruct Function(PropertyValuesStruct) updateFn,
  ) {
    _notesPropList[index] = updateFn(_notesPropList[index]);
  }

  void insertAtIndexInNotesPropList(int index, PropertyValuesStruct value) {
    _notesPropList.insert(index, value);
  }

  List<PropertyValuesStruct> _parfumerPropList = [];
  List<PropertyValuesStruct> get parfumerPropList => _parfumerPropList;
  set parfumerPropList(List<PropertyValuesStruct> value) {
    _parfumerPropList = value;
  }

  void addToParfumerPropList(PropertyValuesStruct value) {
    _parfumerPropList.add(value);
  }

  void removeFromParfumerPropList(PropertyValuesStruct value) {
    _parfumerPropList.remove(value);
  }

  void removeAtIndexFromParfumerPropList(int index) {
    _parfumerPropList.removeAt(index);
  }

  void updateParfumerPropListAtIndex(
    int index,
    PropertyValuesStruct Function(PropertyValuesStruct) updateFn,
  ) {
    _parfumerPropList[index] = updateFn(_parfumerPropList[index]);
  }

  void insertAtIndexInParfumerPropList(
      int index, PropertyValuesStruct value) {
    _parfumerPropList.insert(index, value);
  }

  List<PropertyValuesStruct> _collectionPropList = [];
  List<PropertyValuesStruct> get collectionPropList => _collectionPropList;
  set collectionPropList(List<PropertyValuesStruct> value) {
    _collectionPropList = value;
  }

  void addToCollectionPropList(PropertyValuesStruct value) {
    _collectionPropList.add(value);
  }

  void removeFromCollectionPropList(PropertyValuesStruct value) {
    _collectionPropList.remove(value);
  }

  void removeAtIndexFromCollectionPropList(int index) {
    _collectionPropList.removeAt(index);
  }

  void updateCollectionPropListAtIndex(
    int index,
    PropertyValuesStruct Function(PropertyValuesStruct) updateFn,
  ) {
    _collectionPropList[index] = updateFn(_collectionPropList[index]);
  }

  void insertAtIndexInCollectionPropList(
      int index, PropertyValuesStruct value) {
    _collectionPropList.insert(index, value);
  }

  List<PropertyValuesStruct> _familyPropList = [];
  List<PropertyValuesStruct> get familyPropList => _familyPropList;
  set familyPropList(List<PropertyValuesStruct> value) {
    _familyPropList = value;
  }

  void addToFamilyPropList(PropertyValuesStruct value) {
    _familyPropList.add(value);
  }

  void removeFromFamilyPropList(PropertyValuesStruct value) {
    _familyPropList.remove(value);
  }

  void removeAtIndexFromFamilyPropList(int index) {
    _familyPropList.removeAt(index);
  }

  void updateFamilyPropListAtIndex(
    int index,
    PropertyValuesStruct Function(PropertyValuesStruct) updateFn,
  ) {
    _familyPropList[index] = updateFn(_familyPropList[index]);
  }

  void insertAtIndexInFamilyPropList(int index, PropertyValuesStruct value) {
    _familyPropList.insert(index, value);
  }

  List<PropertyValuesStruct> _yearProp2 = [];
  List<PropertyValuesStruct> get yearProp2 => _yearProp2;
  set yearProp2(List<PropertyValuesStruct> value) {
    _yearProp2 = value;
  }

  void addToYearProp2(PropertyValuesStruct value) {
    _yearProp2.add(value);
  }

  void removeFromYearProp2(PropertyValuesStruct value) {
    _yearProp2.remove(value);
  }

  void removeAtIndexFromYearProp2(int index) {
    _yearProp2.removeAt(index);
  }

  void updateYearProp2AtIndex(
    int index,
    PropertyValuesStruct Function(PropertyValuesStruct) updateFn,
  ) {
    _yearProp2[index] = updateFn(_yearProp2[index]);
  }

  void insertAtIndexInYearProp2(int index, PropertyValuesStruct value) {
    _yearProp2.insert(index, value);
  }

  List<PropertyValuesStruct> _brandProp2 = [];
  List<PropertyValuesStruct> get brandProp2 => _brandProp2;
  set brandProp2(List<PropertyValuesStruct> value) {
    _brandProp2 = value;
  }

  void addToBrandProp2(PropertyValuesStruct value) {
    _brandProp2.add(value);
  }

  void removeFromBrandProp2(PropertyValuesStruct value) {
    _brandProp2.remove(value);
  }

  void removeAtIndexFromBrandProp2(int index) {
    _brandProp2.removeAt(index);
  }

  void updateBrandProp2AtIndex(
    int index,
    PropertyValuesStruct Function(PropertyValuesStruct) updateFn,
  ) {
    _brandProp2[index] = updateFn(_brandProp2[index]);
  }

  void insertAtIndexInBrandProp2(int index, PropertyValuesStruct value) {
    _brandProp2.insert(index, value);
  }

  List<PropertyValuesStruct> _countryProp2 = [];
  List<PropertyValuesStruct> get countryProp2 => _countryProp2;
  set countryProp2(List<PropertyValuesStruct> value) {
    _countryProp2 = value;
  }

  void addToCountryProp2(PropertyValuesStruct value) {
    _countryProp2.add(value);
  }

  void removeFromCountryProp2(PropertyValuesStruct value) {
    _countryProp2.remove(value);
  }

  void removeAtIndexFromCountryProp2(int index) {
    _countryProp2.removeAt(index);
  }

  void updateCountryProp2AtIndex(
    int index,
    PropertyValuesStruct Function(PropertyValuesStruct) updateFn,
  ) {
    _countryProp2[index] = updateFn(_countryProp2[index]);
  }

  void insertAtIndexInCountryProp2(int index, PropertyValuesStruct value) {
    _countryProp2.insert(index, value);
  }

  List<PropertyValuesStruct> _productTypeProp2 = [];
  List<PropertyValuesStruct> get productTypeProp2 => _productTypeProp2;
  set productTypeProp2(List<PropertyValuesStruct> value) {
    _productTypeProp2 = value;
  }

  void addToProductTypeProp2(PropertyValuesStruct value) {
    _productTypeProp2.add(value);
  }

  void removeFromProductTypeProp2(PropertyValuesStruct value) {
    _productTypeProp2.remove(value);
  }

  void removeAtIndexFromProductTypeProp2(int index) {
    _productTypeProp2.removeAt(index);
  }

  void updateProductTypeProp2AtIndex(
    int index,
    PropertyValuesStruct Function(PropertyValuesStruct) updateFn,
  ) {
    _productTypeProp2[index] = updateFn(_productTypeProp2[index]);
  }

  void insertAtIndexInProductTypeProp2(
      int index, PropertyValuesStruct value) {
    _productTypeProp2.insert(index, value);
  }

  List<PropertyValuesStruct> _genderProp2 = [];
  List<PropertyValuesStruct> get genderProp2 => _genderProp2;
  set genderProp2(List<PropertyValuesStruct> value) {
    _genderProp2 = value;
  }

  void addToGenderProp2(PropertyValuesStruct value) {
    _genderProp2.add(value);
  }

  void removeFromGenderProp2(PropertyValuesStruct value) {
    _genderProp2.remove(value);
  }

  void removeAtIndexFromGenderProp2(int index) {
    _genderProp2.removeAt(index);
  }

  void updateGenderProp2AtIndex(
    int index,
    PropertyValuesStruct Function(PropertyValuesStruct) updateFn,
  ) {
    _genderProp2[index] = updateFn(_genderProp2[index]);
  }

  void insertAtIndexInGenderProp2(int index, PropertyValuesStruct value) {
    _genderProp2.insert(index, value);
  }

  List<PropertyValuesStruct> _notesProp2 = [];
  List<PropertyValuesStruct> get notesProp2 => _notesProp2;
  set notesProp2(List<PropertyValuesStruct> value) {
    _notesProp2 = value;
  }

  void addToNotesProp2(PropertyValuesStruct value) {
    _notesProp2.add(value);
  }

  void removeFromNotesProp2(PropertyValuesStruct value) {
    _notesProp2.remove(value);
  }

  void removeAtIndexFromNotesProp2(int index) {
    _notesProp2.removeAt(index);
  }

  void updateNotesProp2AtIndex(
    int index,
    PropertyValuesStruct Function(PropertyValuesStruct) updateFn,
  ) {
    _notesProp2[index] = updateFn(_notesProp2[index]);
  }

  void insertAtIndexInNotesProp2(int index, PropertyValuesStruct value) {
    _notesProp2.insert(index, value);
  }

  List<PropertyValuesStruct> _parfumerProp2 = [];
  List<PropertyValuesStruct> get parfumerProp2 => _parfumerProp2;
  set parfumerProp2(List<PropertyValuesStruct> value) {
    _parfumerProp2 = value;
  }

  void addToParfumerProp2(PropertyValuesStruct value) {
    _parfumerProp2.add(value);
  }

  void removeFromParfumerProp2(PropertyValuesStruct value) {
    _parfumerProp2.remove(value);
  }

  void removeAtIndexFromParfumerProp2(int index) {
    _parfumerProp2.removeAt(index);
  }

  void updateParfumerProp2AtIndex(
    int index,
    PropertyValuesStruct Function(PropertyValuesStruct) updateFn,
  ) {
    _parfumerProp2[index] = updateFn(_parfumerProp2[index]);
  }

  void insertAtIndexInParfumerProp2(int index, PropertyValuesStruct value) {
    _parfumerProp2.insert(index, value);
  }

  List<PropertyValuesStruct> _collectionProp2 = [];
  List<PropertyValuesStruct> get collectionProp2 => _collectionProp2;
  set collectionProp2(List<PropertyValuesStruct> value) {
    _collectionProp2 = value;
  }

  void addToCollectionProp2(PropertyValuesStruct value) {
    _collectionProp2.add(value);
  }

  void removeFromCollectionProp2(PropertyValuesStruct value) {
    _collectionProp2.remove(value);
  }

  void removeAtIndexFromCollectionProp2(int index) {
    _collectionProp2.removeAt(index);
  }

  void updateCollectionProp2AtIndex(
    int index,
    PropertyValuesStruct Function(PropertyValuesStruct) updateFn,
  ) {
    _collectionProp2[index] = updateFn(_collectionProp2[index]);
  }

  void insertAtIndexInCollectionProp2(int index, PropertyValuesStruct value) {
    _collectionProp2.insert(index, value);
  }

  List<PropertyValuesStruct> _familyProp2 = [];
  List<PropertyValuesStruct> get familyProp2 => _familyProp2;
  set familyProp2(List<PropertyValuesStruct> value) {
    _familyProp2 = value;
  }

  void addToFamilyProp2(PropertyValuesStruct value) {
    _familyProp2.add(value);
  }

  void removeFromFamilyProp2(PropertyValuesStruct value) {
    _familyProp2.remove(value);
  }

  void removeAtIndexFromFamilyProp2(int index) {
    _familyProp2.removeAt(index);
  }

  void updateFamilyProp2AtIndex(
    int index,
    PropertyValuesStruct Function(PropertyValuesStruct) updateFn,
  ) {
    _familyProp2[index] = updateFn(_familyProp2[index]);
  }

  void insertAtIndexInFamilyProp2(int index, PropertyValuesStruct value) {
    _familyProp2.insert(index, value);
  }

  List<dynamic> _brandJson = [];
  List<dynamic> get brandJson => _brandJson;
  set brandJson(List<dynamic> value) {
    _brandJson = value;
  }

  void addToBrandJson(dynamic value) {
    _brandJson.add(value);
  }

  void removeFromBrandJson(dynamic value) {
    _brandJson.remove(value);
  }

  void removeAtIndexFromBrandJson(int index) {
    _brandJson.removeAt(index);
  }

  void updateBrandJsonAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _brandJson[index] = updateFn(_brandJson[index]);
  }

  void insertAtIndexInBrandJson(int index, dynamic value) {
    _brandJson.insert(index, value);
  }

  int _totalFilteredItems = 0;
  int get totalFilteredItems => _totalFilteredItems;
  set totalFilteredItems(int value) {
    _totalFilteredItems = value;
    prefs.setInt('ff_totalFilteredItems', value);
  }

  bool _isBrandProp = false;
  bool get isBrandProp => _isBrandProp;
  set isBrandProp(bool value) {
    _isBrandProp = value;
  }

  bool _isCountryProp = false;
  bool get isCountryProp => _isCountryProp;
  set isCountryProp(bool value) {
    _isCountryProp = value;
  }

  bool _isProductTypeProp = false;
  bool get isProductTypeProp => _isProductTypeProp;
  set isProductTypeProp(bool value) {
    _isProductTypeProp = value;
  }

  bool _isGenderProp = false;
  bool get isGenderProp => _isGenderProp;
  set isGenderProp(bool value) {
    _isGenderProp = value;
  }

  bool _isYearProp = false;
  bool get isYearProp => _isYearProp;
  set isYearProp(bool value) {
    _isYearProp = value;
  }

  bool _isParfumerProp = false;
  bool get isParfumerProp => _isParfumerProp;
  set isParfumerProp(bool value) {
    _isParfumerProp = value;
  }

  bool _isCollectionProp = false;
  bool get isCollectionProp => _isCollectionProp;
  set isCollectionProp(bool value) {
    _isCollectionProp = value;
  }

  bool _isNotesProp = false;
  bool get isNotesProp => _isNotesProp;
  set isNotesProp(bool value) {
    _isNotesProp = value;
  }

  bool _isFamilyProp = false;
  bool get isFamilyProp => _isFamilyProp;
  set isFamilyProp(bool value) {
    _isFamilyProp = value;
  }

  List<dynamic> _productsData = [];
  List<dynamic> get productsData => _productsData;
  set productsData(List<dynamic> value) {
    _productsData = value;
  }

  void addToProductsData(dynamic value) {
    _productsData.add(value);
  }

  void removeFromProductsData(dynamic value) {
    _productsData.remove(value);
  }

  void removeAtIndexFromProductsData(int index) {
    _productsData.removeAt(index);
  }

  void updateProductsDataAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _productsData[index] = updateFn(_productsData[index]);
  }

  void insertAtIndexInProductsData(int index, dynamic value) {
    _productsData.insert(index, value);
  }

  int _fBrand = 0;
  int get fBrand => _fBrand;
  set fBrand(int value) {
    _fBrand = value;
  }

  int _fCountry = 0;
  int get fCountry => _fCountry;
  set fCountry(int value) {
    _fCountry = value;
  }

  int _fTypeProduct = 0;
  int get fTypeProduct => _fTypeProduct;
  set fTypeProduct(int value) {
    _fTypeProduct = value;
  }

  int _fGender = 0;
  int get fGender => _fGender;
  set fGender(int value) {
    _fGender = value;
  }

  int _fParfumer = 0;
  int get fParfumer => _fParfumer;
  set fParfumer(int value) {
    _fParfumer = value;
  }

  int _fFamily = 0;
  int get fFamily => _fFamily;
  set fFamily(int value) {
    _fFamily = value;
  }

  UserProfileStruct _userProfile = UserProfileStruct();
  UserProfileStruct get userProfile => _userProfile;
  set userProfile(UserProfileStruct value) {
    _userProfile = value;
    prefs.setString('ff_userProfile', value.serialize());
  }

  void updateUserProfileStruct(Function(UserProfileStruct) updateFn) {
    updateFn(_userProfile);
    prefs.setString('ff_userProfile', _userProfile.serialize());
  }

  OrderPropertiesStruct _orderData = OrderPropertiesStruct();
  OrderPropertiesStruct get orderData => _orderData;
  set orderData(OrderPropertiesStruct value) {
    _orderData = value;
  }

  void updateOrderDataStruct(Function(OrderPropertiesStruct) updateFn) {
    updateFn(_orderData);
  }

  String _selectedPayment = '';
  String get selectedPayment => _selectedPayment;
  set selectedPayment(String value) {
    _selectedPayment = value;
  }

  String _selectedDelivery = '';
  String get selectedDelivery => _selectedDelivery;
  set selectedDelivery(String value) {
    _selectedDelivery = value;
  }

  final _getActionsQueryManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> getActionsQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _getActionsQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearGetActionsQueryCache() => _getActionsQueryManager.clear();
  void clearGetActionsQueryCacheKey(String? uniqueKey) =>
      _getActionsQueryManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
