import '/backend/api_requests/api_calls.dart';
import '/components/filter_comp_widget.dart';
import '/components/filter_plusfind_comp_copy_widget.dart';
import '/components/nav_bar_custom_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'catalog_goods_page_widget.dart' show CatalogGoodsPageWidget;
import 'package:flutter/material.dart';

class CatalogGoodsPageModel extends FlutterFlowModel<CatalogGoodsPageWidget> {
  ///  Local state fields for this page.

  int code = 0;

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
  // Stores action output result for [Backend Call - API (getProductsNew)] action in catalogGoodsPage widget.
  ApiCallResponse? brandsdataresStart;
  // Model for NavBarCustom component.
  late NavBarCustomModel navBarCustomModel;
  // Model for filterPlusfindCompCopy component.
  late FilterPlusfindCompCopyModel filterPlusfindCompCopyModel;
  // Model for filterComp component.
  late FilterCompModel filterCompModel;

  @override
  void initState(BuildContext context) {
    navBarCustomModel = createModel(context, () => NavBarCustomModel());
    filterPlusfindCompCopyModel =
        createModel(context, () => FilterPlusfindCompCopyModel());
    filterCompModel = createModel(context, () => FilterCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navBarCustomModel.dispose();
    filterPlusfindCompCopyModel.dispose();
    filterCompModel.dispose();
  }
}
