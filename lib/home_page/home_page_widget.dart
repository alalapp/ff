import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/button_silver_comp_widget.dart';
import '/components/categ_items_comp_widget.dart';
import '/components/left_menu_comp_widget.dart';
import '/components/nav_bar_custom_widget.dart';
import '/components/news_card_comp_widget.dart';
import '/components/notif_icon_comp_widget.dart';
import '/components/product_card_comp_copy_widget.dart';
import '/components/search_comp_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      Function() navigate = () {};
      if (FFAppState().genderPropList.isEmpty) {
        await Future.wait([
          Future(() async {
            _model.familyRes = await ApiSulGroup.getPropertiesValuesCall.call(
              propertyName: 'family',
            );
            FFAppState().update(() {
              FFAppState().familyPropList = (getJsonField(
                (_model.familyRes?.jsonBody ?? ''),
                r'''$.properties''',
                true,
              )!
                      .toList()
                      .map<PropertyValuesStruct?>(
                          PropertyValuesStruct.maybeFromMap)
                      .toList() as Iterable<PropertyValuesStruct?>)
                  .withoutNulls
                  .toList()
                  .cast<PropertyValuesStruct>();
            });
          }),
          Future(() async {
            _model.brandRes = await ApiSulGroup.getPropertiesValuesCall.call(
              propertyName: 'brands',
            );
            FFAppState().update(() {
              FFAppState().brandPropList = functions
                  .json2propertyValues(getJsonField(
                    (_model.brandRes?.jsonBody ?? ''),
                    r'''$.properties''',
                    true,
                  )!)
                  .toList()
                  .cast<PropertyValuesStruct>();
            });
          }),
          Future(() async {
            _model.countryRes = await ApiSulGroup.getPropertiesValuesCall.call(
              propertyName: 'country',
            );
            FFAppState().update(() {
              FFAppState().countryPropList = (getJsonField(
                (_model.countryRes?.jsonBody ?? ''),
                r'''$.properties''',
                true,
              )!
                      .toList()
                      .map<PropertyValuesStruct?>(
                          PropertyValuesStruct.maybeFromMap)
                      .toList() as Iterable<PropertyValuesStruct?>)
                  .withoutNulls
                  .toList()
                  .cast<PropertyValuesStruct>();
            });
          }),
          Future(() async {
            _model.productTypeRes =
                await ApiSulGroup.getPropertiesValuesCall.call(
              propertyName: 'product_type',
            );
            FFAppState().update(() {
              FFAppState().productTypePropList = (getJsonField(
                (_model.productTypeRes?.jsonBody ?? ''),
                r'''$.properties''',
                true,
              )!
                      .toList()
                      .map<PropertyValuesStruct?>(
                          PropertyValuesStruct.maybeFromMap)
                      .toList() as Iterable<PropertyValuesStruct?>)
                  .withoutNulls
                  .toList()
                  .cast<PropertyValuesStruct>();
            });
          }),
          Future(() async {
            _model.genderRes = await ApiSulGroup.getPropertiesValuesCall.call(
              propertyName: 'gender',
            );
            FFAppState().update(() {
              FFAppState().genderPropList = (getJsonField(
                (_model.genderRes?.jsonBody ?? ''),
                r'''$.properties''',
                true,
              )!
                      .toList()
                      .map<PropertyValuesStruct?>(
                          PropertyValuesStruct.maybeFromMap)
                      .toList() as Iterable<PropertyValuesStruct?>)
                  .withoutNulls
                  .toList()
                  .cast<PropertyValuesStruct>();
            });
          }),
          Future(() async {
            _model.notesRes = await ApiSulGroup.getPropertiesValuesCall.call(
              propertyName: 'notes',
            );
            FFAppState().update(() {
              FFAppState().notesPropList = (getJsonField(
                (_model.notesRes?.jsonBody ?? ''),
                r'''$.properties''',
                true,
              )!
                      .toList()
                      .map<PropertyValuesStruct?>(
                          PropertyValuesStruct.maybeFromMap)
                      .toList() as Iterable<PropertyValuesStruct?>)
                  .withoutNulls
                  .toList()
                  .cast<PropertyValuesStruct>();
            });
          }),
          Future(() async {
            _model.parfumerRes = await ApiSulGroup.getPropertiesValuesCall.call(
              propertyName: 'parfumer',
            );
            FFAppState().update(() {
              FFAppState().parfumerPropList = (getJsonField(
                (_model.parfumerRes?.jsonBody ?? ''),
                r'''$.properties''',
                true,
              )!
                      .toList()
                      .map<PropertyValuesStruct?>(
                          PropertyValuesStruct.maybeFromMap)
                      .toList() as Iterable<PropertyValuesStruct?>)
                  .withoutNulls
                  .toList()
                  .cast<PropertyValuesStruct>();
            });
          }),
        ]);
      }
      if (!loggedIn) {
        GoRouter.of(context).prepareAuthEvent();
        final user = await authManager.signInAnonymously(context);
        if (user == null) {
          return;
        }
        navigate = () => context.goNamedAuth('homePage', context.mounted);
      }
      FFAppState().update(() {
        FFAppState().userIDfb = currentUserUid;
        FFAppState().totalFilteredItems = 0;
      });
      if (FFAppState().basketstr?.id == null ||
          FFAppState().basketstr?.id == '') {
        var basketMainRecordReference1 = BasketMainRecord.collection.doc();
        await basketMainRecordReference1.set(createBasketMainRecordData(
          userUID: currentUserUid,
          userUIDSUL: FFAppState().userIDsul,
          cardIdSUL: FFAppState().cardid,
          kolProducts: 0,
          total: 0,
          totalDiscount: 0,
          totalR: 0,
          couponsSum: 0,
          userReference: currentUserReference,
        ));
        _model.newBasket = BasketMainRecord.getDocumentFromData(
            createBasketMainRecordData(
              userUID: currentUserUid,
              userUIDSUL: FFAppState().userIDsul,
              cardIdSUL: FFAppState().cardid,
              kolProducts: 0,
              total: 0,
              totalDiscount: 0,
              totalR: 0,
              couponsSum: 0,
              userReference: currentUserReference,
            ),
            basketMainRecordReference1);
        _model.readDB =
            await BasketMainRecord.getDocumentOnce(_model.newBasket!.reference);
        FFAppState().update(() {
          FFAppState().basketstr = _model.newBasket?.reference;
        });
      } else {
        await FFAppState().basketstr!.update(createBasketMainRecordData(
              userUID: currentUserUid,
              userReference: currentUserReference,
              userUIDSUL: FFAppState().userIDsul,
              cardIdSUL: FFAppState().cardid,
            ));
        _model.basMainRes =
            await BasketMainRecord.getDocumentOnce(FFAppState().basketstr!);
        FFAppState().update(() {
          FFAppState().basketItemsCount = _model.basMainRes!.kolProducts;
          FFAppState().basketstr = _model.basMainRes?.reference;
          FFAppState().updateBasketMainStruct(
            (e) => e
              ..kolProducts = _model.basMainRes?.kolProducts
              ..total = _model.basMainRes?.total
              ..totalDiscount = _model.basMainRes?.totalDiscount
              ..totalR = _model.basMainRes?.totalR
              ..couponsSum = _model.basMainRes?.couponsSum,
          );
          FFAppState().basketTotal = _model.basMainRes!.total;
          FFAppState().basketDiscountSum = _model.basMainRes!.totalDiscount;
        });
      }

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
              (_model.categoryLoadResult?.jsonBody ?? ''),
              r'''$.properties''',
              true,
            )!
                .toList()
                .cast<dynamic>();
          });
        }
      }

      navigate();
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
        title: 'homePage',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).mainFon,
            drawer: SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.9,
              child: Drawer(
                elevation: 16.0,
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 25.0, 15.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.asset(
                                    'assets/images/avatar2.png',
                                    width: 100.0,
                                    height: 100.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              FlutterFlowIconButton(
                                borderRadius: 20.0,
                                borderWidth: 1.0,
                                buttonSize: 40.0,
                                icon: Icon(
                                  Icons.close,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  if (scaffoldKey.currentState!.isDrawerOpen ||
                                      scaffoldKey
                                          .currentState!.isEndDrawerOpen) {
                                    Navigator.pop(context);
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 15.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'searchPage',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType:
                                        PageTransitionType.bottomToTop,
                                  ),
                                },
                              );
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 5.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.textController,
                                      focusNode: _model.textFieldFocusNode,
                                      autofocus: true,
                                      readOnly: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'искать...',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMediumFamily),
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMediumFamily),
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                      validator: _model.textControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 10.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'brandsPage',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                        ),
                                      },
                                    );
                                  },
                                  child: Text(
                                    'Бренды',
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .displaySmallFamily,
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .displaySmallFamily),
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 10.0),
                                child: Text(
                                  'Подборки',
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .displaySmallFamily,
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .displaySmallFamily),
                                      ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 10.0),
                                child: Text(
                                  'Новости',
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .displaySmallFamily,
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .displaySmallFamily),
                                      ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 10.0),
                                child: Text(
                                  'Блог',
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .displaySmallFamily,
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .displaySmallFamily),
                                      ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 10.0),
                                child: Text(
                                  'Видео',
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .displaySmallFamily,
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .displaySmallFamily),
                                      ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 20.0, 0.0, 0.0),
                                child: Text(
                                  'Контакты',
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .displaySmallFamily,
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .displaySmallFamily),
                                      ),
                                ),
                              ),
                            ),
                          ].addToEnd(const SizedBox(height: 20.0)),
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                        indent: 20.0,
                        endIndent: 20.0,
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: Builder(
                                builder: (context) {
                                  final catarr =
                                      FFAppState().CategoryList.toList();
                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: catarr.length,
                                    separatorBuilder: (_, __) =>
                                        const SizedBox(height: 10.0),
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
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
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
                                                        'parName':
                                                            serializeParam(
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
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmallFamily,
                                                          color: Colors.black,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
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
                                              collapsed: Container(),
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
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 0.0, 0.0),
                                                  child: CategItemsCompWidget(
                                                    key: Key(
                                                        'Key9h2_${catarrIndex}_of_${catarr.length}'),
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
                                                    ExpandablePanelHeaderAlignment
                                                        .center,
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            body: Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: StickyHeader(
                            overlapHeaders: true,
                            header: Stack(
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        30.0, 20.0, 30.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              scaffoldKey.currentState!
                                                  .openDrawer();
                                            },
                                            child: wrapWithModel(
                                              model: _model.leftMenuCompModel,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: const LeftMenuCompWidget(),
                                            ),
                                          ),
                                        ),
                                        const Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    30.0, 0.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      50.0, 0.0, 0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'searchPage',
                                                    extra: <String, dynamic>{
                                                      kTransitionInfoKey:
                                                          const TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .fade,
                                                        duration: Duration(
                                                            milliseconds: 0),
                                                      ),
                                                    },
                                                  );
                                                },
                                                child: wrapWithModel(
                                                  model: _model.searchCompModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: const SearchCompWidget(),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(1.0, 0.0),
                                          child: wrapWithModel(
                                            model: _model.notifIconCompModel,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: const NotifIconCompWidget(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            content: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 350.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.asset(
                                            'assets/images/074-002-016-Banner_copie_2362x111111.webp',
                                          ).image,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 300.0, 0.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          height: 75.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .mainFon,
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(30.0),
                                              topRight: Radius.circular(30.0),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(15.0, 15.0,
                                                          10.0, 0.0),
                                                  child: SingleChildScrollView(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              'catalogGoodsPage',
                                                              queryParameters: {
                                                                'parId':
                                                                    serializeParam(
                                                                  75,
                                                                  ParamType.int,
                                                                ),
                                                                'parName':
                                                                    serializeParam(
                                                                  'Парфюмерия',
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                              }.withoutNulls,
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    const TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .fade,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          0),
                                                                ),
                                                              },
                                                            );
                                                          },
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .buttonSilverCompModel1,
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child:
                                                                const ButtonSilverCompWidget(
                                                              textLabel:
                                                                  'Парфюмерия',
                                                            ),
                                                          ),
                                                        ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              'catalogGoodsPage',
                                                              queryParameters: {
                                                                'parId':
                                                                    serializeParam(
                                                                  80,
                                                                  ParamType.int,
                                                                ),
                                                                'parName':
                                                                    serializeParam(
                                                                  'Макияж',
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                              }.withoutNulls,
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    const TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .fade,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          0),
                                                                ),
                                                              },
                                                            );
                                                          },
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .buttonSilverCompModel2,
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child:
                                                                const ButtonSilverCompWidget(
                                                              textLabel:
                                                                  'Макияж',
                                                            ),
                                                          ),
                                                        ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              'catalogGoodsPage',
                                                              queryParameters: {
                                                                'parId':
                                                                    serializeParam(
                                                                  74,
                                                                  ParamType.int,
                                                                ),
                                                                'parName':
                                                                    serializeParam(
                                                                  'Уход',
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                              }.withoutNulls,
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    const TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .fade,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          0),
                                                                ),
                                                              },
                                                            );
                                                          },
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .buttonSilverCompModel3,
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child:
                                                                const ButtonSilverCompWidget(
                                                              textLabel: 'Уход',
                                                            ),
                                                          ),
                                                        ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              'catalogGoodsPage',
                                                              queryParameters: {
                                                                'parId':
                                                                    serializeParam(
                                                                  72,
                                                                  ParamType.int,
                                                                ),
                                                                'parName':
                                                                    serializeParam(
                                                                  'Ароматы для дома',
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                              }.withoutNulls,
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    const TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .fade,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          0),
                                                                ),
                                                              },
                                                            );
                                                          },
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .buttonSilverCompModel4,
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child:
                                                                const ButtonSilverCompWidget(
                                                              textLabel:
                                                                  'Ароматы для дома',
                                                            ),
                                                          ),
                                                        ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              'catalogGoodsPage',
                                                              queryParameters: {
                                                                'parId':
                                                                    serializeParam(
                                                                  71,
                                                                  ParamType.int,
                                                                ),
                                                                'parName':
                                                                    serializeParam(
                                                                  'Ароматы для авто',
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                              }.withoutNulls,
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    const TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .fade,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          0),
                                                                ),
                                                              },
                                                            );
                                                          },
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .buttonSilverCompModel5,
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child:
                                                                const ButtonSilverCompWidget(
                                                              textLabel:
                                                                  'Ароматы для авто',
                                                            ),
                                                          ),
                                                        ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              'catalogGoodsPage',
                                                              queryParameters: {
                                                                'parId':
                                                                    serializeParam(
                                                                  93,
                                                                  ParamType.int,
                                                                ),
                                                                'parName':
                                                                    serializeParam(
                                                                  'Для ванны и душа',
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                              }.withoutNulls,
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    const TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .fade,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          0),
                                                                ),
                                                              },
                                                            );
                                                          },
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .buttonSilverCompModel6,
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child:
                                                                const ButtonSilverCompWidget(
                                                              textLabel:
                                                                  'Для ванны и душа',
                                                            ),
                                                          ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          width: 18.0)),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 20.0, 10.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Text(
                                          'Специальные цены',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmallFamily,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(FlutterFlowTheme
                                                            .of(context)
                                                        .headlineSmallFamily),
                                              ),
                                        ),
                                      ),
                                      Text(
                                        'Все',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              fontSize: 13.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 15.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 330.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).mainFon,
                                    ),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: _model.spec(
                                        requestFn: () => ApiSulGroup
                                            .getSpecialProductsNewCall
                                            .call(
                                          limit: 20,
                                          start:
                                              random_data.randomInteger(0, 20),
                                        ),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 150.0,
                                              height: 150.0,
                                              child: SpinKitRipple(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                size: 150.0,
                                              ),
                                            ),
                                          );
                                        }
                                        final listViewGetSpecialProductsNewResponse =
                                            snapshot.data!;
                                        return Builder(
                                          builder: (context) {
                                            final specarray =
                                                listViewGetSpecialProductsNewResponse
                                                    .jsonBody
                                                    .toList();
                                            return ListView.separated(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 10.0),
                                              primary: false,
                                              scrollDirection: Axis.horizontal,
                                              itemCount: specarray.length,
                                              separatorBuilder: (_, __) =>
                                                  const SizedBox(width: 10.0),
                                              itemBuilder:
                                                  (context, specarrayIndex) {
                                                final specarrayItem =
                                                    specarray[specarrayIndex];
                                                return Container(
                                                  width: 200.0,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            24.0),
                                                  ),
                                                  child:
                                                      ProductCardCompCopyWidget(
                                                    key: Key(
                                                        'Keywvd_${specarrayIndex}_of_${specarray.length}'),
                                                    productId: getJsonField(
                                                      specarrayItem,
                                                      r'''$.id''',
                                                    ),
                                                    parId: 0,
                                                    parName: '-',
                                                    parType: 'main',
                                                    productArray: specarrayItem,
                                                    productInfo:
                                                        ProductInfoStruct(
                                                      productID: getJsonField(
                                                        specarrayItem,
                                                        r'''$.id''',
                                                      ),
                                                      catID: getJsonField(
                                                        specarrayItem,
                                                        r'''$.cat_id''',
                                                      ).toString(),
                                                      subcatListIDs:
                                                          getJsonField(
                                                        specarrayItem,
                                                        r'''$.subcat_list_id''',
                                                      ).toString(),
                                                      name: getJsonField(
                                                        specarrayItem,
                                                        r'''$.name''',
                                                      ).toString(),
                                                      brand: getJsonField(
                                                        specarrayItem,
                                                        r'''$.brand''',
                                                      ).toString(),
                                                      brandID: getJsonField(
                                                        specarrayItem,
                                                        r'''$.brand_id''',
                                                      ),
                                                      typeProduct: getJsonField(
                                                        specarrayItem,
                                                        r'''$.type_product''',
                                                      ).toString(),
                                                      gender: getJsonField(
                                                        specarrayItem,
                                                        r'''$.sex''',
                                                      ).toString(),
                                                      country: getJsonField(
                                                        specarrayItem,
                                                        r'''$.country''',
                                                      ).toString(),
                                                      family: getJsonField(
                                                        specarrayItem,
                                                        r'''$.family''',
                                                      ).toString(),
                                                      topNotes: getJsonField(
                                                        specarrayItem,
                                                        r'''$.top_notes''',
                                                      ).toString(),
                                                      heartNotes: getJsonField(
                                                        specarrayItem,
                                                        r'''$.heart_notes''',
                                                      ).toString(),
                                                      baseNotes: getJsonField(
                                                        specarrayItem,
                                                        r'''$.base_notes''',
                                                      ).toString(),
                                                      notes: getJsonField(
                                                        specarrayItem,
                                                        r'''$.notes''',
                                                      ).toString(),
                                                      parfumer: getJsonField(
                                                        specarrayItem,
                                                        r'''$.parfumer''',
                                                      ).toString(),
                                                      collectionName:
                                                          getJsonField(
                                                        specarrayItem,
                                                        r'''$.collection''',
                                                      ).toString(),
                                                      year: getJsonField(
                                                        specarrayItem,
                                                        r'''$.year''',
                                                      ).toString(),
                                                      description: getJsonField(
                                                        specarrayItem,
                                                        r'''$.description''',
                                                      ).toString(),
                                                      previewPicture:
                                                          getJsonField(
                                                        specarrayItem,
                                                        r'''$.previewPicture''',
                                                      ).toString(),
                                                      available: getJsonField(
                                                        specarrayItem,
                                                        r'''$.available''',
                                                      ).toString(),
                                                      newType: getJsonField(
                                                        specarrayItem,
                                                        r'''$.new''',
                                                      ).toString(),
                                                      hitType: getJsonField(
                                                        specarrayItem,
                                                        r'''$.hit''',
                                                      ).toString(),
                                                      recType: getJsonField(
                                                        specarrayItem,
                                                        r'''$.rec''',
                                                      ).toString(),
                                                      specCategory:
                                                          getJsonField(
                                                        specarrayItem,
                                                        r'''$.spec_category''',
                                                      ).toString(),
                                                      iPriceMain: getJsonField(
                                                        specarrayItem,
                                                        r'''$.i_price_main''',
                                                      ),
                                                      rPriceMain: getJsonField(
                                                        specarrayItem,
                                                        r'''$.r_price_main''',
                                                      ),
                                                      minPrice: getJsonField(
                                                        specarrayItem,
                                                        r'''$.min_price''',
                                                      ),
                                                      specPrice: getJsonField(
                                                        specarrayItem,
                                                        r'''$.spec_price''',
                                                      ),
                                                      blackPrice: getJsonField(
                                                        specarrayItem,
                                                        r'''$.black_price''',
                                                      ),
                                                      goldPrice: getJsonField(
                                                        specarrayItem,
                                                        r'''$.gold_price''',
                                                      ),
                                                      infinityPrice:
                                                          getJsonField(
                                                        specarrayItem,
                                                        r'''$.infinity_price''',
                                                      ),
                                                      vipPrice: getJsonField(
                                                        specarrayItem,
                                                        r'''$.vip_price''',
                                                      ),
                                                      discountType:
                                                          getJsonField(
                                                        specarrayItem,
                                                        r'''$.discount_type''',
                                                      ).toString(),
                                                      discountName:
                                                          getJsonField(
                                                        specarrayItem,
                                                        r'''$.discount_name''',
                                                      ).toString(),
                                                      discountValue:
                                                          getJsonField(
                                                        specarrayItem,
                                                        r'''$.discount_value''',
                                                      ).toString(),
                                                      xmlId: getJsonField(
                                                        specarrayItem,
                                                        r'''$.xml_id''',
                                                      ).toString(),
                                                      hasVariants: getJsonField(
                                                        specarrayItem,
                                                        r'''$.has_variants''',
                                                      ),
                                                      minPriceBlack:
                                                          getJsonField(
                                                        specarrayItem,
                                                        r'''$.min_price_black''',
                                                      ),
                                                      minPriceGold:
                                                          getJsonField(
                                                        specarrayItem,
                                                        r'''$.min_price_gold''',
                                                      ),
                                                      minPriceInfinity:
                                                          getJsonField(
                                                        specarrayItem,
                                                        r'''$.min_price_infinity''',
                                                      ),
                                                      minPriceVip: getJsonField(
                                                        specarrayItem,
                                                        r'''$.min_price_vip''',
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 20.0, 10.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Text(
                                          'Новинки',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmallFamily,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(FlutterFlowTheme
                                                            .of(context)
                                                        .headlineSmallFamily),
                                              ),
                                        ),
                                      ),
                                      Text(
                                        'Все',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              fontSize: 13.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 15.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 330.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).mainFon,
                                    ),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: ApiSulGroup.getNewProductsNewCall
                                          .call(
                                        limit: 20,
                                        start: 0,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 150.0,
                                              height: 150.0,
                                              child: SpinKitRipple(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                size: 150.0,
                                              ),
                                            ),
                                          );
                                        }
                                        final listViewGetNewProductsNewResponse =
                                            snapshot.data!;
                                        return Builder(
                                          builder: (context) {
                                            final newarray =
                                                listViewGetNewProductsNewResponse
                                                    .jsonBody
                                                    .toList();
                                            return ListView.separated(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 10.0),
                                              primary: false,
                                              scrollDirection: Axis.horizontal,
                                              itemCount: newarray.length,
                                              separatorBuilder: (_, __) =>
                                                  const SizedBox(width: 10.0),
                                              itemBuilder:
                                                  (context, newarrayIndex) {
                                                final newarrayItem =
                                                    newarray[newarrayIndex];
                                                return Container(
                                                  width: 200.0,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                  ),
                                                  child:
                                                      ProductCardCompCopyWidget(
                                                    key: Key(
                                                        'Key3dq_${newarrayIndex}_of_${newarray.length}'),
                                                    productId: getJsonField(
                                                      newarrayItem,
                                                      r'''$.id''',
                                                    ),
                                                    parId: 1000000,
                                                    parName: '-',
                                                    parType: 'main',
                                                    productArray: newarrayItem,
                                                    productInfo:
                                                        ProductInfoStruct(
                                                      productID: getJsonField(
                                                        newarrayItem,
                                                        r'''$.id''',
                                                      ),
                                                      catID: getJsonField(
                                                        newarrayItem,
                                                        r'''$.cat_id''',
                                                      ).toString(),
                                                      subcatListIDs:
                                                          getJsonField(
                                                        newarrayItem,
                                                        r'''$.subcat_list_id''',
                                                      ).toString(),
                                                      name: getJsonField(
                                                        newarrayItem,
                                                        r'''$.name''',
                                                      ).toString(),
                                                      brand: getJsonField(
                                                        newarrayItem,
                                                        r'''$.brand''',
                                                      ).toString(),
                                                      brandID: getJsonField(
                                                        newarrayItem,
                                                        r'''$.brand_id''',
                                                      ),
                                                      typeProduct: getJsonField(
                                                        newarrayItem,
                                                        r'''$.type_product''',
                                                      ).toString(),
                                                      gender: getJsonField(
                                                        newarrayItem,
                                                        r'''$.sex''',
                                                      ).toString(),
                                                      country: getJsonField(
                                                        newarrayItem,
                                                        r'''$.country''',
                                                      ).toString(),
                                                      family: getJsonField(
                                                        newarrayItem,
                                                        r'''$.family''',
                                                      ).toString(),
                                                      topNotes: getJsonField(
                                                        newarrayItem,
                                                        r'''$.top_notes''',
                                                      ).toString(),
                                                      heartNotes: getJsonField(
                                                        newarrayItem,
                                                        r'''$.heart_notes''',
                                                      ).toString(),
                                                      baseNotes: getJsonField(
                                                        newarrayItem,
                                                        r'''$.base_notes''',
                                                      ).toString(),
                                                      notes: getJsonField(
                                                        newarrayItem,
                                                        r'''$.notes''',
                                                      ).toString(),
                                                      parfumer: getJsonField(
                                                        newarrayItem,
                                                        r'''$.parfumer''',
                                                      ).toString(),
                                                      collectionName:
                                                          getJsonField(
                                                        newarrayItem,
                                                        r'''$.collection''',
                                                      ).toString(),
                                                      year: getJsonField(
                                                        newarrayItem,
                                                        r'''$.year''',
                                                      ).toString(),
                                                      description: getJsonField(
                                                        newarrayItem,
                                                        r'''$.description''',
                                                      ).toString(),
                                                      previewPicture:
                                                          getJsonField(
                                                        newarrayItem,
                                                        r'''$.previewPicture''',
                                                      ).toString(),
                                                      available: getJsonField(
                                                        newarrayItem,
                                                        r'''$.available''',
                                                      ).toString(),
                                                      newType: getJsonField(
                                                        newarrayItem,
                                                        r'''$.new''',
                                                      ).toString(),
                                                      hitType: getJsonField(
                                                        newarrayItem,
                                                        r'''$.hit''',
                                                      ).toString(),
                                                      recType: getJsonField(
                                                        newarrayItem,
                                                        r'''$.rec''',
                                                      ).toString(),
                                                      specCategory:
                                                          getJsonField(
                                                        newarrayItem,
                                                        r'''$.spec_category''',
                                                      ).toString(),
                                                      iPriceMain: getJsonField(
                                                        newarrayItem,
                                                        r'''$.i_price_main''',
                                                      ),
                                                      rPriceMain: getJsonField(
                                                        newarrayItem,
                                                        r'''$.r_price_main''',
                                                      ),
                                                      minPrice: getJsonField(
                                                        newarrayItem,
                                                        r'''$.min_price''',
                                                      ),
                                                      specPrice: getJsonField(
                                                        newarrayItem,
                                                        r'''$.spec_price''',
                                                      ),
                                                      blackPrice: getJsonField(
                                                        newarrayItem,
                                                        r'''$.black_price''',
                                                      ),
                                                      goldPrice: getJsonField(
                                                        newarrayItem,
                                                        r'''$.gold_price''',
                                                      ),
                                                      infinityPrice:
                                                          getJsonField(
                                                        newarrayItem,
                                                        r'''$.infinity_price''',
                                                      ),
                                                      vipPrice: getJsonField(
                                                        newarrayItem,
                                                        r'''$.vip_price''',
                                                      ),
                                                      discountType:
                                                          getJsonField(
                                                        newarrayItem,
                                                        r'''$.discount_type''',
                                                      ).toString(),
                                                      discountName:
                                                          getJsonField(
                                                        newarrayItem,
                                                        r'''$.discount_name''',
                                                      ).toString(),
                                                      discountValue:
                                                          getJsonField(
                                                        newarrayItem,
                                                        r'''$.discount_value''',
                                                      ).toString(),
                                                      xmlId: getJsonField(
                                                        newarrayItem,
                                                        r'''$.xml_id''',
                                                      ).toString(),
                                                      hasVariants: getJsonField(
                                                        newarrayItem,
                                                        r'''$.has_variants''',
                                                      ),
                                                      minPriceBlack:
                                                          getJsonField(
                                                        newarrayItem,
                                                        r'''$.min_price_black''',
                                                      ),
                                                      minPriceGold:
                                                          getJsonField(
                                                        newarrayItem,
                                                        r'''$.min_price_gold''',
                                                      ),
                                                      minPriceInfinity:
                                                          getJsonField(
                                                        newarrayItem,
                                                        r'''$.min_price_infinity''',
                                                      ),
                                                      minPriceVip: getJsonField(
                                                        newarrayItem,
                                                        r'''$.min_price_vip''',
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 20.0, 10.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Text(
                                          'Новости',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmallFamily,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(FlutterFlowTheme
                                                            .of(context)
                                                        .headlineSmallFamily),
                                              ),
                                        ),
                                      ),
                                      Text(
                                        'Все',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              fontSize: 13.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 150.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 270.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).mainFon,
                                    ),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: ApiSulGroup
                                          .getPropertiesValuesCall
                                          .call(
                                        propertyName: 'news',
                                        limit: 7,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 150.0,
                                              height: 150.0,
                                              child: SpinKitRipple(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                size: 150.0,
                                              ),
                                            ),
                                          );
                                        }
                                        final listViewGetPropertiesValuesResponse =
                                            snapshot.data!;
                                        return Builder(
                                          builder: (context) {
                                            final newsarray = getJsonField(
                                              listViewGetPropertiesValuesResponse
                                                  .jsonBody,
                                              r'''$.properties''',
                                            ).toList();
                                            return ListView.separated(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 20.0),
                                              primary: false,
                                              scrollDirection: Axis.horizontal,
                                              itemCount: newsarray.length,
                                              separatorBuilder: (_, __) =>
                                                  const SizedBox(width: 20.0),
                                              itemBuilder:
                                                  (context, newsarrayIndex) {
                                                final newsarrayItem =
                                                    newsarray[newsarrayIndex];
                                                return Container(
                                                  width: 330.0,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                  ),
                                                  child: NewsCardCompWidget(
                                                    key: Key(
                                                        'Keybg5_${newsarrayIndex}_of_${newsarray.length}'),
                                                    news: newsarrayItem,
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: wrapWithModel(
                    model: _model.navBarCustomModel,
                    updateCallback: () => setState(() {}),
                    child: NavBarCustomWidget(
                      selectedPageIndex: FFAppState().basketItemsCount,
                      hidden: false,
                      showCentralButton: true,
                      onBasketchange: (countItems) async {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
