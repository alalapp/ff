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
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for findstrText widget.
  FocusNode? findstrTextFocusNode;
  TextEditingController? findstrTextTextController;
  String? Function(BuildContext, String?)? findstrTextTextControllerValidator;
  // Stores action output result for [Backend Call - API (searchCities)] action in findstrText widget.
  ApiCallResponse? apiResultvp5;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    findstrTextFocusNode?.dispose();
    findstrTextTextController?.dispose();

    textFieldFocusNode3?.dispose();
    textController4?.dispose();
  }
}
