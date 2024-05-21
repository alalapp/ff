import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_page_widget.dart' show SearchPageWidget;
import 'package:flutter/material.dart';

class SearchPageModel extends FlutterFlowModel<SearchPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for code_login_field widget.
  FocusNode? codeLoginFieldFocusNode;
  TextEditingController? codeLoginFieldTextController;
  String? Function(BuildContext, String?)?
      codeLoginFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (SerachBrands)] action in code_login_field widget.
  ApiCallResponse? searchResbrand;
  // Stores action output result for [Backend Call - API (SearchProducts)] action in code_login_field widget.
  ApiCallResponse? searchRes;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    codeLoginFieldFocusNode?.dispose();
    codeLoginFieldTextController?.dispose();
  }
}
