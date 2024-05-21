import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'drawer_page_model.dart';
export 'drawer_page_model.dart';

class DrawerPageWidget extends StatefulWidget {
  const DrawerPageWidget({super.key});

  @override
  State<DrawerPageWidget> createState() => _DrawerPageWidgetState();
}

class _DrawerPageWidgetState extends State<DrawerPageWidget> {
  late DrawerPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DrawerPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (!FFAppState().IsCategoryListLoad) {
        _model.categoryLoadResult =
            await ApiSulGroup.getPropertiesValuesCall.call(
          propertyName: 'category',
        );
        // записываем код результата API запроса
        setState(() {
          FFAppState().codeResultProperties = getJsonField(
            (_model.categoryLoadResult?.jsonBody ?? ''),
            r'''$.code''',
          );
        });
        _model.categoryCountResult1 =
            await ApiSulGroup.getPropertiesValuesCall.call(
          propertyName: 'count',
        );
        setState(() {
          FFAppState().categoryCount = getJsonField(
            (_model.categoryCountResult1?.jsonBody ?? ''),
            r'''$.properties''',
            true,
          )!
              .toList()
              .cast<dynamic>();
        });
        if (FFAppState().codeResultProperties == FFAppConstants.zerocode) {
          FFAppState().update(() {
            FFAppState().CategoryList = [];
          });
          FFAppState().update(() {
            FFAppState().IsCategoryListLoad = true;
            FFAppState().CategoryList = getJsonField(
              (_model.categoryCountResult1?.jsonBody ?? ''),
              r'''$.properties''',
              true,
            )!
                .toList()
                .cast<dynamic>();
          });
        }
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'DrawerPage',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            drawer: SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.9,
              child: const Drawer(
                elevation: 16.0,
              ),
            ),
          ),
        ));
  }
}
