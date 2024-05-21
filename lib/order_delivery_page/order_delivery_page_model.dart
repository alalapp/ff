import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'order_delivery_page_widget.dart' show OrderDeliveryPageWidget;
import 'package:flutter/material.dart';

class OrderDeliveryPageModel extends FlutterFlowModel<OrderDeliveryPageWidget> {
  ///  Local state fields for this page.

  int? selectID;

  String? selectName;

  String? selectDesc;

  String? selectImage;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in RadioButton widget.
  DeliveryMethodsRecord? selFB;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
