import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start API SUL Group Code

class ApiSulGroup {
  static String getBaseUrl() => 'https://imagine-parfum.ru/personal/rest';
  static Map<String, String> headers = {};
  static GetCodeCall getCodeCall = GetCodeCall();
  static GetCodeRegCall getCodeRegCall = GetCodeRegCall();
  static SendCodeCall sendCodeCall = SendCodeCall();
  static SendCodeRegCall sendCodeRegCall = SendCodeRegCall();
  static GetUserInfoCall getUserInfoCall = GetUserInfoCall();
  static GetActionsCall getActionsCall = GetActionsCall();
  static GetSalesCall getSalesCall = GetSalesCall();
  static GetPodpCall getPodpCall = GetPodpCall();
  static GetPromoCall getPromoCall = GetPromoCall();
  static GetEcardsOldCall getEcardsOldCall = GetEcardsOldCall();
  static GetBonusCall getBonusCall = GetBonusCall();
  static FindGoodsCall findGoodsCall = FindGoodsCall();
  static GetGoodsByBrandOrCategoryCall getGoodsByBrandOrCategoryCall =
      GetGoodsByBrandOrCategoryCall();
  static GetRasPriceCall getRasPriceCall = GetRasPriceCall();
  static SetVisitCall setVisitCall = SetVisitCall();
  static SetVisitFirstCall setVisitFirstCall = SetVisitFirstCall();
  static GetEcardsSMSCall getEcardsSMSCall = GetEcardsSMSCall();
  static GetPropertiesValuesCall getPropertiesValuesCall =
      GetPropertiesValuesCall();
  static GetGoodsBySpecCategoryCall getGoodsBySpecCategoryCall =
      GetGoodsBySpecCategoryCall();
  static GetBrandInfoCall getBrandInfoCall = GetBrandInfoCall();
  static GetProductInfoCall getProductInfoCall = GetProductInfoCall();
  static SearchProductsCall searchProductsCall = SearchProductsCall();
  static SerachBrandsCall serachBrandsCall = SerachBrandsCall();
  static GetProductsNewCall getProductsNewCall = GetProductsNewCall();
  static GetSpecialProductsNewCall getSpecialProductsNewCall =
      GetSpecialProductsNewCall();
  static GetOffersNewCall getOffersNewCall = GetOffersNewCall();
  static GetNewProductsNewCall getNewProductsNewCall = GetNewProductsNewCall();
  static GetInfoProductNEWCall getInfoProductNEWCall = GetInfoProductNEWCall();
  static GetDeliveryPointsCall getDeliveryPointsCall = GetDeliveryPointsCall();
  static SearchCitiesCall searchCitiesCall = SearchCitiesCall();
  static GetCalculateCall getCalculateCall = GetCalculateCall();
}

class GetCodeCall {
  Future<ApiCallResponse> call({
    String? userTel = '79226111141',
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetCode',
      apiUrl: '$baseUrl/authreg/$userTel/getcode',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? coderesreg(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.code''',
      ));
  String? umail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.u_mail''',
      ));
  String? upass(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.u_pass''',
      ));
  String? uname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.u_name''',
      ));
}

class GetCodeRegCall {
  Future<ApiCallResponse> call({
    String? userTel = '79122371572',
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetCodeReg',
      apiUrl: '$baseUrl/authreg/$userTel/getcodereg',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? code(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.code''',
      ));
  String? umail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.u_mail''',
      ));
  String? upass(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.u_pass''',
      ));
}

class SendCodeCall {
  Future<ApiCallResponse> call({
    String? userCode = '9847',
    String? userTel = '79122371572',
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'SendCode',
      apiUrl: '$baseUrl/authreg/$userCode/$userTel/sendcode',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? sendcode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.code''',
      ));
  String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user_name''',
      ));
  int? accumsaleamount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.accum_sale_amount''',
      ));
  String? datelasttransaction(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.date_last_transaction''',
      ));
  String? cardlevelname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.card_level_name''',
      ));
  String? cardname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.card_name''',
      ));
  int? bonusbalance(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.bonus_balance''',
      ));
  String? usergender(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user_gender''',
      ));
  String? userid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user_id''',
      ));
  String? cardid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.card_id''',
      ));
  int? cardbarcode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.card_barcode''',
      ));
}

class SendCodeRegCall {
  Future<ApiCallResponse> call({
    String? userCode = '1111',
    dynamic userInfoJson,
    String? userTel = '79122371572',
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    final userInfo = _serializeJson(userInfoJson);

    return ApiManager.instance.makeApiCall(
      callName: 'SendCodeReg',
      apiUrl:
          '$baseUrl/authreg/$userCode/$userTel/sendcodereg/$userInfo',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user_name''',
      ));
  int? accumsaleamount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.accum_sale_amount''',
      ));
  String? datelasttransaction(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.date_last_transaction''',
      ));
  String? cardlevelname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.card_level_name''',
      ));
  String? cardname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.card_name''',
      ));
  int? bonusbalance(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.bonus_balance''',
      ));
  String? usergender(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user_gender''',
      ));
  String? cardid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.card_id''',
      ));
  String? userid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user_id''',
      ));
  String? cardbarcode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.card_barcode''',
      ));
  int? code(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.code''',
      ));
}

class GetUserInfoCall {
  Future<ApiCallResponse> call({
    String? cardId = '2992aa4e-3b44-11ea-bafc-6805ca38ff23',
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetUserInfo',
      apiUrl: '$baseUrl/users/$cardId/info',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user_name''',
      ));
  int? accumsaleamount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.accum_sale_amount''',
      ));
  String? datelasttransaction(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.date_last_transaction''',
      ));
  String? cardlevelname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.card_level_name''',
      ));
  String? cardname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.card_name''',
      ));
  int? bonusbalance(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.bonus_balance''',
      ));
  String? usergender(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user_gender''',
      ));
  String? userid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user_id''',
      ));
  String? cardid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.card_id''',
      ));
  int? cardbarcode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.card_barcode''',
      ));
  int? code(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.code''',
      ));
  int? cardnextlevelsumm(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.card_next_level_summ''',
      ));
  int? ostatok(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.ostatok''',
      ));
  String? cardnextlevelname(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.card_next_level_name''',
      ));
}

class GetActionsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetActions',
      apiUrl: '$baseUrl/promotion',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? actionsstartdate(dynamic response) => (getJsonField(
        response,
        r'''$.actions[:].start_date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? actionsenddate(dynamic response) => (getJsonField(
        response,
        r'''$.actions[:].end_date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? actionsname(dynamic response) => (getJsonField(
        response,
        r'''$.actions[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? actionsshortdescription(dynamic response) => (getJsonField(
        response,
        r'''$.actions[:].short_description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? actionsfulldescription(dynamic response) => (getJsonField(
        response,
        r'''$.actions[:].full_description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? actionspromourl(dynamic response) => (getJsonField(
        response,
        r'''$.actions[:].promo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? actionsimage(dynamic response) => (getJsonField(
        response,
        r'''$.actions[:].image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? actions(dynamic response) => getJsonField(
        response,
        r'''$.actions''',
        true,
      ) as List?;
}

class GetSalesCall {
  Future<ApiCallResponse> call({
    String? cardId = '3d18e864-3b44-11ea-bafc-6805ca38ff23',
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetSales',
      apiUrl: '$baseUrl/users/$cardId/sale',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? sales(dynamic response) => getJsonField(
        response,
        r'''$.sales''',
        true,
      ) as List?;
  int? salesrownumber(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sales[:].row_number''',
      ));
  String? salessummwithd(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sales[:].summ_with_d''',
      ));
  String? salesdate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sales[:].date''',
      ));
  List? salesgoods(dynamic response) => getJsonField(
        response,
        r'''$.sales[:].goods''',
        true,
      ) as List?;
  String? salesgoodsarticleid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.sales[:].goods[:].article_id''',
      ));
  String? salesgoodsimage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sales[:].goods[:].image''',
      ));
  String? salesgoodsdescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.sales[:].goods[:].description''',
      ));
  String? salesgoodsprice(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sales[:].goods[:].price''',
      ));
  int? salesgoodsquantity(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sales[:].goods[:].quantity''',
      ));
  String? salesgoodscountry(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.sales[:].goods[:].country''',
      ));
  String? salesgoodsbrand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sales[:].goods[:].brand''',
      ));
  int? code(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.code''',
      ));
}

class GetPodpCall {
  Future<ApiCallResponse> call({
    String? cardId = '0ccb33f9-3b44-11ea-bafc-6805ca38ff23',
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetPodp',
      apiUrl: '$baseUrl/subscription/$cardId',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? coderesult(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.code_result''',
      ));
  String? subscriptions(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.subscriptions''',
      ));
}

class GetPromoCall {
  Future<ApiCallResponse> call({
    String? cardId = '0ccb33f9-3b44-11ea-bafc-6805ca38ff23',
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetPromo',
      apiUrl: '$baseUrl/coupon/$cardId',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? coderesult(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.code_result''',
      ));
  List? coupons(dynamic response) => getJsonField(
        response,
        r'''$.coupons''',
        true,
      ) as List?;
}

class GetEcardsOldCall {
  Future<ApiCallResponse> call({
    String? cardId = '2992aa4e-3b44-11ea-bafc-6805ca38ff23',
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetEcards old',
      apiUrl: '$baseUrl/users/$cardId/ecards',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? apple(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.apple''',
      ));
  String? google(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.google''',
      ));
}

class GetBonusCall {
  Future<ApiCallResponse> call({
    String? cardId = '0ccb33f9-3b44-11ea-bafc-6805ca38ff23',
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetBonus',
      apiUrl: '$baseUrl/users/$cardId/bonus',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? code(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.code''',
      ));
}

class FindGoodsCall {
  Future<ApiCallResponse> call({
    String? findStr = 'anan',
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'FindGoods',
      apiUrl: '$baseUrl/goods/find/$findStr',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? goods(dynamic response) => getJsonField(
        response,
        r'''$.goods''',
        true,
      ) as List?;
}

class GetGoodsByBrandOrCategoryCall {
  Future<ApiCallResponse> call({
    int? id,
    String? hash = '',
    String? bypar = 'bybrand',
    int? limit,
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetGoodsByBrandOrCategory',
      apiUrl: '$baseUrl/goods/getgoods/$bypar/$id',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'hash': hash,
        'limit': limit,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? goods(dynamic response) => getJsonField(
        response,
        r'''$.goods''',
        true,
      ) as List?;
  List<String>? id(dynamic response) => (getJsonField(
        response,
        r'''$.goods[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.goods[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? ountry(dynamic response) => (getJsonField(
        response,
        r'''$.goods[:].country''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? brand(dynamic response) => (getJsonField(
        response,
        r'''$.goods[:].brand''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? family(dynamic response) => (getJsonField(
        response,
        r'''$.goods[:].family''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? startnotes(dynamic response) => (getJsonField(
        response,
        r'''$.goods[:].start_notes''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? heartnotes(dynamic response) => (getJsonField(
        response,
        r'''$.goods[:].heart_notes''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? bottomnotes(dynamic response) => (getJsonField(
        response,
        r'''$.goods[:].bottom_notes''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? code(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.code''',
      ));
  List? allnotes(dynamic response) => getJsonField(
        response,
        r'''$.goods[:].all_notes''',
        true,
      ) as List?;
  List<String>? collection(dynamic response) => (getJsonField(
        response,
        r'''$.goods[:].collection''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? parfumer(dynamic response) => (getJsonField(
        response,
        r'''$.goods[:].parfumer''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? year(dynamic response) => (getJsonField(
        response,
        r'''$.goods[:].year''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? sex(dynamic response) => (getJsonField(
        response,
        r'''$.goods[:].sex''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? goodsoffers(dynamic response) => getJsonField(
        response,
        r'''$.goods[:].offers''',
        true,
      ) as List?;
  List<String>? offersname(dynamic response) => (getJsonField(
        response,
        r'''$.goods[:].offers[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? offersvolume(dynamic response) => (getJsonField(
        response,
        r'''$.goods[:].offers[:].volume''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? offerscolor(dynamic response) => (getJsonField(
        response,
        r'''$.goods[:].offers[:].color''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? offerscolorname(dynamic response) => (getJsonField(
        response,
        r'''$.goods[:].offers[:].color_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? offersstrihcode(dynamic response) => (getJsonField(
        response,
        r'''$.goods[:].offers[:].strihcode''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? typeproduct(dynamic response) => (getJsonField(
        response,
        r'''$.goods[:].type_product''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? previewPicture(dynamic response) => (getJsonField(
        response,
        r'''$.goods[:].previewPicture''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? goodsavailable(dynamic response) => (getJsonField(
        response,
        r'''$.goods[:].available''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? goodstype(dynamic response) => (getJsonField(
        response,
        r'''$.goods[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List? goodsspeccate(dynamic response) => getJsonField(
        response,
        r'''$.goods[:].spec_category''',
        true,
      ) as List?;
  List<int>? goodsbrandid(dynamic response) => (getJsonField(
        response,
        r'''$.goods[:].brand_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? goodsminprice(dynamic response) => (getJsonField(
        response,
        r'''$.goods[:].min_price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetRasPriceCall {
  Future<ApiCallResponse> call({
    String? cardId = '2992aa4e-3b44-11ea-bafc-6805ca38ff23',
    dynamic goodsArrJson,
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    final goodsArr = _serializeJson(goodsArrJson, true);

    return ApiManager.instance.makeApiCall(
      callName: 'GetRasPrice',
      apiUrl: '$baseUrl/calculate/$cardId/$goodsArr',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SetVisitCall {
  Future<ApiCallResponse> call({
    String? userIdMobile = '0a43a6c6-2670-4df3-aa46-69a41edcb2d5',
    String? uidFB = 'IaSPZhLAICRb5HjCNTz74Na0Lr72',
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'SetVisit',
      apiUrl: '$baseUrl/users/$userIdMobile/$uidFB/setvisit',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SetVisitFirstCall {
  Future<ApiCallResponse> call({
    String? userId = '0a43a6c6-2670-4df3-aa46-69a41edcb2d5',
    String? uidFB = 'IaSPZhLAICRb5HjCNTz74Na0Lr72',
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'SetVisitFirst',
      apiUrl: '$baseUrl/users/$userId/$uidFB/setFBfisrt',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetEcardsSMSCall {
  Future<ApiCallResponse> call({
    String? cardId = '',
    String? type = '',
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetEcardsSMS',
      apiUrl: '$baseUrl/users/$cardId/ecards/$type',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPropertiesValuesCall {
  Future<ApiCallResponse> call({
    String? propertyName = 'brands',
    int? limit,
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetPropertiesValues',
      apiUrl: '$baseUrl/goods/properties/$propertyName/$limit',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? code(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.code''',
      ));
  List? values(dynamic response) => getJsonField(
        response,
        r'''$.properties''',
        true,
      ) as List?;
  List<int>? brandid(dynamic response) => (getJsonField(
        response,
        r'''$.properties[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? brandname(dynamic response) => (getJsonField(
        response,
        r'''$.properties[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetGoodsBySpecCategoryCall {
  Future<ApiCallResponse> call({
    String? hash = '',
    String? spec = 'new',
    int? limit = 55,
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetGoodsBySpecCategory',
      apiUrl: '$baseUrl/goods/spec/$spec',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'hash': hash,
        'limit': limit,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetBrandInfoCall {
  Future<ApiCallResponse> call({
    String? action = 'getinfo',
    int? brandId = 20669,
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetBrandInfo',
      apiUrl: '$baseUrl/goods/brand/$action/$brandId',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.description''',
      ));
  String? brandfoto(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.brand_foto''',
      ));
}

class GetProductInfoCall {
  Future<ApiCallResponse> call({
    String? action = '',
    int? productId,
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetProductInfo',
      apiUrl: '$baseUrl/goods/product/$action/$productId',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  String? previewPicture(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.previewPicture''',
      ));
  String? brand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.brand''',
      ));
  int? brandid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.brand_id''',
      ));
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? xmlid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.xml_id''',
      ));
  int? ipricemain(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.i_price_main''',
      ));
  int? rpricemain(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.r_price_main''',
      ));
  List? offers(dynamic response) => getJsonField(
        response,
        r'''$.offers''',
        true,
      ) as List?;
}

class SearchProductsCall {
  Future<ApiCallResponse> call({
    String? findStr = 'anand',
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'SearchProducts',
      apiUrl: '$baseUrl/goods/searchgoods/$findStr',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SerachBrandsCall {
  Future<ApiCallResponse> call({
    String? findStr = 'mais',
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'SerachBrands',
      apiUrl: '$baseUrl/goods/searchbrands/$findStr',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'find_str': findStr,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProductsNewCall {
  Future<ApiCallResponse> call({
    String? bypar = '',
    int? id,
    bool? disc,
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getProductsNew',
      apiUrl: '$baseUrl/goods_new/getgoods/$bypar/$id',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'disc': disc,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? catid(dynamic response) => (getJsonField(
        response,
        r'''$[:].cat_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? subcatlistid(dynamic response) => (getJsonField(
        response,
        r'''$[:].subcat_list_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? lowname(dynamic response) => (getJsonField(
        response,
        r'''$[:].lowname''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? previewPicture(dynamic response) => (getJsonField(
        response,
        r'''$[:].previewPicture''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? brand(dynamic response) => (getJsonField(
        response,
        r'''$[:].brand''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? lowbrand(dynamic response) => (getJsonField(
        response,
        r'''$[:].lowbrand''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? brandid(dynamic response) => (getJsonField(
        response,
        r'''$[:].brand_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? typeproduct(dynamic response) => (getJsonField(
        response,
        r'''$[:].type_product''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? sex(dynamic response) => (getJsonField(
        response,
        r'''$[:].sex''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? country(dynamic response) => (getJsonField(
        response,
        r'''$[:].country''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? family(dynamic response) => (getJsonField(
        response,
        r'''$[:].family''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? topnotes(dynamic response) => (getJsonField(
        response,
        r'''$[:].top_notes''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? heartnotes(dynamic response) => (getJsonField(
        response,
        r'''$[:].heart_notes''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? basenotes(dynamic response) => (getJsonField(
        response,
        r'''$[:].base_notes''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? notes(dynamic response) => (getJsonField(
        response,
        r'''$[:].notes''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? parfumer(dynamic response) => (getJsonField(
        response,
        r'''$[:].parfumer''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? collection(dynamic response) => (getJsonField(
        response,
        r'''$[:].collection''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? year(dynamic response) => (getJsonField(
        response,
        r'''$[:].year''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? available(dynamic response) => (getJsonField(
        response,
        r'''$[:].available''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? type(dynamic response) => (getJsonField(
        response,
        r'''$[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? new1(dynamic response) => (getJsonField(
        response,
        r'''$[:].new''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? hit(dynamic response) => (getJsonField(
        response,
        r'''$[:].hit''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? rec(dynamic response) => (getJsonField(
        response,
        r'''$[:].rec''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? speccategory(dynamic response) => (getJsonField(
        response,
        r'''$[:].spec_category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? rpricemain(dynamic response) => (getJsonField(
        response,
        r'''$[:].r_price_main''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? ipricemain(dynamic response) => (getJsonField(
        response,
        r'''$[:].i_price_main''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? goodsminprice(dynamic response) => (getJsonField(
        response,
        r'''$[:].min_price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? specprice(dynamic response) => (getJsonField(
        response,
        r'''$[:].spec_price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? blackprice(dynamic response) => (getJsonField(
        response,
        r'''$[:].black_price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? goldprice(dynamic response) => (getJsonField(
        response,
        r'''$[:].gold_price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? infinityprice(dynamic response) => (getJsonField(
        response,
        r'''$[:].infinity_price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? vipprice(dynamic response) => (getJsonField(
        response,
        r'''$[:].vip_price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? discounttype(dynamic response) => (getJsonField(
        response,
        r'''$[:].discount_type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? discountname(dynamic response) => (getJsonField(
        response,
        r'''$[:].discount_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? discountvalue(dynamic response) => (getJsonField(
        response,
        r'''$[:].discount_value''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? xmlid(dynamic response) => (getJsonField(
        response,
        r'''$[:].xml_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? offers(dynamic response) => getJsonField(
        response,
        r'''$[:].offers''',
        true,
      ) as List?;
  List<int>? minpriceblack(dynamic response) => (getJsonField(
        response,
        r'''$[:].min_price_black''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? minpricegold(dynamic response) => (getJsonField(
        response,
        r'''$[:].min_price_gold''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? minpriceinfinity(dynamic response) => (getJsonField(
        response,
        r'''$[:].min_price_infinity''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? minpricevip(dynamic response) => (getJsonField(
        response,
        r'''$[:].min_price_vip''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<bool>? hasvariants(dynamic response) => (getJsonField(
        response,
        r'''$[:].has_variants''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
}

class GetSpecialProductsNewCall {
  Future<ApiCallResponse> call({
    String? bypar = '',
    int? id,
    int? limit = 0,
    int? start = 0,
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getSpecialProductsNew',
      apiUrl: '$baseUrl/goods_new/special/$bypar/$id',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'limit': limit,
        'start': start,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetOffersNewCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getOffersNew',
      apiUrl: '$baseUrl/offers/get/$id',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? volume(dynamic response) => (getJsonField(
        response,
        r'''$[:].volume''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? color(dynamic response) => getJsonField(
        response,
        r'''$[:].color''',
        true,
      ) as List?;
  List? colorname(dynamic response) => getJsonField(
        response,
        r'''$[:].color_name''',
        true,
      ) as List?;
  List<String>? available(dynamic response) => (getJsonField(
        response,
        r'''$[:].available''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? rprice(dynamic response) => (getJsonField(
        response,
        r'''$[:].r_price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? iprice(dynamic response) => (getJsonField(
        response,
        r'''$[:].i_price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? strihcode(dynamic response) => (getJsonField(
        response,
        r'''$[:].strihcode''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? referenceoffer(dynamic response) => (getJsonField(
        response,
        r'''$[:].reference''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? specpriceoffer(dynamic response) => (getJsonField(
        response,
        r'''$[:].spec_price_offer''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? blackpriceoffer(dynamic response) => (getJsonField(
        response,
        r'''$[:].black_price_offer''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? infinitypriceoffer(dynamic response) => (getJsonField(
        response,
        r'''$[:].infinity_price_offer''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? goldpriceoffer(dynamic response) => (getJsonField(
        response,
        r'''$[:].gold_price_offer''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? vippriceoffer(dynamic response) => (getJsonField(
        response,
        r'''$[:].vip_price_offer''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? xmlid(dynamic response) => (getJsonField(
        response,
        r'''$[:].xml_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetNewProductsNewCall {
  Future<ApiCallResponse> call({
    String? bypar = '',
    int? limit = 20,
    int? start = 0,
    int? id,
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getNewProductsNew',
      apiUrl: '$baseUrl/goods_new/new/$bypar/$id',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'limit': limit,
        'start': start,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetInfoProductNEWCall {
  Future<ApiCallResponse> call({
    int? id = 7775,
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getInfoProductNEW',
      apiUrl: '$baseUrl/goods_new/getinfo/$id',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  String? previewPicture(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.previewPicture''',
      ));
  int? catid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.cat_id''',
      ));
  String? brand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.brand''',
      ));
  int? brandid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.brand_id''',
      ));
  String? typeproduct(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type_product''',
      ));
  String? available(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.available''',
      ));
  int? minprice(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.min_price''',
      ));
  int? minpriceblack(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.min_price_black''',
      ));
  int? minpricegold(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.min_price_gold''',
      ));
  int? minpriceinfinity(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.min_price_infinity''',
      ));
  int? minpricevip(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.min_price_vip''',
      ));
  int? specprice(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.spec_price''',
      ));
  int? blackprice(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.black_price''',
      ));
  int? goldprice(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.gold_price''',
      ));
  int? infinityprice(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.infinity_price''',
      ));
  int? vipprice(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.vip_price''',
      ));
  int? discountvalue(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.discount_value''',
      ));
  String? xmlid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.xml_id''',
      ));
  List? offers(dynamic response) => getJsonField(
        response,
        r'''$.offers''',
        true,
      ) as List?;
}

class GetDeliveryPointsCall {
  Future<ApiCallResponse> call({
    String? action = '',
    int? cityCode,
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getDeliveryPoints',
      apiUrl: '$baseUrl/cdek/$action/$cityCode',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? code(dynamic response) => (getJsonField(
        response,
        r'''$[:].code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? worktime(dynamic response) => (getJsonField(
        response,
        r'''$[:].work_time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? phones(dynamic response) => getJsonField(
        response,
        r'''$[:].phones''',
        true,
      ) as List?;
  List<String>? type(dynamic response) => (getJsonField(
        response,
        r'''$[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? ownercode(dynamic response) => (getJsonField(
        response,
        r'''$[:].owner_code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? location(dynamic response) => getJsonField(
        response,
        r'''$[:].location''',
        true,
      ) as List?;
  List<int>? locationcitycode(dynamic response) => (getJsonField(
        response,
        r'''$[:].location.city_code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? locationcity(dynamic response) => (getJsonField(
        response,
        r'''$[:].location.city''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? locationregion(dynamic response) => (getJsonField(
        response,
        r'''$[:].location.region''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? locationaddressfull(dynamic response) => (getJsonField(
        response,
        r'''$[:].location.address_full''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? locationlongitude(dynamic response) => (getJsonField(
        response,
        r'''$[:].location.longitude''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? locationlatitude(dynamic response) => (getJsonField(
        response,
        r'''$[:].location.latitude''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? locationaddress(dynamic response) => (getJsonField(
        response,
        r'''$[:].location.address''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? locationpostalcode(dynamic response) => (getJsonField(
        response,
        r'''$[:].location.postal_code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? havecashless(dynamic response) => (getJsonField(
        response,
        r'''$[:].have_cashless''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? phonesnumber(dynamic response) => (getJsonField(
        response,
        r'''$[:].phones[:].number''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? neareststation(dynamic response) => (getJsonField(
        response,
        r'''$[:].nearest_station''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class SearchCitiesCall {
  Future<ApiCallResponse> call({
    String? findStr = '',
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'searchCities',
      apiUrl: '$baseUrl/cdek/searchCities/$findStr',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCalculateCall {
  Future<ApiCallResponse> call({
    int? cityCode,
    int? tariffId,
    int? kolProducts,
  }) async {
    final baseUrl = ApiSulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getCalculate',
      apiUrl:
          '$baseUrl/cdek/calculate/$cityCode/$tariffId/$kolProducts',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End API SUL Group Code

/// Start Reserved Group Code

class ReservedGroup {
  static String getBaseUrl() => 'https://imagineparfum.ru/bitrix/rou2.php';
  static Map<String, String> headers = {};
}

/// End Reserved Group Code

/// Start SUL Group Code

class SulGroup {
  static String getBaseUrl() => 'https://bonus.rarus-online.com:88';
  static Map<String, String> headers = {};
  static GetSalesfromDateCall getSalesfromDateCall = GetSalesfromDateCall();
  static PostCatalogCall postCatalogCall = PostCatalogCall();
}

class GetSalesfromDateCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SulGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getSalesfromDate',
      apiUrl: '$baseUrl/organization/sale_info',
      callType: ApiCallType.GET,
      headers: {
        'token': 'ECC6DEDA60D74434AE3BF2E55804EF002282',
      },
      params: {
        'date_from': 1709751600000,
        'date_to': 1709838000000,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PostCatalogCall {
  Future<ApiCallResponse> call({
    String? brandId = 'Beaufort',
    int? page = 1,
    int? perPage = 25,
  }) async {
    final baseUrl = SulGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "properties": [
    {
      "property_id": "087d58e4-6976-11ed-9826-ac1f6bd9b46c",
      "value": "$brandId"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PostCatalog',
      apiUrl:
          '$baseUrl/organization/assortment_properties/?calculate_count=true&calculate_count=true&page=$page&per_page=$perPage',
      callType: ApiCallType.POST,
      headers: {
        'token': 'E17AE76713B5425E85208D787A2B01662282',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.assortment[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? image(dynamic response) => (getJsonField(
        response,
        r'''$.assortment[:].image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? price(dynamic response) => (getJsonField(
        response,
        r'''$.assortment[:].assortment_prices[:].price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List? products(dynamic response) => getJsonField(
        response,
        r'''$.assortment''',
        true,
      ) as List?;
}

/// End SUL Group Code

/// Start NetAngels Group Code

class NetAngelsGroup {
  static String getBaseUrl() =>
      'https://api-ms.netangels.ru/api/v1/hosting/virtualhosts/163292';
  static Map<String, String> headers = {};
  static CtCall ctCall = CtCall();
  static AaCall aaCall = AaCall();
}

class CtCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = NetAngelsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ct',
      apiUrl: '$baseUrl/crontabs',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJuZXRhbmdlbHMiLCJleHAiOjE3MTE0MzM2NzYsImlhdCI6MTcxMTM0NzI3NiwibG9naW4iOiJ1OTY2NyIsInNjb3BlIjoiYXBpLjU0NTUifQ.Ww2rUZ3rRGkpB7kWU64eCZDm7HB-jpE0BcKFiEeJoTI',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AaCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = NetAngelsGroup.getBaseUrl();

    const ffApiRequestBody = '''
{days=%2A&months=%2A&weekdays=%2A&command=php+brandcashe.php+brand_id%3D10823&comment=""}''';
    return ApiManager.instance.makeApiCall(
      callName: 'aa',
      apiUrl: '$baseUrl/crontabs',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJuZXRhbmdlbHMiLCJleHAiOjE3MTE0MzM2NzYsImlhdCI6MTcxMTM0NzI3NiwibG9naW4iOiJ1OTY2NyIsInNjb3BlIjoiYXBpLjU0NTUifQ.Ww2rUZ3rRGkpB7kWU64eCZDm7HB-jpE0BcKFiEeJoTI',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End NetAngels Group Code

/// Start API CDEK Group Code

class ApiCdekGroup {
  static String getBaseUrl() => 'https://imagine-parfum.ru/personal/cdek';
  static Map<String, String> headers = {};
}

/// End API CDEK Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
