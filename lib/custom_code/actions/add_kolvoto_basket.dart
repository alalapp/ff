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

Future<DocumentReference?> addKolvotoBasket(
    DocumentReference uid, String? xmlvariant) async {
  // receive Query from basket collection where userID=UID and sum all integer variables
// Assuming the basket collection has the following fields:
// userID (String), item (String), quantity (int), price (int)

  QuerySnapshot querySnapshot = await FirebaseFirestore.instance
      .collection('basket_main')
      .doc(uid.id)
      .collection('basket')
      .get();

  //kolproducts = querySnapshot.docs.length;
  DocumentReference? doc_id = null;
  for (int i = 0; i < querySnapshot.docs.length; i++) {
    if (querySnapshot.docs[i]['xml_id_variant'] == xmlvariant)
      doc_id = querySnapshot.docs[i].reference;
  }

  return doc_id;
}
