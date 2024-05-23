import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_delivery_set_p_v_z_widget.dart' show OrderDeliverySetPVZWidget;
import 'package:flutter/material.dart';

class OrderDeliverySetPVZModel
    extends FlutterFlowModel<OrderDeliverySetPVZWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getDeliveryPoints)] action in orderDeliverySetPVZ widget.
  ApiCallResponse? dPoints;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
