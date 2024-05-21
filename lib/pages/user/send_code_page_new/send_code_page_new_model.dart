import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'send_code_page_new_widget.dart' show SendCodePageNewWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SendCodePageNewModel extends FlutterFlowModel<SendCodePageNewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for code_txt widget.
  FocusNode? codeTxtFocusNode;
  TextEditingController? codeTxtTextController;
  final codeTxtMask = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? codeTxtTextControllerValidator;
  // Stores action output result for [Backend Call - API (SendCode)] action in sms_login_button widget.
  ApiCallResponse? sendCodeResult;
  // Stores action output result for [Backend Call - API (SetVisit)] action in sms_login_button widget.
  ApiCallResponse? apiResultr4l;
  // Stores action output result for [Backend Call - API (GetUserInfo)] action in sms_login_button widget.
  ApiCallResponse? getUserInfoResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    codeTxtFocusNode?.dispose();
    codeTxtTextController?.dispose();
  }
}
