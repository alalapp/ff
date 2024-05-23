import '/backend/api_requests/api_calls.dart';
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

  String? markerName;

  String? markerID;

  List<DeliveryPointsStruct> deliveryPoints = [];
  void addToDeliveryPoints(DeliveryPointsStruct item) =>
      deliveryPoints.add(item);
  void removeFromDeliveryPoints(DeliveryPointsStruct item) =>
      deliveryPoints.remove(item);
  void removeAtIndexFromDeliveryPoints(int index) =>
      deliveryPoints.removeAt(index);
  void insertAtIndexInDeliveryPoints(int index, DeliveryPointsStruct item) =>
      deliveryPoints.insert(index, item);
  void updateDeliveryPointsAtIndex(
          int index, Function(DeliveryPointsStruct) updateFn) =>
      deliveryPoints[index] = updateFn(deliveryPoints[index]);

  String homeAlias = 'Домашний';

  String autoCity = 'Екатеринбург';

  int? autoCityID = 250;

  String autoAlias = 'Самовывоз из бутика IMAGINE';

  String postAlias = 'В отделение Почты России';

  String autoAddress = 'Екатеринбург, проспект Ленина, 25';

  int tariffIDCourier = 137;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in RadioButton widget.
  DeliveryMethodsRecord? selFB;
  // Stores action output result for [Backend Call - API (getCalculate)] action in RadioButton widget.
  ApiCallResponse? apiResultsws1;
  // Stores action output result for [Backend Call - API (getCalculate)] action in RadioButton widget.
  ApiCallResponse? apiResultsws2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
