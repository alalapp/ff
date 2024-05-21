import '/backend/api_requests/api_calls.dart';
import '/components/nav_bar_custom_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'brands_page_widget.dart' show BrandsPageWidget;
import 'package:flutter/material.dart';

class BrandsPageModel extends FlutterFlowModel<BrandsPageWidget> {
  ///  Local state fields for this page.

  int code = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (GetPropertiesValues)] action in brandsPage widget.
  ApiCallResponse? brandsLoadResult;
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
