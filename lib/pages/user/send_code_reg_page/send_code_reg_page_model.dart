import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'send_code_reg_page_widget.dart' show SendCodeRegPageWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SendCodeRegPageModel extends FlutterFlowModel<SendCodeRegPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for code_reg_txt widget.
  FocusNode? codeRegTxtFocusNode;
  TextEditingController? codeRegTxtTextController;
  final codeRegTxtMask = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? codeRegTxtTextControllerValidator;
  // Stores action output result for [Backend Call - API (SendCodeReg)] action in code_reg_button widget.
  ApiCallResponse? sendcodeResultreg;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    codeRegTxtFocusNode?.dispose();
    codeRegTxtTextController?.dispose();
  }
}
