import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'product_card_comp_widget.dart' show ProductCardCompWidget;
import 'package:flutter/material.dart';

class ProductCardCompModel extends FlutterFlowModel<ProductCardCompWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (getOffersNew)] action in IconButton widget.
  ApiCallResponse? offersRes;
  // Stores action output result for [Custom Action - findItemInBasket] action in IconButton widget.
  DocumentReference? isAddedReference3;
  // Stores action output result for [Custom Action - addItemtoBasket] action in IconButton widget.
  BasketStruct? addBasket3;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  BasketRecord? newBasketItemFB4;
  // Stores action output result for [Custom Action - countBasketVarsCopy] action in IconButton widget.
  BasketMainStruct? baskMain4upd3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
