import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ras_price_comp_widget.dart' show RasPriceCompWidget;
import 'package:flutter/material.dart';

class RasPriceCompModel extends FlutterFlowModel<RasPriceCompWidget> {
  ///  Local state fields for this component.

  List<dynamic> goodsItemsfromAppstate = [];
  void addToGoodsItemsfromAppstate(dynamic item) =>
      goodsItemsfromAppstate.add(item);
  void removeFromGoodsItemsfromAppstate(dynamic item) =>
      goodsItemsfromAppstate.remove(item);
  void removeAtIndexFromGoodsItemsfromAppstate(int index) =>
      goodsItemsfromAppstate.removeAt(index);
  void insertAtIndexInGoodsItemsfromAppstate(int index, dynamic item) =>
      goodsItemsfromAppstate.insert(index, item);
  void updateGoodsItemsfromAppstateAtIndex(
          int index, Function(dynamic) updateFn) =>
      goodsItemsfromAppstate[index] = updateFn(goodsItemsfromAppstate[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (GetRasPrice)] action in Button widget.
  ApiCallResponse? rasResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
