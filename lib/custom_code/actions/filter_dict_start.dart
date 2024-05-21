// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<dynamic>?> filterDictStart(
  BuildContext context,
  List<dynamic> nonFilteredArray,
  String dictName,
) async {
  // start action
  List<dynamic> selectedItems = [];

  List<String> brandKeys = [];
  List<String> countryKeys = [];
  List<String> familyKeys = [];
  List<String> parfumerKeys = [];
  List<String> productTypeKeys = [];
  List<String> genderKeys = [];
  int countItems = 0;
  FFAppState().update(() {
    FFAppState().fBrand = 0;
    FFAppState().fCountry = 0;
    FFAppState().fFamily = 0;
    FFAppState().fParfumer = 0;
    FFAppState().fGender = 0;
    FFAppState().fTypeProduct = 0;
  });

  if (dictName != 'brand') {
    for (var item in FFAppState().brandProp2) {
      item.active = false;
      if (item.checked) {
        item.active = true;
        brandKeys.add(item.value);
        FFAppState().update(() {
          FFAppState().fBrand++;
        });
      }
    }
  } else {
    for (var item in FFAppState().brandProp2) {
      if (item.checked) {
        brandKeys.add(item.value);
        FFAppState().update(() {
          FFAppState().fBrand++;
        });
      }
    }
  }

  if (dictName != 'country') {
    for (var item in FFAppState().countryProp2) {
      item.active = false;
      if (item.checked) {
        item.active = true;
        countryKeys.add(item.value);
        FFAppState().update(() {
          FFAppState().fCountry++;
        });
      }
    }
  } else {
    for (var item in FFAppState().countryProp2) {
      if (item.checked) {
        countryKeys.add(item.value);
        FFAppState().update(() {
          FFAppState().fCountry++;
        });
      }
    }
  }
  if (dictName != 'family') {
    for (var item in FFAppState().familyProp2) {
      item.active = false;
      if (item.checked) {
        item.active = true;
        familyKeys.add(item.value);
        FFAppState().update(() {
          FFAppState().fFamily++;
        });
      }
    }
  } else {
    for (var item in FFAppState().familyProp2) {
      if (item.checked) {
        familyKeys.add(item.value);
        FFAppState().update(() {
          FFAppState().fFamily++;
        });
      }
    }
  }
  if (dictName != 'parfumer') {
    for (var item in FFAppState().parfumerProp2) {
      item.active = false;
      if (item.checked) {
        item.active = true;
        parfumerKeys.add(item.value);
        FFAppState().update(() {
          FFAppState().fParfumer++;
        });
      }
    }
  } else {
    for (var item in FFAppState().parfumerProp2) {
      if (item.checked) {
        parfumerKeys.add(item.value);
        FFAppState().update(() {
          FFAppState().fParfumer++;
        });
      }
    }
  }
  if (dictName != 'gender') {
    for (var item in FFAppState().genderProp2) {
      item.active = false;

      if (item.checked) {
        item.active = true;
        genderKeys.add(item.value);
        FFAppState().update(() {
          FFAppState().fGender++;
        });
      }
    }
  } else {
    for (var item in FFAppState().genderProp2) {
      if (item.checked) {
        genderKeys.add(item.value);
        FFAppState().update(() {
          FFAppState().fGender++;
        });
      }
    }
  }

  if (dictName != 'type_product') {
    for (var item in FFAppState().productTypeProp2) {
      item.active = false;

      if (item.checked) {
        item.active = true;
        productTypeKeys.add(item.value);
        FFAppState().update(() {
          FFAppState().fTypeProduct++;
        });
      }
    }
  } else {
    for (var item in FFAppState().productTypeProp2) {
      if (item.checked) {
        productTypeKeys.add(item.value);
        FFAppState().update(() {
          FFAppState().fTypeProduct++;
        });
      }
    }
  }

  for (var product in nonFilteredArray) {
    if ((!(brandKeys.length == 0)
            ? isContains('brand',
                product['brand'].toString().trim().toLowerCase(), brandKeys)
            : true) &&
        (!(countryKeys.length == 0)
            ? isContains('country',
                product['country'].toString().trim().toLowerCase(), countryKeys)
            : true) &&
        (!(productTypeKeys.length == 0)
            ? isContains(
                'product_type',
                product['type_product'].toString().trim().toLowerCase(),
                productTypeKeys)
            : true) &&
        (!(genderKeys.length == 0)
            ? isContains('gender',
                product['sex'].toString().trim().toLowerCase(), genderKeys)
            : true) &&
        (!(parfumerKeys.length == 0)
            ? isContains(
                'parfumer',
                product['parfumer'].toString().trim().toLowerCase(),
                parfumerKeys)
            : true) &&
        (!(familyKeys.length == 0)
            ? isContains('family',
                product['family'].toString().trim().toLowerCase(), familyKeys)
            : true)) selectedItems.add(product);

    if ((!(brandKeys.length == 0)
            ? isContains('brand',
                product['brand'].toString().trim().toLowerCase(), brandKeys)
            : true) &&
        (!(countryKeys.length == 0)
            ? isContains('country',
                product['country'].toString().trim().toLowerCase(), countryKeys)
            : true) &&
        (!(productTypeKeys.length == 0)
            ? isContains(
                'product_type',
                product['type_product'].toString().trim().toLowerCase(),
                productTypeKeys)
            : true) &&
        (!(genderKeys.length == 0)
            ? isContains('gender',
                product['sex'].toString().trim().toLowerCase(), genderKeys)
            : true) &&
        (!(parfumerKeys.length == 0)
            ? isContains(
                'parfumer',
                product['parfumer'].toString().trim().toLowerCase(),
                parfumerKeys)
            : true) &&
        (!(familyKeys.length == 0)
            ? isContains('family',
                product['family'].toString().trim().toLowerCase(), familyKeys)
            : true) &&
        ((FFAppState().brandfilter.showUnavailable == 'Y')
            ? product['available'] == 'Y' || product['available'] == 'N'
            : product['available'] == 'Y')) countItems++;
  }

// бренды

  for (var item in selectedItems) {
    for (var dtItem in FFAppState().brandProp2) {
      if (dtItem.value.trim().toLowerCase() ==
          item['brand'].toString().trim().toLowerCase()) {
        dtItem.active = true;
      }
    }
  }
// страны

  for (var item in selectedItems) {
    for (var dtItem in FFAppState().countryProp2) {
      if (dtItem.value.trim().toLowerCase() ==
          item['country'].toString().trim().toLowerCase()) {
        dtItem.active = true;
      }
    }
  }
// тип продукции

  for (var item in selectedItems) {
    for (var dtItem in FFAppState().productTypeProp2) {
      if (dtItem.value.trim().toLowerCase() ==
          item['type_product'].toString().trim().toLowerCase()) {
        dtItem.active = true;
      }
    }
  }
// пол

  for (var item in selectedItems) {
    for (var dtItem in FFAppState().genderProp2) {
      if (dtItem.value.trim().toLowerCase() ==
          item['sex'].toString().trim().toLowerCase()) {
        dtItem.active = true;
      }
    }
  }
// парфюмер

  for (var item in selectedItems) {
    for (var dtItem in FFAppState().parfumerProp2) {
      List<String> parfumerValues = item['parfumer']?.split(',') ?? [];
      if (parfumerValues.length > 0) {
        for (var parfItem in parfumerValues) {
          if (dtItem.value.trim().toLowerCase() ==
              parfItem.trim().toLowerCase()) {
            dtItem.active = true;
          }
        }
      }
    }
  }
// семейства

  for (var item in selectedItems) {
    for (var dtItem in FFAppState().familyProp2) {
      List<String> familyValues = item['family']?.split(',') ?? [];
      if (familyValues.length > 0) {
        for (var famItem in familyValues) {
          if (dtItem.value.trim().toLowerCase() ==
              famItem.trim().toLowerCase()) {
            dtItem.active = true;
          }
        }
      }
    }
  }

  if (selectedItems.length >= 0) {
    FFAppState().update(() {
      FFAppState().totalFilteredItems = countItems;
    });
    return selectedItems;
  } else {
    return null;
  }
}

bool isContains(String dict, String? dictValue, List<String> keysDict) {
  bool isC = false;
  switch (dict) {
    case 'parfumer':
      for (var dtItem in keysDict) {
        List<String> parfValues = dictValue?.split(',') ?? [];
        if (parfValues.length > 0) {
          for (var parfItem in parfValues) {
            if (dtItem.trim().toLowerCase() == parfItem.trim().toLowerCase()) {
              isC = true;
              break;
            }
          }
        }
      }
      break;

    case 'family':
      for (var dtItem in keysDict) {
        List<String> familyValues = dictValue?.split(',') ?? [];
        if (familyValues.length > 0) {
          for (var famItem in familyValues) {
            if (dtItem.trim().toLowerCase() == famItem.trim().toLowerCase()) {
              isC = true;
              break;
            }
          }
        }
      }
      break;

    default:
      for (var dtItem in keysDict) {
        if (dtItem.trim().toLowerCase() == dictValue.toString()) {
          isC = true;
          //    break;
        }
      }
      break;
  }

  return isC;
}

//end action
