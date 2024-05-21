import '/backend/api_requests/api_calls.dart';
import '/components/categ_items_comp_widget.dart';
import '/components/nav_bar_custom_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'category_page_model.dart';
export 'category_page_model.dart';

class CategoryPageWidget extends StatefulWidget {
  const CategoryPageWidget({super.key});

  @override
  State<CategoryPageWidget> createState() => _CategoryPageWidgetState();
}

class _CategoryPageWidgetState extends State<CategoryPageWidget> {
  late CategoryPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (!FFAppState().IsCategoryListLoad) {
        _model.categoryLoadResult =
            await ApiSulGroup.getPropertiesValuesCall.call(
          propertyName: 'category',
        );
        // записываем код результата API запроса
        setState(() {
          FFAppState().codeResultProperties = valueOrDefault<int>(
            getJsonField(
              (_model.categoryLoadResult?.jsonBody ?? ''),
              r'''$.code''',
            ),
            0,
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
              (_model.categoryLoadResult?.jsonBody ?? ''),
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
        title: 'categoryPage',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 25.0,
                ),
                onPressed: () async {
                  context.pushNamed(
                    'homePage',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: const TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                      ),
                    },
                  );
                },
              ),
              title: Text(
                'Категории товаров',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).headlineMediumFamily,
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 18.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).headlineMediumFamily),
                    ),
              ),
              actions: const [],
              centerTitle: true,
              elevation: 0.0,
            ),
            body: Container(
              decoration: const BoxDecoration(),
              child: Stack(
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Builder(
                      builder: (context) {
                        final catarr = FFAppState().CategoryList.toList();
                        return ListView.separated(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          itemCount: catarr.length,
                          separatorBuilder: (_, __) => const SizedBox(height: 10.0),
                          itemBuilder: (context, catarrIndex) {
                            final catarrItem = catarr[catarrIndex];
                            return Container(
                              decoration: const BoxDecoration(),
                              child: Container(
                                width: double.infinity,
                                color: const Color(0x00000000),
                                child: ExpandableNotifier(
                                  initialExpanded: true,
                                  child: ExpandablePanel(
                                    header: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 0.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            'catalogGoodsPage',
                                            queryParameters: {
                                              'parId': serializeParam(
                                                getJsonField(
                                                  catarrItem,
                                                  r'''$.id''',
                                                ),
                                                ParamType.int,
                                              ),
                                              'parName': serializeParam(
                                                getJsonField(
                                                  catarrItem,
                                                  r'''$.name''',
                                                ).toString(),
                                                ParamType.String,
                                              ),
                                            }.withoutNulls,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType
                                                        .rightToLeft,
                                              ),
                                            },
                                          );
                                        },
                                        child: Text(
                                          getJsonField(
                                            catarrItem,
                                            r'''$.name''',
                                          ).toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmallFamily,
                                                color: Colors.black,
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .displaySmallFamily),
                                              ),
                                        ),
                                      ),
                                    ),
                                    collapsed: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 35.0,
                                      decoration: const BoxDecoration(),
                                    ),
                                    expanded: Container(
                                      height: valueOrDefault<double>(
                                        valueOrDefault<int>(
                                              getJsonField(
                                                catarrItem,
                                                r'''$.child_count''',
                                              ),
                                              32,
                                            ) *
                                            32,
                                        32.0,
                                      ),
                                      decoration: const BoxDecoration(),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                        child: CategItemsCompWidget(
                                          key: Key(
                                              'Keytx4_${catarrIndex}_of_${catarr.length}'),
                                          child: getJsonField(
                                            catarrItem,
                                            r'''$.child''',
                                            true,
                                          )!,
                                        ),
                                      ),
                                    ),
                                    theme: const ExpandableThemeData(
                                      tapHeaderToExpand: false,
                                      tapBodyToExpand: false,
                                      tapBodyToCollapse: false,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
                                      hasIcon: false,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: Stack(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 1.0),
                          child: wrapWithModel(
                            model: _model.navBarCustomModel,
                            updateCallback: () => setState(() {}),
                            child: NavBarCustomWidget(
                              selectedPageIndex: FFAppState().basketItemsCount,
                              hidden: false,
                              showCentralButton: false,
                              onBasketchange: (countItems) async {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
