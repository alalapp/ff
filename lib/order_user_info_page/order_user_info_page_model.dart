import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_user_info_page_widget.dart' show OrderUserInfoPageWidget;
import 'package:flutter/material.dart';

class OrderUserInfoPageModel extends FlutterFlowModel<OrderUserInfoPageWidget> {
  ///  Local state fields for this page.

  String? findCityStr;

  int? selectedcityID;

  String? selectedcityName;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for fioField widget.
  FocusNode? fioFieldFocusNode;
  TextEditingController? fioFieldTextController;
  String? Function(BuildContext, String?)? fioFieldTextControllerValidator;
  // State field(s) for phoneField widget.
  FocusNode? phoneFieldFocusNode;
  TextEditingController? phoneFieldTextController;
  String? Function(BuildContext, String?)? phoneFieldTextControllerValidator;
  // State field(s) for findstrText widget.
  FocusNode? findstrTextFocusNode;
  TextEditingController? findstrTextTextController;
  String? Function(BuildContext, String?)? findstrTextTextControllerValidator;
  // Stores action output result for [Backend Call - API (searchCities)] action in findstrText widget.
  ApiCallResponse? apiResultvp5;
  // State field(s) for addressField widget.
  FocusNode? addressFieldFocusNode;
  TextEditingController? addressFieldTextController;
  String? Function(BuildContext, String?)? addressFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    fioFieldFocusNode?.dispose();
    fioFieldTextController?.dispose();

    phoneFieldFocusNode?.dispose();
    phoneFieldTextController?.dispose();

    findstrTextFocusNode?.dispose();
    findstrTextTextController?.dispose();

    addressFieldFocusNode?.dispose();
    addressFieldTextController?.dispose();
  }
}
