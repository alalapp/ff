import '/backend/api_requests/api_calls.dart';
import '/components/nav_bar_custom_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  Local state fields for this page.

  dynamic userInfoLocal;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for phone_login_field widget.
  FocusNode? phoneLoginFieldFocusNode;
  TextEditingController? phoneLoginFieldTextController;
  final phoneLoginFieldMask =
      MaskTextInputFormatter(mask: '+7 (###) ###-##-##');
  String? Function(BuildContext, String?)?
      phoneLoginFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (GetCode)] action in sms_login_button widget.
  ApiCallResponse? getCodeResult;
  // Stores action output result for [Firestore Query - Query a collection] action in sms_login_button widget.
  int? isUserCreatedFB;
  // State field(s) for fio_reg_field widget.
  FocusNode? fioRegFieldFocusNode;
  TextEditingController? fioRegFieldTextController;
  String? Function(BuildContext, String?)? fioRegFieldTextControllerValidator;
  // State field(s) for tel_reg_field widget.
  FocusNode? telRegFieldFocusNode;
  TextEditingController? telRegFieldTextController;
  final telRegFieldMask = MaskTextInputFormatter(mask: '+7 (###) ###-##-##');
  String? Function(BuildContext, String?)? telRegFieldTextControllerValidator;
  // State field(s) for birthdate_reg_field widget.
  FocusNode? birthdateRegFieldFocusNode;
  TextEditingController? birthdateRegFieldTextController;
  final birthdateRegFieldMask = MaskTextInputFormatter(mask: '##.##.####');
  String? Function(BuildContext, String?)?
      birthdateRegFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (GetCodeReg)] action in code_reg_button widget.
  ApiCallResponse? getcodeResultreg;
  // Model for NavBarCustom component.
  late NavBarCustomModel navBarCustomModel;

  @override
  void initState(BuildContext context) {
    navBarCustomModel = createModel(context, () => NavBarCustomModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    phoneLoginFieldFocusNode?.dispose();
    phoneLoginFieldTextController?.dispose();

    fioRegFieldFocusNode?.dispose();
    fioRegFieldTextController?.dispose();

    telRegFieldFocusNode?.dispose();
    telRegFieldTextController?.dispose();

    birthdateRegFieldFocusNode?.dispose();
    birthdateRegFieldTextController?.dispose();

    navBarCustomModel.dispose();
  }
}
