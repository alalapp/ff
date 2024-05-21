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

Future<List<dynamic>?> filterDataDictChange(
  BuildContext context,
  List<dynamic> nonFilteredArray,
  String dictName,
) async {
  // start action
  List<dynamic> selectedItems = [];
  bool checkedExists = false;
  List<String> brandKeys = [];
  List<String> countryKeys = [];
  List<String> familyKeys = [];
  List<String> parfumerKeys = [];
  List<String> productTypeKeys = [];
  List<String> genderKeys = [];

  if (dictName != 'brand') {
    FFAppState().update(() {
      FFAppState().fBrand = 0;
    });
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
  }
  if (dictName != 'country') {
    FFAppState().update(() {
      FFAppState().fCountry = 0;
    });
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
  }
  if (dictName != 'family') {
    FFAppState().update(() {
      FFAppState().fFamily = 0;
    });
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
  }
  if (dictName != 'parfumer') {
    FFAppState().update(() {
      FFAppState().fParfumer = 0;
    });

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
  }
  if (dictName != 'gender') {
    FFAppState().update(() {
      FFAppState().fGender = 0;
    });
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
  }
  if (dictName != 'type_product') {
    FFAppState().update(() {
      FFAppState().fTypeProduct = 0;
    });
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
  }

  switch (dictName) {
    case 'brand':
      {
        for (var item in nonFilteredArray) {
          for (var dictValue in FFAppState().brandProp2) {
            if (dictValue.checked &&
                item['brand'].toString().trim().toLowerCase() ==
                    dictValue.value.trim().toLowerCase()) {
              selectedItems.add(item);
              checkedExists = true;
            }
          }
        }

        if (!checkedExists) {
          selectedItems = List.from(nonFilteredArray);
        }

        break;
      }

    case 'family':
      {
        for (var item in nonFilteredArray) {
          for (var dictValue in FFAppState().familyProp2) {
            List<String> familyValues = item['family']?.split(',') ?? [];
            if (familyValues.length > 0) {
              for (var famItem in familyValues) {
                if (dictValue.checked &&
                    famItem.trim().toLowerCase() ==
                        dictValue.value.trim().toLowerCase()) {
                  selectedItems.add(item);
                  checkedExists = true;
                }
              }
            }
          }
        }

        if (!checkedExists) {
          selectedItems = List.from(nonFilteredArray);
        }

        break;
      }
    case 'country':
      {
        for (var item in nonFilteredArray) {
          for (var dictValue in FFAppState().countryProp2) {
            if (dictValue.checked &&
                item['country'].toString().trim().toLowerCase() ==
                    dictValue.value.trim().toLowerCase()) {
              selectedItems.add(item);
              checkedExists = true;
            }
          }
        }

        if (!checkedExists) {
          selectedItems = List.from(nonFilteredArray);
        }

        break;
      }

    case 'type_product':
      {
        for (var item in nonFilteredArray) {
          for (var dictValue in FFAppState().productTypeProp2) {
            if (dictValue.checked &&
                item['type_product'].toString().trim().toLowerCase() ==
                    dictValue.value.trim().toLowerCase()) {
              selectedItems.add(item);
              checkedExists = true;
            }
          }
        }

        if (!checkedExists) {
          selectedItems = List.from(nonFilteredArray);
        }

        break;
      }

    case 'parfumer':
      {
        for (var item in nonFilteredArray) {
          for (var dictValue in FFAppState().parfumerProp2) {
            List<String> parfumerValues = item['parfumer']?.split(',') ?? [];
            if (parfumerValues.length > 0) {
              for (var parfItem in parfumerValues) {
                if (dictValue.checked &&
                    parfItem.trim().toLowerCase() ==
                        dictValue.value.trim().toLowerCase()) {
                  selectedItems.add(item);
                  checkedExists = true;
                }
              }
            }
          }
        }

        if (!checkedExists) {
          selectedItems = List.from(nonFilteredArray);
        }

        break;
      }

    case 'gender':
      {
        for (var item in nonFilteredArray) {
          for (var dictValue in FFAppState().genderProp2) {
            if (dictValue.checked &&
                item['sex'].toString().trim().toLowerCase() ==
                    dictValue.value.trim().toLowerCase()) {
              selectedItems.add(item);
              checkedExists = true;
            }
          }
        }

        if (!checkedExists) {
          selectedItems = List.from(nonFilteredArray);
        }

        break;
      }
  }

// бренды
  int i = 0;
  if (dictName != 'brand') {
    for (var item in selectedItems) {
      for (var dtItem in FFAppState().brandProp2) {
        if (dtItem.value.trim().toLowerCase() ==
            item['brand'].toString().trim().toLowerCase()) {
          i++;
          dtItem.active = true;
        }
      }
    }
  }

  if (dictName != 'country') {
// страны
    i = 0;
    for (var item in selectedItems) {
      for (var dtItem in FFAppState().countryProp2) {
        if (dtItem.value.trim().toLowerCase() ==
            item['country'].toString().trim().toLowerCase()) {
          i++;
          dtItem.active = true;
        }
      }
    }
  }
  if (dictName != 'type_product') {
// тип продукции
    i = 0;
    for (var item in selectedItems) {
      for (var dtItem in FFAppState().productTypeProp2) {
        if (dtItem.value.trim().toLowerCase() ==
            item['type_product'].toString().trim().toLowerCase()) {
          i++;
          dtItem.active = true;
        }
      }
    }
  }
  if (dictName != 'gender') {
// пол
    i = 0;
    for (var item in selectedItems) {
      for (var dtItem in FFAppState().genderProp2) {
        if (dtItem.value.trim().toLowerCase() ==
            item['sex'].toString().trim().toLowerCase()) {
          i++;
          dtItem.active = true;
        }
      }
    }
  }
  if (dictName != 'parfumer') {
// парфюмер
    i = 0;
    for (var item in selectedItems) {
      for (var dtItem in FFAppState().parfumerProp2) {
        List<String> parfumerValues = item['parfumer']?.split(',') ?? [];
        if (parfumerValues.length > 0) {
          for (var parfItem in parfumerValues) {
            if (dtItem.value.trim().toLowerCase() ==
                parfItem.trim().toLowerCase()) {
              i++;
              dtItem.active = true;
            }
          }
        }
      }
    }
  }
  if (dictName != 'family') {
// семейства
    i = 0;
    for (var item in selectedItems) {
      for (var dtItem in FFAppState().familyProp2) {
        List<String> familyValues = item['family']?.split(',') ?? [];
        if (familyValues.length > 0) {
          for (var famItem in familyValues) {
            if (dtItem.value.trim().toLowerCase() ==
                famItem.trim().toLowerCase()) {
              i++;
              dtItem.active = true;
            }
          }
        }
      }
    }
  }
  if (selectedItems.length >= 0) {
    return selectedItems;
  } else {
    return null;
  }
}

//end action
