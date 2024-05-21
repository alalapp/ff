import '/backend/api_requests/api_calls.dart';
import '/components/goods_items_list_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ras_price_page_widget.dart' show RasPricePageWidget;
import 'package:flutter/material.dart';

class RasPricePageModel extends FlutterFlowModel<RasPricePageWidget> {
  ///  Local state fields for this page.

  bool searchActive = true;

  int codeResult = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for find_goods_field widget.
  FocusNode? findGoodsFieldFocusNode;
  TextEditingController? findGoodsFieldTextController;
  String? Function(BuildContext, String?)?
      findGoodsFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (FindGoods)] action in Button widget.
  ApiCallResponse? findGoodsRes;
  // Model for GoodsItemsListComp component.
  late GoodsItemsListCompModel goodsItemsListCompModel;

  @override
  void initState(BuildContext context) {
    goodsItemsListCompModel =
        createModel(context, () => GoodsItemsListCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    findGoodsFieldFocusNode?.dispose();
    findGoodsFieldTextController?.dispose();

    goodsItemsListCompModel.dispose();
  }
}
