import '/flutter_flow/flutter_flow_util.dart';
import 'news_info_page_widget.dart' show NewsInfoPageWidget;
import 'package:flutter/material.dart';

class NewsInfoPageModel extends FlutterFlowModel<NewsInfoPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Column widget.
  ScrollController? columnController;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    columnController?.dispose();
  }
}
