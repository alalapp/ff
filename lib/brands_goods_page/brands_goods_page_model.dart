import '/backend/api_requests/api_calls.dart';
import '/components/nav_bar_custom_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'brands_goods_page_widget.dart' show BrandsGoodsPageWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class BrandsGoodsPageModel extends FlutterFlowModel<BrandsGoodsPageWidget> {
  ///  Local state fields for this page.

  int code = 0;

  String? desc;

  String? brandfoto;

  List<dynamic> brandsdata = [];
  void addToBrandsdata(dynamic item) => brandsdata.add(item);
  void removeFromBrandsdata(dynamic item) => brandsdata.remove(item);
  void removeAtIndexFromBrandsdata(int index) => brandsdata.removeAt(index);
  void insertAtIndexInBrandsdata(int index, dynamic item) =>
      brandsdata.insert(index, item);
  void updateBrandsdataAtIndex(int index, Function(dynamic) updateFn) =>
      brandsdata[index] = updateFn(brandsdata[index]);

  List<int> minpriceArray = [];
  void addToMinpriceArray(int item) => minpriceArray.add(item);
  void removeFromMinpriceArray(int item) => minpriceArray.remove(item);
  void removeAtIndexFromMinpriceArray(int index) =>
      minpriceArray.removeAt(index);
  void insertAtIndexInMinpriceArray(int index, int item) =>
      minpriceArray.insert(index, item);
  void updateMinpriceArrayAtIndex(int index, Function(int) updateFn) =>
      minpriceArray[index] = updateFn(minpriceArray[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getProductsNew)] action in brandsGoodsPage widget.
  ApiCallResponse? brandsdataresStart;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // Model for NavBarCustom component.
  late NavBarCustomModel navBarCustomModel;

  @override
  void initState(BuildContext context) {
    navBarCustomModel = createModel(context, () => NavBarCustomModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    expandableExpandableController.dispose();
    navBarCustomModel.dispose();
  }
}
