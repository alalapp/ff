import '/components/items_list_result_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ras_price_info_page_widget.dart' show RasPriceInfoPageWidget;
import 'package:flutter/material.dart';

class RasPriceInfoPageModel extends FlutterFlowModel<RasPriceInfoPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ItemsListResultComp component.
  late ItemsListResultCompModel itemsListResultCompModel;

  @override
  void initState(BuildContext context) {
    itemsListResultCompModel =
        createModel(context, () => ItemsListResultCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    itemsListResultCompModel.dispose();
  }
}
