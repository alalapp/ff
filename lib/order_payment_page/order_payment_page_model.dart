import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'order_payment_page_widget.dart' show OrderPaymentPageWidget;
import 'package:flutter/material.dart';

class OrderPaymentPageModel extends FlutterFlowModel<OrderPaymentPageWidget> {
  ///  Local state fields for this page.

  int? selectIndex;

  String? selectDescription;

  String? selectImage;

  String? selectName;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in RadioButton widget.
  PaymentMethodsRecord? selFB;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
