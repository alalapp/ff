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

Future refreshPropDict(
  BuildContext context,
) async {
  // start action

  FFAppState().update(() {
    FFAppState().brandProp2.forEach((element) => element.checked = false);
    FFAppState().familyProp2.forEach((element) => element.checked = false);
    FFAppState().parfumerProp2.forEach((element) => element.checked = false);
    FFAppState().genderProp2.forEach((element) => element.checked = false);
    FFAppState().productTypeProp2.forEach((element) => element.checked = false);
    FFAppState().countryProp2.forEach((element) => element.checked = false);

    FFAppState().fBrand = 0;
    FFAppState().fFamily = 0;
    FFAppState().fCountry = 0;
    FFAppState().fTypeProduct = 0;
    FFAppState().fGender = 0;
    FFAppState().fParfumer = 0;
  });
} //end action
