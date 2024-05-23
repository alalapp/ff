import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

dynamic convertMapsToJson(
  String userFioArg,
  String userTelArg,
  String userBdArg,
) {
  Map<String, String> mapList;
  mapList = {
    "user_fio": userFioArg,
    "user_tel": userTelArg,
    "user_bd": userBdArg
  };
  String jsonString = jsonEncode(mapList);

  return jsonString;
}

String convJsonToStringCopy(dynamic convstr) {
  final a = convstr.toString();

  return a;
}

List<dynamic> converJsonForSUL(List<dynamic> jsonString) {
  List<dynamic> encoded = [];

  dynamic encoded_item = [];

  for (int i = 0; i < jsonString.length; i++) {
    Map<String, dynamic> data = jsonDecode(jsonString[i]);

    (data as List<dynamic>)
        .forEach((item) => encoded_item = item["id"].ReplaceAll('#', '--'));

    encoded.add(jsonEncode(encoded_item));
  }

  return encoded;
}

dynamic urlEncodeJson(dynamic itemarray) {
  itemarray['image'] = itemarray['image'].replaceAll('#', '%23');
  itemarray['id'] = itemarray['id'].replaceAll('#', '%23');

  return itemarray;
}

String? widgetStateLog(List<String>? widgetState) {
  return widgetState.toString();
}

double? convertJsonStringToDouble(dynamic data) {
  return int.parse(data.toString()).toDouble();
}

bool isNullList(List<String>? widgetState) {
  if (widgetState == null || widgetState.isEmpty) {
    return true;
  } else {
    return false;
  }
}

int converJsoncodetoInt(dynamic coderesult) {
  final a = coderesult['code'].toString();

  return int.parse(a);
}

int? countJSONElements(List<dynamic> jsonarray) {
  return jsonarray.length;
}

String cutStringF(
  String str,
  String finishstr,
  int kol,
) {
  if (str.length > kol)
    return str.substring(0, kol) + finishstr;
  else
    return str;
}

bool isNull(String? checkNullVariable) {
  if (checkNullVariable == null ||
      checkNullVariable.isEmpty ||
      checkNullVariable == 'null') {
    return true;
  } else {
    return false;
  }
}

String replaceStr2(String str) {
  String final_str = '';

  if (str.contains('мл')) final_str = 'ОБЪЁМ, МЛ';

  if (str.contains('г')) final_str = 'ВЕС, ГР';

  if (str.contains('ш')) final_str = 'КОЛ-ВО, ШТ';

  return final_str.trim();
}

String convJsonToString(dynamic convstr) {
  final a = convstr['id'].toString();

  return a;
}

String replaceStr(String str) {
  if (str.contains('мл.')) str = str.replaceAll('мл.', '');
  if (str.contains('мл')) str = str.replaceAll('мл', '');

  if (str.contains('гр.')) str = str.replaceAll('гр.', '');
  if (str.contains('гр')) str = str.replaceAll('гр', '');

  if (str.contains('г.')) str = str.replaceAll('г.', '');
  if (str.contains('г')) str = str.replaceAll('г', '');

  if (str.contains('шт.')) str = str.replaceAll('шт.', '');
  if (str.contains('шт')) str = str.replaceAll('шт', '');

  str.trim();

  return str;
}

String? getBrandInfo(
  List<dynamic> brandList,
  int brandid,
) {
  // create a cycle where in  json array is looking for an element whose field is equal to var1
  for (var brand in brandList) {
    if (brand['id'] == brandid) {
      return brand['brandfoto'];
    }
  }

  return null;
}

BasketMainStruct? updateBasketMain(
  DocumentReference? mainBasket,
  int kolProducts,
  String totalDiscount,
  String totalR,
  String couponsSUM,
  String total,
) {
  BasketMainStruct? mainBasket1;
  Map<String, dynamic> data = mainBasket as Map<String, dynamic>;
  int new_kol_products = data['kol_products'] + 1;
  int new_total = data['total'] + int.parse(total);
  int new_total_discount = data['total_discount'] + int.parse(totalDiscount);
  int new_total_r = data['total_r'] + int.parse(totalR);
  int new_coupons_sum = data['coupons_sum'] + int.parse(couponsSUM);

  Map<String, dynamic> data1 = mainBasket1 as Map<String, dynamic>;
  data1['kol_products'] = new_kol_products;
  data1['total'] = new_total;
  data1['total_discount'] = new_total_discount;
  data1['total_r'] = new_total_r;
  data1['coupons_sum'] = new_coupons_sum;

  return BasketMainStruct.fromMap(data1);
}

Color? hEXtoColor(dynamic hexString) {
  final buffer = StringBuffer();
  if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
  buffer.write(hexString.replaceFirst('#', ''));
  return Color(int.parse(buffer.toString(), radix: 16));
}

List<dynamic> sortJson(
  List<dynamic> data,
  String? sortBy,
) {
  // null safety
  sortBy ??= 'name';

  data.sort((a, b) {
    // Check if the field to sort by is a nested field (e.g., 'company.name')
    List<String> fields = sortBy!.split('.');

    dynamic aValue = a;
    dynamic bValue = b;

    for (String field in fields) {
      aValue = aValue[field];
      bValue = bValue[field];
    }

    // Compare the values based on their type
    if (aValue is String) {
      return aValue.compareTo(bValue as String);
    } else if (aValue is num) {
      return aValue.compareTo(bValue as num);
    } else {
      throw ArgumentError('Unsupported field type for sorting');
    }
  });

  return data;
}

List<PropertyValuesStruct> json2propertyValues(List<dynamic> startvalue) {
  // convert  field name of json array   to Datatype  list
  List<PropertyValuesStruct> list = [];
  for (var item in startvalue) {
    list.add(
        PropertyValuesStruct(value: item["name"].toString(), checked: false));
  }
  return list;
}

double? minList(List<int> numbers) {
  return numbers.reduce((a, b) => a < b ? a : b).toDouble();
}

double? maxList(List<int> numbers) {
  return numbers.reduce((a, b) => a > b ? a : b).toDouble();
}

List<int> convertJsonStringToIntLIST(List<dynamic> data) {
  List<int> encoded = [];

  int encoded_item = 0;

  for (int i = 0; i < data.length; i++) {
    encoded_item = int.parse(data[i].toString());

    encoded.add(encoded_item);
  }

  return data[0];
}

List<dynamic>? filterJsonRange(
  List<dynamic> data,
  double start,
  double end,
) {
  final filteredJson = data.where((element) {
    return element['min_price'] >= start && element['min_price'] <= end;
  }).toList();

  return filteredJson;
}

List<PropertyValuesStruct> converttoPropArray(List<dynamic> startArray) {
  // // convert json array with 1 parametr to datatype PropertyValues with 2 parametrs
  List<PropertyValuesStruct> result = [];
  for (var item in startArray) {
    result.add(PropertyValuesStruct(value: item.toString(), checked: false));
  }
  return result;
}

List<LatLng> parseLatLngFromJsonList(List<dynamic> locations) {
  List<LatLng> markers = [];

  for (var loc in locations) {
    // Прямое преобразование строк в double
    var lat = double.parse(loc['location']['latitude'].toString());
    var lon = double.parse(loc['location']['longitude'].toString());

    // Создаем объект LatLng правильно
    LatLng pre = LatLng(lat, lon);
    markers.add(pre);
  }

  // Возвращаем список объектов LatLng
  return markers;
}

List<dynamic> propertyValues2Json(List<PropertyValuesStruct> startvalue) {
  // convert var dd PropertyValues DataType to  json array
  List<dynamic> jsonList = [];
  for (var item in startvalue) {
    Map<String, dynamic> jsonMap = {
      'checked': item.checked,
      'value': item.value,
    };
    jsonList.add(jsonMap);
  }
  return jsonList;
}

List<DeliveryPointsStruct> parseLatLngFromJsontoDP(List<dynamic> locations) {
  List<DeliveryPointsStruct> markers = [];
  FirebaseFirestore db =
      FirebaseFirestore.instance; // Получаем экземпляр Firestore

  for (var loc in locations) {
    var lat = loc['location']['latitude'].toString();
    var lon = loc['location']['longitude'].toString();

    final double latitud = double.parse(lat);
    final double longitud = double.parse(lon);

    // Создаем объект LatLng правильно
    LatLng coords = LatLng(latitud, longitud);
    DeliveryPointsStruct marker = DeliveryPointsStruct(
        address: loc['location']['address'],
        addressFull: loc['location']['address_full'],
        codePvz: loc['code'],
        name: loc['name'],
        nearestStation: loc['nearest_station'],
        city: loc['location']['city'],
        workTime: loc['work_time'],
        type: loc['type'],
        ownerCode: loc['owner_code'],
        coordinates: coords);

    markers.add(marker);
    print("Добавлен ПВЗ $marker.name");
    // Добавление документа в коллекцию Firestore
    db.collection('deliveryPoints').doc(marker.codePvz).set({
      'address': marker.address,
      'address_full': marker.addressFull,
      'code_pvz': marker.codePvz,
      'name': marker.name,
      'nearest_station': marker.nearestStation,
      'city': marker.city,
      'work_time': marker.workTime,
      'type': marker.type,
      'owner_code': marker.ownerCode,
      'coordinates': coords,
    });
  }

  return markers;
}

bool containsIString(
  String pattern,
  String mainString,
) {
  if (pattern == null || pattern.isEmpty || pattern.length < 3)
    return true;
  else
    return mainString.toLowerCase().contains(pattern.toLowerCase());
}

List<dynamic>? getFilteredItems(
  List<dynamic> productData,
  List<PropertyValuesStruct>? brandDict,
  List<PropertyValuesStruct>? countryDict,
  List<PropertyValuesStruct>? parfumerDict,
  List<PropertyValuesStruct>? productTypeDict,
  List<PropertyValuesStruct>? genderDict,
  List<PropertyValuesStruct>? family,
  String? selectedDict,
  String? selectedValue,
) {
  List<dynamic> filteredKeys = [];

  for (var item in productData) {
    if (item[selectedDict] == selectedValue) {
      filteredKeys.add(item);
    }
  }

  int totalFilteredItems = filteredKeys.length;

  return filteredKeys;
}

List<dynamic> sortProducts(
  List<dynamic> products,
  String sortby,
) {
  List<dynamic> products_sorted = List.from(
      products); // Создаем копию списка для избежания изменения исходного списка

  int compareProducts(dynamic a, dynamic b) {
    // Сначала сортируем по полю "available"
    if (a["available"] == "Y" && b["available"] != "Y") {
      return -1; // Помещаем элемент с "available" равным "Y" в начало списка
    } else if (a["available"] != "Y" && b["available"] == "Y") {
      return 1; // Помещаем элемент с "available" равным "Y" в начало списка
    } else {
      // Если "available" одинаково или оба равны "N", сортируем по полю "sortby"
      return a[sortby].compareTo(b[sortby]);
    }
  }

  // Сортируем массив объектов
  products_sorted.sort(compareProducts);

  return products_sorted;
}

int strLength(String styr) {
  return styr.length;
}

List<OfferInfoStruct>? jsonToOffersList(List<dynamic>? offersJson) {
  if (offersJson == null) return null;

  List<OfferInfoStruct> offersList = [];

  for (var item in offersJson) {
    /*
    // Проверяем, существует ли ключ 'color' и не является ли он пустым
    String? colorHex = item['color'] != null && item['color_name'] != ''
        ? item['color'].toString().toUpperCase().replaceAll('#',
            '') // Преобразуем строку цвета в верхний регистр и удаляем символ #
        : null;

    // Проверяем длину шестнадцатеричной строки
    if (colorHex != null && colorHex.length != 6) {
      // Некорректное представление цвета, пропускаем
      continue;
    }

    // Преобразуем строку в шестнадцатеричном формате в объект Color, если она не пустая
    Color? color = colorHex != null
        ? Color(int.parse(colorHex,
            radix: 16)) // Преобразуем шестнадцатеричное значение в Color
        : null;
*/
    OfferInfoStruct offer = OfferInfoStruct(
      id: item['id'],
      name: item['name'],
      volume: item['volume'] != null ? item['volume'] : '',
      color: item['color'].toString(),
      colorName: item['color_name'] != null ? item['color_name'] : '',
      strihcode: item['strihcode'].toString(),
      referenceOffer:
          item['reference'] != null ? item['reference'].toString() : '',
      available: item['available'],
      rPrice: item['r_price'],
      iPrice: item['i_price'],
      specPrice: item['spec_price_offer'],
      blackPrice: item['black_price_offer'],
      goldPrice: item['gold_price_offer'],
      infinityPrice: item['infinity_price_offer'],
      vipPrice: item['vip_price_offer'],
      xmlIDOffer: item['xml_id'],
      discName: item['discount_name'],
      discType: item['discount_type'],
      discValue: item['discount_value'].toString(),
    );
    offersList.add(offer);
  }

  //return (offersList.first.name);
  return offersList;
}

String? intToString(int? number) {
  return number.toString();
}

int stringtoInt(String str) {
  return int.parse(str);
}

String getMinPriceFromOffers(
  List<OfferInfoStruct> offers,
  String cardType,
) {
  // return Min value of key which depend of cardType
  num minPrice = double.infinity;

  for (final offer in offers) {
    switch (cardType.toLowerCase().trim()) {
      case 'black':
        if (offer.blackPrice != null && offer.blackPrice < minPrice) {
          minPrice = offer.blackPrice;
        }
        break;
      case 'gold':
        if (offer.goldPrice != null && offer.goldPrice < minPrice) {
          minPrice = offer.goldPrice;
        }
        break;
      case 'infinity':
        if (offer.infinityPrice != null && offer.infinityPrice < minPrice) {
          minPrice = offer.infinityPrice;
        }
        break;
      case 'vip':
        if (offer.vipPrice != null && offer.vipPrice < minPrice) {
          minPrice = offer.vipPrice;
        }
        break;
    }
  }

  // Проверяем, осталось ли minPrice равным infinity, что означает отсутствие действительных предложений
  if (minPrice == double.infinity) {
    return "0";
  }

  return minPrice.toString();
}

LatLng? parseLatLngFromJson(
  String? latitud,
  String? longitud,
) {
  var lat = latitud.toString();
  var lon = longitud.toString();
  final double latitude = double.parse(lat);
  final double longitude = double.parse(lon);

  // Возвращаем объект LatLng
  return LatLng(latitude, longitude);
}

dynamic getGoogleMapObject(
  LatLng coordinates,
  List<dynamic> jsonObjects,
  double radius,
) {
  const double earthRadius = 6371000; // Радиус Земли в метрах

  print(
      'координаты: широта: $coordinates.latitude долгота: $coordinates.longitude');
  for (dynamic jsonObject in jsonObjects) {
    if (jsonObject['location']['latitude'] != null &&
        jsonObject['location']['longitude'] != null) {
      final double lat =
          double.parse(jsonObject['location']['latitude'].toString());
      final double lon =
          double.parse(jsonObject['location']['longitude'].toString());

      print(
          'текущие координаты: широта: $lat.toString() latitude долгота: $lon.toString()');
      // Прямое вычисление разницы в радианах
      double dLat = (coordinates.latitude - lat) * (math.pi / 180.0);
      double dLon = (coordinates.longitude - lon) * (math.pi / 180.0);
      double a = math.sin(dLat / 2) * math.sin(dLat / 2) +
          math.cos(lat * (math.pi / 180.0)) *
              math.cos(coordinates.latitude * (math.pi / 180.0)) *
              math.sin(dLon / 2) *
              math.sin(dLon / 2);
      double c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));
      double distance = earthRadius * c;

      // Проверяем, находится ли расстояние в пределах радиуса
      if (distance <= radius) {
        print("Нашли!!!!");
        return jsonObject;
      }
    }
  }
  return null;
}

List<DateTime> calculateDateRange(
  int minDay,
  int maxDay,
) {
  DateTime now = DateTime.now(); // Текущая дата и время
  DateTime startDate = now.add(Duration(days: minDay)); // Дата "от"
  DateTime endDate = now.add(Duration(days: maxDay)); // Дата "до"

  return [startDate, endDate]; // Возвращаем список с двумя датами
}
