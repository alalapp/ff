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

import 'package:collection/collection.dart';

Future filterDataDict(
  BuildContext context,
  List<dynamic> nonFilteredArray,
) async {
  // start action

  List<String> brandKeys = [];
  List<String> countryKeys = [];
  List<String> familyKeys = [];
  List<String> parfumerKeys = [];
  List<String> productTypeKeys = [];
  List<String> genderKeys = [];

  FFAppState().update(() {
    FFAppState().fCountry = 0;
    FFAppState().fBrand = 0;
    FFAppState().fFamily = 0;
    FFAppState().fParfumer = 0;
    FFAppState().fGender = 0;
    FFAppState().fTypeProduct = 0;
  });

  int i = 0;

  for (var item in FFAppState().brandProp2) {
    item.active = false;
    if (item.checked) {
      brandKeys.add(item.value);
      FFAppState().update(() {
        FFAppState().fBrand++;
      });
    }
  }

  for (var item in FFAppState().countryProp2) {
    item.active = false;
    if (item.checked) {
      countryKeys.add(item.value);
      FFAppState().update(() {
        FFAppState().fCountry++;
      });
    }
  }

  for (var item in FFAppState().familyProp2) {
    item.active = false;
    if (item.checked) {
      familyKeys.add(item.value);
      FFAppState().update(() {
        FFAppState().fFamily++;
      });
    }
  }

  for (var item in FFAppState().parfumerProp2) {
    item.active = false;
    if (item.checked) {
      parfumerKeys.add(item.value);
      FFAppState().update(() {
        FFAppState().fParfumer++;
      });
    }
  }

  for (var item in FFAppState().genderProp2) {
    item.active = false;
    if (item.checked) {
      genderKeys.add(item.value);
      FFAppState().update(() {
        FFAppState().fGender++;
      });
    }
  }

  for (var item in FFAppState().productTypeProp2) {
    item.active = false;
    if (item.checked) {
      productTypeKeys.add(item.value);
      FFAppState().update(() {
        FFAppState().fTypeProduct++;
      });
    }
  }

// бренды

  i = 0;
  for (var item in nonFilteredArray) {
    for (var dtItem in FFAppState().brandProp2) {
      if (dtItem.value.trim().toLowerCase() ==
          item['brand'].toString().trim().toLowerCase()) {
        i++;
        dtItem.active = true;
      }
    }
  }

  FFAppState().update(() {
    if (i == 0) {
      FFAppState().isBrandProp = false;
    } else {
      FFAppState().isBrandProp = true;
    }
  });

// семейства
  i = 0;
  for (var item in nonFilteredArray) {
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

  FFAppState().update(() {
    if (i == 0) {
      FFAppState().isFamilyProp = false;
    } else {
      FFAppState().isFamilyProp = true;
    }
  });

// страны
  i = 0;
  for (var item in nonFilteredArray) {
    for (var dtItem in FFAppState().countryProp2) {
      if (dtItem.value.trim().toLowerCase() ==
          item['country'].toString().trim().toLowerCase()) {
        i++;
        dtItem.active = true;
      }
    }
  }

  FFAppState().update(() {
    if (i == 0) {
      FFAppState().isCountryProp = false;
    } else {
      FFAppState().isCountryProp = true;
    }
  });

// тип продукции
  i = 0;
  for (var item in nonFilteredArray) {
    for (var dtItem in FFAppState().productTypeProp2) {
      if (dtItem.value.trim().toLowerCase() ==
          item['type_product'].toString().trim().toLowerCase()) {
        i++;
        dtItem.active = true;
      }
    }
  }

  FFAppState().update(() {
    if (i == 0) {
      FFAppState().isProductTypeProp = false;
    } else {
      FFAppState().isProductTypeProp = true;
    }
  });
// пол
  i = 0;
  for (var item in nonFilteredArray) {
    for (var dtItem in FFAppState().genderProp2) {
      if (dtItem.value.trim().toLowerCase() ==
          item['sex'].toString().trim().toLowerCase()) {
        i++;
        dtItem.active = true;
      }
    }
  }

  FFAppState().update(() {
    if (i == 0) {
      FFAppState().isGenderProp = false;
    } else {
      FFAppState().isGenderProp = true;
    }
  });
// парфюмер
  i = 0;
  for (var item in nonFilteredArray) {
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

  FFAppState().update(() {
    if (i == 0) {
      FFAppState().isParfumerProp = false;
    } else {
      FFAppState().isParfumerProp = true;
    }
  });

////// NEWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
  ////////
  ///////////////////////
  ///////////////////////////////////

  List<dynamic> selectedItems = [];
  bool checkedExists = false;

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

// бренды
  i = 0;
  for (var item in selectedItems) {
    for (var dtItem in FFAppState().brandProp2) {
      if (dtItem.value.trim().toLowerCase() ==
          item['brand'].toString().trim().toLowerCase()) {
        i++;
        dtItem.active = true;
      }
    }
  }

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
/*
  FFAppState().update(() {
    if (FFAppState().totalFilteredItems != selectedItems.length &&
        selectedItems.length != 0)
      FFAppState().totalFilteredItems =
          FFAppState().totalFilteredItems - selectedItems.length;
    else
      FFAppState().totalFilteredItems = selectedItems.length;
  });
*/
  ////// NEWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
  ////////
  ///////////////////////
  ///////////////////////////////////
} //end action
