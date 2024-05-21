import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'drawer_page_widget.dart' show DrawerPageWidget;
import 'package:flutter/material.dart';

class DrawerPageModel extends FlutterFlowModel<DrawerPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (GetPropertiesValues)] action in DrawerPage widget.
  ApiCallResponse? categoryLoadResult;
  // Stores action output result for [Backend Call - API (GetPropertiesValues)] action in DrawerPage widget.
  ApiCallResponse? categoryCountResult1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
