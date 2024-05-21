import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/nav_bar_custom_widget.dart';
import '/components/price_on_product_page_comp_color_widget.dart';
import '/components/price_on_product_page_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'product_page_widget.dart' show ProductPageWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ProductPageModel extends FlutterFlowModel<ProductPageWidget> {
  ///  Local state fields for this page.

  int code = 0;

  String? productName;

  String? productBrand;

  String? productCollection;

  String? productYear;

  String? productNotes;

  String? productTopNotes;

  String? productHeartNotes;

  String? productBaseNotes;

  String? productParfumeur;

  String? productSex;

  String? productCountry;

  String? productType;

  String? productFamily;

  String? productAvailable;

  String? productRprice;

  String? productIprice;

  int? offersCount;

  String? productVariant;

  BasketStruct? localBasket;
  void updateLocalBasketStruct(Function(BasketStruct) updateFn) =>
      updateFn(localBasket ??= BasketStruct());

  String? xmlVariant;

  String? productVariantCut;

  Color? productColor;

  BasketMainStruct? localBasketMain;
  void updateLocalBasketMainStruct(Function(BasketMainStruct) updateFn) =>
      updateFn(localBasketMain ??= BasketMainStruct());

  int? productKolvo;

  String? sss;

  ProductInfoStruct? productDataType;
  void updateProductDataTypeStruct(Function(ProductInfoStruct) updateFn) =>
      updateFn(productDataType ??= ProductInfoStruct());

  List<OfferInfoStruct> productOffers = [];
  void addToProductOffers(OfferInfoStruct item) => productOffers.add(item);
  void removeFromProductOffers(OfferInfoStruct item) =>
      productOffers.remove(item);
  void removeAtIndexFromProductOffers(int index) =>
      productOffers.removeAt(index);
  void insertAtIndexInProductOffers(int index, OfferInfoStruct item) =>
      productOffers.insert(index, item);
  void updateProductOffersAtIndex(
          int index, Function(OfferInfoStruct) updateFn) =>
      productOffers[index] = updateFn(productOffers[index]);

  String? productDiscount;

  String? productUserPrice = '0';

  String? productSpecPrice = '0';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getOffersNew)] action in productPage widget.
  ApiCallResponse? offersRes;
  // Model for PriceOnProductPageCompColor component.
  late PriceOnProductPageCompColorModel priceOnProductPageCompColorModel;
  // Model for PriceOnProductPageComp component.
  late PriceOnProductPageCompModel priceOnProductPageCompModel;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // Stores action output result for [Custom Action - findItemInBasket] action in Button widget.
  DocumentReference? isAddedReference;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  BasketRecord? basketitem;
  // Stores action output result for [Custom Action - addItemtoBasket] action in Button widget.
  BasketStruct? addBasket;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  BasketRecord? newBasketItemFB2;
  // Stores action output result for [Custom Action - countBasketVarsCopy] action in Button widget.
  BasketMainStruct? baskMain4upd;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  BasketRecord? newBasketItemFB;
  // Stores action output result for [Custom Action - countBasketVarsCopy] action in Button widget.
  BasketMainStruct? baskMain4upd11;
  // Stores action output result for [Custom Action - addItemtoBasket] action in Button widget.
  BasketStruct? addBasket3;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  BasketRecord? newBasketItemFB3;
  // Stores action output result for [Custom Action - countBasketVarsCopy] action in Button widget.
  BasketMainStruct? baskMain4upd12;
  // Model for NavBarCustom component.
  late NavBarCustomModel navBarCustomModel;

  @override
  void initState(BuildContext context) {
    priceOnProductPageCompColorModel =
        createModel(context, () => PriceOnProductPageCompColorModel());
    priceOnProductPageCompModel =
        createModel(context, () => PriceOnProductPageCompModel());
    navBarCustomModel = createModel(context, () => NavBarCustomModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    priceOnProductPageCompColorModel.dispose();
    priceOnProductPageCompModel.dispose();
    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
    expandableExpandableController3.dispose();
    navBarCustomModel.dispose();
  }
}
