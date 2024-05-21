import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_bonus_page_widget.dart' show UserBonusPageWidget;
import 'package:flutter/material.dart';

class UserBonusPageModel extends FlutterFlowModel<UserBonusPageWidget> {
  ///  Local state fields for this page.

  int codeResult = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (GetBonus)] action in UserBonusPage widget.
  ApiCallResponse? getBonusResultOnLoad;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}
