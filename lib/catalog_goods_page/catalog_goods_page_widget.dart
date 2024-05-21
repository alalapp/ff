import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/filter_comp_widget.dart';
import '/components/filter_plusfind_comp_copy_widget.dart';
import '/components/nav_bar_custom_widget.dart';
import '/components/product_card_comp_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'catalog_goods_page_model.dart';
export 'catalog_goods_page_model.dart';

class CatalogGoodsPageWidget extends StatefulWidget {
  const CatalogGoodsPageWidget({
    super.key,
    required this.parId,
    required this.parName,
    String? from,
  }) : from = from ?? 'app';

  final int? parId;
  final String? parName;
  final String from;

  @override
  State<CatalogGoodsPageWidget> createState() => _CatalogGoodsPageWidgetState();
}

class _CatalogGoodsPageWidgetState extends State<CatalogGoodsPageWidget> {
  late CatalogGoodsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CatalogGoodsPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.from == 'propPage') {
        setState(() {
          _model.brandsdata = [];
        });
        setState(() {
          _model.brandsdata =
              FFAppState().productsData.toList().cast<dynamic>();
        });
      } else {
        _model.brandsdataresStart = await ApiSulGroup.getProductsNewCall.call(
          bypar: 'bycategory',
          id: widget.parId,
        );
        FFAppState().update(() {
          FFAppState().productsData =
              (_model.brandsdataresStart?.jsonBody ?? '')
                  .toList()
                  .cast<dynamic>();
        });
        if (!FFAppState().brandfilter.sortByName) {
          if (FFAppState().cardid != '') {
            if (FFAppState().cardlevelname == 'Black') {
              setState(() {
                FFAppState().productsData = functions
                    .sortProducts(
                        FFAppState().productsData.toList(), 'min_price_black')
                    .toList()
                    .cast<dynamic>();
              });
            } else if (FFAppState().cardlevelname == 'Gold') {
              setState(() {
                FFAppState().productsData = functions
                    .sortProducts(
                        FFAppState().productsData.toList(), 'min_price_gold')
                    .toList()
                    .cast<dynamic>();
              });
            } else if (FFAppState().cardlevelname == 'Infinity') {
              setState(() {
                FFAppState().productsData = functions
                    .sortProducts(FFAppState().productsData.toList(),
                        'min_price_infinity')
                    .toList()
                    .cast<dynamic>();
              });
            } else {
              setState(() {
                FFAppState().productsData = functions
                    .sortProducts(
                        FFAppState().productsData.toList(), 'min_price_vip')
                    .toList()
                    .cast<dynamic>();
              });
            }
          } else {
            FFAppState().update(() {
              FFAppState().productsData = functions
                  .sortProducts(FFAppState().productsData.toList(), 'min_price')
                  .toList()
                  .cast<dynamic>();
            });
          }
        } else {
          FFAppState().update(() {
            FFAppState().productsData = functions
                .sortProducts(FFAppState().productsData.toList(), 'name')
                .toList()
                .cast<dynamic>();
          });
        }

        setState(() {
          _model.brandsdata = [];
        });
        setState(() {
          _model.brandsdata =
              FFAppState().productsData.toList().cast<dynamic>();
        });
        FFAppState().update(() {
          FFAppState().fBrand = 0;
          FFAppState().fCountry = 0;
          FFAppState().fTypeProduct = 0;
          FFAppState().fGender = 0;
          FFAppState().fParfumer = 0;
          FFAppState().fFamily = 0;
        });
        FFAppState().update(() {
          FFAppState().yearProp2 =
              FFAppState().yearPropList.toList().cast<PropertyValuesStruct>();
          FFAppState().brandProp2 =
              FFAppState().brandPropList.toList().cast<PropertyValuesStruct>();
          FFAppState().countryProp2 = FFAppState()
              .countryPropList
              .toList()
              .cast<PropertyValuesStruct>();
          FFAppState().productTypeProp2 = FFAppState()
              .productTypePropList
              .toList()
              .cast<PropertyValuesStruct>();
          FFAppState().genderProp2 =
              FFAppState().genderPropList.toList().cast<PropertyValuesStruct>();
          FFAppState().notesProp2 =
              FFAppState().notesPropList.toList().cast<PropertyValuesStruct>();
          FFAppState().parfumerProp2 = FFAppState()
              .parfumerPropList
              .toList()
              .cast<PropertyValuesStruct>();
          FFAppState().collectionProp2 = FFAppState()
              .collectionPropList
              .toList()
              .cast<PropertyValuesStruct>();
          FFAppState().familyProp2 =
              FFAppState().familyPropList.toList().cast<PropertyValuesStruct>();
        });
        if (FFAppState().cardid != '') {
          if (FFAppState().cardlevelname == 'Black') {
            setState(() {
              _model.minpriceArray = ApiSulGroup.getProductsNewCall
                  .minpriceblack(
                    (_model.brandsdataresStart?.jsonBody ?? ''),
                  )!
                  .toList()
                  .cast<int>();
            });
          } else if (FFAppState().cardlevelname == 'Gold') {
            setState(() {
              _model.minpriceArray = ApiSulGroup.getProductsNewCall
                  .minpricegold(
                    (_model.brandsdataresStart?.jsonBody ?? ''),
                  )!
                  .toList()
                  .cast<int>();
            });
          } else if (FFAppState().cardlevelname == 'Infinity') {
            setState(() {
              _model.minpriceArray = ApiSulGroup.getProductsNewCall
                  .minpriceinfinity(
                    (_model.brandsdataresStart?.jsonBody ?? ''),
                  )!
                  .toList()
                  .cast<int>();
            });
          } else {
            setState(() {
              _model.minpriceArray = ApiSulGroup.getProductsNewCall
                  .minpricevip(
                    (_model.brandsdataresStart?.jsonBody ?? ''),
                  )!
                  .toList()
                  .cast<int>();
            });
          }
        } else {
          setState(() {
            _model.minpriceArray = ApiSulGroup.getProductsNewCall
                .goodsminprice(
                  (_model.brandsdataresStart?.jsonBody ?? ''),
                )!
                .toList()
                .cast<int>();
          });
        }

        setState(() {
          FFAppState().start =
              functions.minList(_model.minpriceArray.toList())!;
          FFAppState().end = functions.maxList(_model.minpriceArray.toList())!;
          FFAppState().startbase =
              functions.minList(_model.minpriceArray.toList())!;
          FFAppState().endbase =
              functions.maxList(_model.minpriceArray.toList())!;
        });
        setState(() {
          FFAppState().totalFilteredItems = _model.brandsdata.length;
        });
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

    return FutureBuilder<ApiCallResponse>(
      future: ApiSulGroup.getProductsNewCall.call(
        bypar: 'bycategory',
        id: widget.parId,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 150.0,
                height: 150.0,
                child: SpinKitRipple(
                  color: FlutterFlowTheme.of(context).secondary,
                  size: 150.0,
                ),
              ),
            ),
          );
        }
        final catalogGoodsPageGetProductsNewResponse = snapshot.data!;
        return Title(
            title: 'catalogGoodsPage',
            color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
            child: GestureDetector(
              onTap: () => _model.unfocusNode.canRequestFocus
                  ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                  : FocusScope.of(context).unfocus(),
              child: Scaffold(
                key: scaffoldKey,
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                body: NestedScrollView(
                  floatHeaderSlivers: true,
                  headerSliverBuilder: (context, _) => [
                    SliverAppBar(
                      expandedHeight: 60.0,
                      collapsedHeight: 60.0,
                      pinned: true,
                      floating: false,
                      backgroundColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      automaticallyImplyLeading: false,
                      leading: Align(
                        alignment: const AlignmentDirectional(1.0, 0.0),
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            shape: BoxShape.circle,
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderRadius: 30.0,
                              borderWidth: 1.0,
                              buttonSize: 60.0,
                              icon: Icon(
                                Icons.arrow_back,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 27.0,
                              ),
                              onPressed: () async {
                                context.goNamed(
                                  'homePage',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType:
                                          PageTransitionType.bottomToTop,
                                    ),
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      title: Align(
                        alignment: const AlignmentDirectional(0.0, 1.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: valueOrDefault<String>(
                                        widget.parName,
                                        '-',
                                      ),
                                      style: const TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: wrapWithModel(
                            model: _model.filterPlusfindCompCopyModel,
                            updateCallback: () => setState(() {}),
                            child: FilterPlusfindCompCopyWidget(
                              parameter1: widget.parId!,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: wrapWithModel(
                            model: _model.filterCompModel,
                            updateCallback: () => setState(() {}),
                            child: FilterCompWidget(
                              paramID: widget.parId!,
                              paramNAME: widget.parName!,
                              paramType: 'cat',
                              paranAction: (data) async {},
                            ),
                          ),
                        ),
                      ],
                      centerTitle: true,
                      toolbarHeight: 60.0,
                      elevation: 0.0,
                    )
                  ],
                  body: Builder(
                    builder: (context) {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 76.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: const BoxDecoration(),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 5.0, 0.0),
                                        child: Builder(
                                          builder: (context) {
                                            final goodsArr = FFAppState()
                                                .productsData
                                                .where((e) => FFAppState()
                                                            .brandfilter
                                                            .showUnavailable ==
                                                        'Y'
                                                    ? true
                                                    : (functions
                                                            .convJsonToStringCopy(
                                                                getJsonField(
                                                          e,
                                                          r'''$.available''',
                                                        )) ==
                                                        FFAppConstants
                                                            .available))
                                                .toList();
                                            return InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                setState(() {
                                                  _model.brandsdata = [];
                                                });
                                                setState(() {
                                                  _model.brandsdata =
                                                      FFAppState()
                                                          .productsData
                                                          .toList()
                                                          .cast<dynamic>();
                                                });
                                              },
                                              child: RefreshIndicator(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                onRefresh: () async {
                                                  setState(() {
                                                    _model.brandsdata = [];
                                                  });
                                                  setState(() {
                                                    _model.brandsdata =
                                                        FFAppState()
                                                            .productsData
                                                            .toList()
                                                            .cast<dynamic>();
                                                  });
                                                },
                                                child: GridView.builder(
                                                  padding: EdgeInsets.zero,
                                                  gridDelegate:
                                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 2,
                                                    childAspectRatio: 0.6,
                                                  ),
                                                  primary: false,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount: goodsArr.length,
                                                  itemBuilder:
                                                      (context, goodsArrIndex) {
                                                    final goodsArrItem =
                                                        goodsArr[goodsArrIndex];
                                                    return ProductCardCompWidget(
                                                      key: Key(
                                                          'Keycfn_${goodsArrIndex}_of_${goodsArr.length}'),
                                                      productId: getJsonField(
                                                        goodsArrItem,
                                                        r'''$.id''',
                                                      ),
                                                      parId: widget.parId,
                                                      parName: widget.parName,
                                                      parType: 'cat',
                                                      prLike: false,
                                                      prBasket: false,
                                                      productArray:
                                                          goodsArrItem,
                                                      productInfo:
                                                          ProductInfoStruct(
                                                        productID: getJsonField(
                                                          goodsArrItem,
                                                          r'''$.id''',
                                                        ),
                                                        catID: getJsonField(
                                                          goodsArrItem,
                                                          r'''$.cat_id''',
                                                        ).toString(),
                                                        subcatListIDs:
                                                            getJsonField(
                                                          goodsArrItem,
                                                          r'''$.subcat_list_id''',
                                                        ).toString(),
                                                        name: getJsonField(
                                                          goodsArrItem,
                                                          r'''$.name''',
                                                        ).toString(),
                                                        brand: getJsonField(
                                                          goodsArrItem,
                                                          r'''$.brand''',
                                                        ).toString(),
                                                        brandID: getJsonField(
                                                          goodsArrItem,
                                                          r'''$.brand_id''',
                                                        ),
                                                        typeProduct:
                                                            getJsonField(
                                                          goodsArrItem,
                                                          r'''$.type_product''',
                                                        ).toString(),
                                                        gender: getJsonField(
                                                          goodsArrItem,
                                                          r'''$.sex''',
                                                        ).toString(),
                                                        country: getJsonField(
                                                          goodsArrItem,
                                                          r'''$.country''',
                                                        ).toString(),
                                                        family: getJsonField(
                                                          goodsArrItem,
                                                          r'''$.family''',
                                                        ).toString(),
                                                        topNotes: getJsonField(
                                                          goodsArrItem,
                                                          r'''$.top_notes''',
                                                        ).toString(),
                                                        heartNotes:
                                                            getJsonField(
                                                          goodsArrItem,
                                                          r'''$.heart_notes''',
                                                        ).toString(),
                                                        baseNotes: getJsonField(
                                                          goodsArrItem,
                                                          r'''$.base_notes''',
                                                        ).toString(),
                                                        notes: getJsonField(
                                                          goodsArrItem,
                                                          r'''$.notes''',
                                                        ).toString(),
                                                        parfumer: getJsonField(
                                                          goodsArrItem,
                                                          r'''$.parfumer''',
                                                        ).toString(),
                                                        collectionName:
                                                            getJsonField(
                                                          goodsArrItem,
                                                          r'''$.collection''',
                                                        ).toString(),
                                                        year: getJsonField(
                                                          goodsArrItem,
                                                          r'''$.year''',
                                                        ).toString(),
                                                        description:
                                                            getJsonField(
                                                          goodsArrItem,
                                                          r'''$.description''',
                                                        ).toString(),
                                                        previewPicture:
                                                            getJsonField(
                                                          goodsArrItem,
                                                          r'''$.previewPicture''',
                                                        ).toString(),
                                                        available: getJsonField(
                                                          goodsArrItem,
                                                          r'''$.available''',
                                                        ).toString(),
                                                        newType: getJsonField(
                                                          goodsArrItem,
                                                          r'''$.new''',
                                                        ).toString(),
                                                        hitType: getJsonField(
                                                          goodsArrItem,
                                                          r'''$.hit''',
                                                        ).toString(),
                                                        recType: getJsonField(
                                                          goodsArrItem,
                                                          r'''$.rec''',
                                                        ).toString(),
                                                        specCategory:
                                                            getJsonField(
                                                          goodsArrItem,
                                                          r'''$.spec_category''',
                                                        ).toString(),
                                                        iPriceMain:
                                                            getJsonField(
                                                          goodsArrItem,
                                                          r'''$.i_price_main''',
                                                        ),
                                                        rPriceMain:
                                                            getJsonField(
                                                          goodsArrItem,
                                                          r'''$.r_price_main''',
                                                        ),
                                                        minPrice: getJsonField(
                                                          goodsArrItem,
                                                          r'''$.min_price''',
                                                        ),
                                                        specPrice: getJsonField(
                                                          goodsArrItem,
                                                          r'''$.spec_price''',
                                                        ),
                                                        blackPrice:
                                                            getJsonField(
                                                          goodsArrItem,
                                                          r'''$.black_price''',
                                                        ),
                                                        goldPrice: getJsonField(
                                                          goodsArrItem,
                                                          r'''$.gold_price''',
                                                        ),
                                                        infinityPrice:
                                                            getJsonField(
                                                          goodsArrItem,
                                                          r'''$.infinity_price''',
                                                        ),
                                                        vipPrice: getJsonField(
                                                          goodsArrItem,
                                                          r'''$.vip_price''',
                                                        ),
                                                        discountType:
                                                            getJsonField(
                                                          goodsArrItem,
                                                          r'''$.discount_type''',
                                                        ).toString(),
                                                        discountName:
                                                            getJsonField(
                                                          goodsArrItem,
                                                          r'''$.discount_name''',
                                                        ).toString(),
                                                        discountValue:
                                                            getJsonField(
                                                          goodsArrItem,
                                                          r'''$.discount_value''',
                                                        ).toString(),
                                                        xmlId: getJsonField(
                                                          goodsArrItem,
                                                          r'''$.xml_id''',
                                                        ).toString(),
                                                        hasVariants:
                                                            getJsonField(
                                                          goodsArrItem,
                                                          r'''$.has_variants''',
                                                        ),
                                                        minPriceBlack:
                                                            getJsonField(
                                                          goodsArrItem,
                                                          r'''$.min_price_black''',
                                                        ),
                                                        minPriceGold:
                                                            getJsonField(
                                                          goodsArrItem,
                                                          r'''$.min_price_gold''',
                                                        ),
                                                        minPriceInfinity:
                                                            getJsonField(
                                                          goodsArrItem,
                                                          r'''$.min_price_infinity''',
                                                        ),
                                                        minPriceVip:
                                                            getJsonField(
                                                          goodsArrItem,
                                                          r'''$.min_price_vip''',
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                    child: SizedBox(
                                      height: 80.0,
                                      child: Stack(
                                        alignment:
                                            const AlignmentDirectional(0.0, 1.0),
                                        children: [
                                          wrapWithModel(
                                            model: _model.navBarCustomModel,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: NavBarCustomWidget(
                                              selectedPageIndex:
                                                  FFAppState().basketItemsCount,
                                              hidden: false,
                                              showCentralButton: true,
                                              onBasketchange:
                                                  (countItems) async {},
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
                        ],
                      );
                    },
                  ),
                ),
              ),
            ));
      },
    );
  }
}
