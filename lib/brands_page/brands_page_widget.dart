import '/backend/api_requests/api_calls.dart';
import '/components/nav_bar_custom_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'brands_page_model.dart';
export 'brands_page_model.dart';

class BrandsPageWidget extends StatefulWidget {
  const BrandsPageWidget({super.key});

  @override
  State<BrandsPageWidget> createState() => _BrandsPageWidgetState();
}

class _BrandsPageWidgetState extends State<BrandsPageWidget> {
  late BrandsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BrandsPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (!FFAppState().IsBrendsListLoad) {
        _model.brandsLoadResult =
            await ApiSulGroup.getPropertiesValuesCall.call(
          propertyName: 'brands',
        );
        // записываем код результата api запроса
        setState(() {
          FFAppState().codeResultProperties = getJsonField(
            (_model.brandsLoadResult?.jsonBody ?? ''),
            r'''$.code''',
          );
        });
        if (FFAppState().codeResultProperties == FFAppConstants.zerocode) {
          FFAppState().update(() {
            FFAppState().BrandList = [];
          });
          FFAppState().update(() {
            FFAppState().IsBrendsListLoad = true;
            FFAppState().BrandList = getJsonField(
              (_model.brandsLoadResult?.jsonBody ?? ''),
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
        title: 'brandsPage',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).tertiary,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  size: 25.0,
                ),
                onPressed: () async {
                  context.pushNamed('homePage');
                },
              ),
              title: Text(
                'Бренды',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).headlineMediumFamily,
                      color: Colors.white,
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
            body: Stack(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).surface,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final brandArr = FFAppState().BrandList.toList();
                          if (brandArr.isEmpty) {
                            return Center(
                              child: Image.asset(
                                'assets/images/1687532251_celes-club-p-narisovannii-grustnii-kotik-risunok-pinter-32.jpg',
                                width: 180.0,
                                height: double.infinity,
                              ),
                            );
                          }
                          return GridView.builder(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10.0,
                              mainAxisSpacing: 10.0,
                              childAspectRatio: 2.3,
                            ),
                            primary: false,
                            scrollDirection: Axis.vertical,
                            itemCount: brandArr.length,
                            itemBuilder: (context, brandArrIndex) {
                              final brandArrItem = brandArr[brandArrIndex];
                              return Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    3.0, 0.0, 3.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'brandsGoodsPage',
                                      queryParameters: {
                                        'parId': serializeParam(
                                          getJsonField(
                                            brandArrItem,
                                            r'''$.id''',
                                          ),
                                          ParamType.int,
                                        ),
                                        'parName': serializeParam(
                                          getJsonField(
                                            brandArrItem,
                                            r'''$.name''',
                                          ).toString(),
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.rightToLeft,
                                        ),
                                      },
                                    );
                                  },
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color:
                                        FlutterFlowTheme.of(context).surface2,
                                    elevation: 0.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: double.infinity,
                                        child: Stack(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              height: 90.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .fon3MiddleGray,
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .iconColorOnFon,
                                                  width: 1.0,
                                                ),
                                              ),
                                              child: Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 7.0, 0.0),
                                                  child: Text(
                                                    getJsonField(
                                                      brandArrItem,
                                                      r'''$.name''',
                                                    ).toString(),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmallFamily,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmallFamily),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
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
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: Stack(
                    children: [
                      wrapWithModel(
                        model: _model.navBarCustomModel,
                        updateCallback: () => setState(() {}),
                        child: NavBarCustomWidget(
                          selectedPageIndex: FFAppState().basketItemsCount,
                          hidden: false,
                          showCentralButton: false,
                          onBasketchange: (countItems) async {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
