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

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
Future<BasketStruct> addItemtoBasket(
    String? xmlProduct,
    String? xmlVariant,
    int? idProduct,
    int? idVariant,
    String? productName,
    String? variantName,
    String? volumeFull,
    String? volumeCut,
    String? colorName,
    int? kolvo,
    int? rPrice,
    int? userPrice,
    int? discount,
    int? discountSum,
    String? image,
    Color? color) async {
  // return data of BASKET DataType using all arguments
  BasketStruct basketData = BasketStruct(
      xmlIdProduct: xmlProduct,
      xmlIdVariant: xmlVariant,
      idProduct: idProduct,
      idVariant: idVariant,
      productName: productName,
      variantName: variantName,
      volumeFull: volumeFull,
      volumeCut: volumeCut,
      colorName: colorName,
      kolvo: kolvo,
      rPrice: rPrice,
      userPrice: userPrice,
      discount: discount,
      discountSum: discountSum,
      image: image,
      color: color);

  print(basketData.xmlIdVariant);
  return basketData;
}
