import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_basket_bottom_sheet_comp_widget.dart'
    show AddBasketBottomSheetCompWidget;
import 'package:flutter/material.dart';

class AddBasketBottomSheetCompModel
    extends FlutterFlowModel<AddBasketBottomSheetCompWidget> {
  ///  Local state fields for this component.

  String? prName;

  String? prBrand;

  String? prVar;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - findItemInBasket] action in IconButton widget.
  DocumentReference? isAddedReference2;
  // Stores action output result for [Custom Action - addItemtoBasket] action in IconButton widget.
  BasketStruct? addBasket2;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  BasketRecord? newBasketItemFB2;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  BasketRecord? newBasketItemFB3;
  // Stores action output result for [Custom Action - countBasketVarsCopy] action in IconButton widget.
  BasketMainStruct? baskMain4upd2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
