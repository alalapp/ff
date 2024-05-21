import '/components/nav_bar_custom_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'account_page_widget.dart' show AccountPageWidget;
import 'package:flutter/material.dart';

class AccountPageModel extends FlutterFlowModel<AccountPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NavBarCustom component.
  late NavBarCustomModel navBarCustomModel;

  @override
  void initState(BuildContext context) {
    navBarCustomModel = createModel(context, () => NavBarCustomModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navBarCustomModel.dispose();
  }
}
