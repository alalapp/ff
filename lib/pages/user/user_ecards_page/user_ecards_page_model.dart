import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_ecards_page_widget.dart' show UserEcardsPageWidget;
import 'package:flutter/material.dart';

class UserEcardsPageModel extends FlutterFlowModel<UserEcardsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (GetEcards old)] action in userEcardsPage widget.
  ApiCallResponse? getEcards;
  // Stores action output result for [Backend Call - API (GetEcardsSMS)] action in Button widget.
  ApiCallResponse? ecardResApple;
  // Stores action output result for [Backend Call - API (GetEcardsSMS)] action in Button widget.
  ApiCallResponse? ecardResGoogle;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
