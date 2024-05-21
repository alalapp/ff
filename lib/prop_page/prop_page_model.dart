import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'prop_page_widget.dart' show PropPageWidget;
import 'package:flutter/material.dart';

class PropPageModel extends FlutterFlowModel<PropPageWidget> {
  ///  Local state fields for this page.

  PropertyValuesStruct? propertyArray;
  void updatePropertyArrayStruct(Function(PropertyValuesStruct) updateFn) =>
      updateFn(propertyArray ??= PropertyValuesStruct());

  String? propName;

  String? currentProp;

  List<dynamic> productNonFilteredArray = [];
  void addToProductNonFilteredArray(dynamic item) =>
      productNonFilteredArray.add(item);
  void removeFromProductNonFilteredArray(dynamic item) =>
      productNonFilteredArray.remove(item);
  void removeAtIndexFromProductNonFilteredArray(int index) =>
      productNonFilteredArray.removeAt(index);
  void insertAtIndexInProductNonFilteredArray(int index, dynamic item) =>
      productNonFilteredArray.insert(index, item);
  void updateProductNonFilteredArrayAtIndex(
          int index, Function(dynamic) updateFn) =>
      productNonFilteredArray[index] = updateFn(productNonFilteredArray[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getProductsNew)] action in Text widget.
  ApiCallResponse? refreshdatares1;
  // Stores action output result for [Backend Call - API (getProductsNew)] action in Text widget.
  ApiCallResponse? refreshdatares;
  // State field(s) for SortRadioButton widget.
  FormFieldController<String>? sortRadioButtonValueController;
  // State field(s) for AvailableSwitchListTile widget.
  bool? availableSwitchListTileValue1;
  // Stores action output result for [Custom Action - filterDictStart] action in AvailableSwitchListTile widget.
  List<dynamic>? wresu55;
  // Stores action output result for [Custom Action - filterDictStart] action in AvailableSwitchListTile widget.
  List<dynamic>? xresu55;
  // State field(s) for AvailableSwitchListTile widget.
  bool? availableSwitchListTileValue2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for CheckboxListTile widget.

  Map<PropertyValuesStruct, bool> checkboxListTileValueMap = {};
  List<PropertyValuesStruct> get checkboxListTileCheckedItems =>
      checkboxListTileValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // Stores action output result for [Custom Action - filterDictStart] action in CheckboxListTile widget.
  List<dynamic>? wresu;
  // Stores action output result for [Custom Action - filterDictStart] action in CheckboxListTile widget.
  List<dynamic>? wresu1;
  // Stores action output result for [Custom Action - filterDictStart] action in CheckboxListTile widget.
  List<dynamic>? wresu22;
  // Stores action output result for [Custom Action - filterDictStart] action in CheckboxListTile widget.
  List<dynamic>? wresu3;
  // Stores action output result for [Custom Action - filterDictStart] action in CheckboxListTile widget.
  List<dynamic>? wresu4;
  // Stores action output result for [Custom Action - filterDictStart] action in CheckboxListTile widget.
  List<dynamic>? wresu5;
  // Stores action output result for [Custom Action - filterDictStart] action in CheckboxListTile widget.
  List<dynamic>? xresu;
  // Stores action output result for [Custom Action - filterDictStart] action in CheckboxListTile widget.
  List<dynamic>? xresu1;
  // Stores action output result for [Custom Action - filterDictStart] action in CheckboxListTile widget.
  List<dynamic>? xresu2;
  // Stores action output result for [Custom Action - filterDictStart] action in CheckboxListTile widget.
  List<dynamic>? xresu3;
  // Stores action output result for [Custom Action - filterDictStart] action in CheckboxListTile widget.
  List<dynamic>? xresu4;
  // Stores action output result for [Custom Action - filterDictStart] action in CheckboxListTile widget.
  List<dynamic>? xresu5;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Additional helper methods.
  String? get sortRadioButtonValue => sortRadioButtonValueController?.value;
}
