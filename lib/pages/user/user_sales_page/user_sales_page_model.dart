import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_sales_page_widget.dart' show UserSalesPageWidget;
import 'package:flutter/material.dart';

class UserSalesPageModel extends FlutterFlowModel<UserSalesPageWidget> {
  ///  Local state fields for this page.

  int codeResult = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (GetSales)] action in UserSalesPage widget.
  ApiCallResponse? getSalesResultAPI;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
