import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_promo_page_widget.dart' show UserPromoPageWidget;
import 'package:flutter/material.dart';

class UserPromoPageModel extends FlutterFlowModel<UserPromoPageWidget> {
  ///  Local state fields for this page.

  int codeResult = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (GetPromo)] action in userPromoPage widget.
  ApiCallResponse? getPromoResultAPI;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
