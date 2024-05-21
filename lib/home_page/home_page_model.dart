import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/button_silver_comp_widget.dart';
import '/components/left_menu_comp_widget.dart';
import '/components/nav_bar_custom_widget.dart';
import '/components/notif_icon_comp_widget.dart';
import '/components/search_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (GetPropertiesValues)] action in homePage widget.
  ApiCallResponse? familyRes;
  // Stores action output result for [Backend Call - API (GetPropertiesValues)] action in homePage widget.
  ApiCallResponse? brandRes;
  // Stores action output result for [Backend Call - API (GetPropertiesValues)] action in homePage widget.
  ApiCallResponse? countryRes;
  // Stores action output result for [Backend Call - API (GetPropertiesValues)] action in homePage widget.
  ApiCallResponse? productTypeRes;
  // Stores action output result for [Backend Call - API (GetPropertiesValues)] action in homePage widget.
  ApiCallResponse? genderRes;
  // Stores action output result for [Backend Call - API (GetPropertiesValues)] action in homePage widget.
  ApiCallResponse? notesRes;
  // Stores action output result for [Backend Call - API (GetPropertiesValues)] action in homePage widget.
  ApiCallResponse? parfumerRes;
  // Stores action output result for [Backend Call - Create Document] action in homePage widget.
  BasketMainRecord? newBasket;
  // Stores action output result for [Backend Call - Read Document] action in homePage widget.
  BasketMainRecord? readDB;
  // Stores action output result for [Backend Call - Read Document] action in homePage widget.
  BasketMainRecord? basMainRes;
  // Stores action output result for [Backend Call - API (GetPropertiesValues)] action in homePage widget.
  ApiCallResponse? categoryLoadResult;
  // Stores action output result for [Backend Call - API (GetPropertiesValues)] action in homePage widget.
  ApiCallResponse? categoryCountResult1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for LeftMenuComp component.
  late LeftMenuCompModel leftMenuCompModel;
  // Model for searchComp component.
  late SearchCompModel searchCompModel;
  // Model for NotifIconComp component.
  late NotifIconCompModel notifIconCompModel;
  // Model for ButtonSilverComp component.
  late ButtonSilverCompModel buttonSilverCompModel1;
  // Model for ButtonSilverComp component.
  late ButtonSilverCompModel buttonSilverCompModel2;
  // Model for ButtonSilverComp component.
  late ButtonSilverCompModel buttonSilverCompModel3;
  // Model for ButtonSilverComp component.
  late ButtonSilverCompModel buttonSilverCompModel4;
  // Model for ButtonSilverComp component.
  late ButtonSilverCompModel buttonSilverCompModel5;
  // Model for ButtonSilverComp component.
  late ButtonSilverCompModel buttonSilverCompModel6;
  // Model for NavBarCustom component.
  late NavBarCustomModel navBarCustomModel;

  /// Query cache managers for this widget.

  final _specManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> spec({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _specManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearSpecCache() => _specManager.clear();
  void clearSpecCacheKey(String? uniqueKey) =>
      _specManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    leftMenuCompModel = createModel(context, () => LeftMenuCompModel());
    searchCompModel = createModel(context, () => SearchCompModel());
    notifIconCompModel = createModel(context, () => NotifIconCompModel());
    buttonSilverCompModel1 =
        createModel(context, () => ButtonSilverCompModel());
    buttonSilverCompModel2 =
        createModel(context, () => ButtonSilverCompModel());
    buttonSilverCompModel3 =
        createModel(context, () => ButtonSilverCompModel());
    buttonSilverCompModel4 =
        createModel(context, () => ButtonSilverCompModel());
    buttonSilverCompModel5 =
        createModel(context, () => ButtonSilverCompModel());
    buttonSilverCompModel6 =
        createModel(context, () => ButtonSilverCompModel());
    navBarCustomModel = createModel(context, () => NavBarCustomModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    leftMenuCompModel.dispose();
    searchCompModel.dispose();
    notifIconCompModel.dispose();
    buttonSilverCompModel1.dispose();
    buttonSilverCompModel2.dispose();
    buttonSilverCompModel3.dispose();
    buttonSilverCompModel4.dispose();
    buttonSilverCompModel5.dispose();
    buttonSilverCompModel6.dispose();
    navBarCustomModel.dispose();

    /// Dispose query cache managers for this widget.

    clearSpecCache();
  }
}
