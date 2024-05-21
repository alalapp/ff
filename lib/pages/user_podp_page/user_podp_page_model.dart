import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_podp_page_widget.dart' show UserPodpPageWidget;
import 'package:flutter/material.dart';

class UserPodpPageModel extends FlutterFlowModel<UserPodpPageWidget> {
  ///  Local state fields for this page.

  int? podpResult = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (GetPodp)] action in userPodpPage widget.
  ApiCallResponse? getPodpResultAPI;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
