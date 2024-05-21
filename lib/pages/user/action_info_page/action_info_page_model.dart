import '/flutter_flow/flutter_flow_util.dart';
import 'action_info_page_widget.dart' show ActionInfoPageWidget;
import 'package:flutter/material.dart';

class ActionInfoPageModel extends FlutterFlowModel<ActionInfoPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
