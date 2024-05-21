import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/nav_bar_custom_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'basket_page_widget.dart' show BasketPageWidget;
import 'package:flutter/material.dart';

class BasketPageModel extends FlutterFlowModel<BasketPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in basketPage widget.
  List<BasketRecord>? basketRes;
  // Stores action output result for [Custom Action - updateBasket] action in basketPage widget.
  bool? updBasketRes;
  // Stores action output result for [Backend Call - API (getInfoProductNEW)] action in Image widget.
  ApiCallResponse? apiResultmop;
  // Model for NavBarCustom component.
  late NavBarCustomModel navBarCustomModel1;
  // Model for NavBarCustom component.
  late NavBarCustomModel navBarCustomModel2;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  BasketMainRecord? newBasket111;

  @override
  void initState(BuildContext context) {
    navBarCustomModel1 = createModel(context, () => NavBarCustomModel());
    navBarCustomModel2 = createModel(context, () => NavBarCustomModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navBarCustomModel1.dispose();
    navBarCustomModel2.dispose();
  }
}
