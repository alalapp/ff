import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'radio_select_comp_widget.dart' show RadioSelectCompWidget;
import 'package:flutter/material.dart';

class RadioSelectCompModel extends FlutterFlowModel<RadioSelectCompWidget> {
  ///  Local state fields for this component.

  List<String> names = [];
  void addToNames(String item) => names.add(item);
  void removeFromNames(String item) => names.remove(item);
  void removeAtIndexFromNames(int index) => names.removeAt(index);
  void insertAtIndexInNames(int index, String item) =>
      names.insert(index, item);
  void updateNamesAtIndex(int index, Function(String) updateFn) =>
      names[index] = updateFn(names[index]);

  int? sID;

  String? sName;

  String? sDesc;

  String? sImage;

  ///  State fields for stateful widgets in this component.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in RadioButton widget.
  PaymentMethodsRecord? selItem;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
