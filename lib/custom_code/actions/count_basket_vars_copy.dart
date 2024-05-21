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

Future<BasketMainStruct> countBasketVarsCopy(DocumentReference uid) async {
  // receive Query from basket collection where userID=UID and sum all integer variables
// Assuming the basket collection has the following fields:
// userID (String), item (String), quantity (int), price (int)

  num total = 0;
  num total_r = 0;
  num kolproducts = 0;
  num total_discount = 0;

  QuerySnapshot querySnapshot = await FirebaseFirestore.instance
      .collection('basket_main')
      .doc(uid.id)
      .collection('basket')
      .get();

  //kolproducts = querySnapshot.docs.length;

  for (int i = 0; i < querySnapshot.docs.length; i++) {
    kolproducts += querySnapshot.docs[i]['kolvo'];
    num buff_col = querySnapshot.docs[i]['kolvo'];
    total += querySnapshot.docs[i]['user_price'] * buff_col;
    total_r += querySnapshot.docs[i]['r_price'] * buff_col;
    total_discount += querySnapshot.docs[i]['discount_sum'];
  }

  Map<String, dynamic> data = Map<String, dynamic>();
  data['total'] = total;
  data['total_r'] = total_r;
  data['total_discount'] = total_discount;
  data['kol_products'] = kolproducts;
  return BasketMainStruct.fromMap(data);
}
