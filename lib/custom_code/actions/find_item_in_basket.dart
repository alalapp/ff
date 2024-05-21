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

Future<DocumentReference?> findItemInBasket(
  String? xmlvariant,
  DocumentReference uid,
) async {
  // load firebase document from basket_main collection where Reference is refVar and sum kol_products

  QuerySnapshot querySnapshot = await FirebaseFirestore.instance
      .collection('basket_main')
      .doc(uid.id)
      .collection('basket')
      .where('xml_id_variant', isEqualTo: xmlvariant)
      .get();

  if (querySnapshot.docs.length > 0)
    return querySnapshot.docs.first.reference;
  else
    return null;
}
