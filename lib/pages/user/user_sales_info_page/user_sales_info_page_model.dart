import '/flutter_flow/flutter_flow_util.dart';
import 'user_sales_info_page_widget.dart' show UserSalesInfoPageWidget;
import 'package:flutter/material.dart';

class UserSalesInfoPageModel extends FlutterFlowModel<UserSalesInfoPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
