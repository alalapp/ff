import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/nav_bar_custom_widget.dart';
import '/components/product_card_comp_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'brands_goods_page_model.dart';
export 'brands_goods_page_model.dart';

class BrandsGoodsPageWidget extends StatefulWidget {
  const BrandsGoodsPageWidget({
    super.key,
    required this.parId,
    required this.parName,
    String? from,
  }) : from = from ?? 'app';

  final int? parId;
  final String? parName;
  final String from;

  @override
  State<BrandsGoodsPageWidget> createState() => _BrandsGoodsPageWidgetState();
}

class _BrandsGoodsPageWidgetState extends State<BrandsGoodsPageWidget> {
  late BrandsGoodsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BrandsGoodsPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.brandsdataresStart = await ApiSulGroup.getProductsNewCall.call(
        bypar: 'bybrand',
        id: widget.parId,
      );
      if (widget.from == 'propPage') {
        setState(() {
          _model.brandsdata = [];
        });
        setState(() {
          _model.brandsdata =
              FFAppState().productsData.toList().cast<dynamic>();
        });
      } else {
        setState(() {
          _model.brandsdata = [];
        });
        FFAppState().update(() {
          FFAppState().productsData = [];
          FFAppState().fBrand = 0;
          FFAppState().fCountry = 0;
          FFAppState().fTypeProduct = 0;
          FFAppState().fGender = 0;
          FFAppState().fParfumer = 0;
          FFAppState().fFamily = 0;
        });
        FFAppState().update(() {
          FFAppState().productsData =
              (_model.brandsdataresStart?.jsonBody ?? '')
                  .toList()
                  .cast<dynamic>();
        });
        if (!FFAppState().brandfilter.sortByName) {
          if (FFAppState().cardid != '') {
            if (FFAppState().cardlevelname == 'Black') {
              FFAppState().update(() {
                FFAppState().productsData = functions
                    .sortProducts(
                        FFAppState().productsData.toList(), 'min_price_black')
                    .toList()
                    .cast<dynamic>();
              });
            } else if (FFAppState().cardlevelname == 'Gold') {
              FFAppState().update(() {
                FFAppState().productsData = functions
                    .sortProducts(
                        FFAppState().productsData.toList(), 'min_price_gold')
                    .toList()
                    .cast<dynamic>();
              });
            } else if (FFAppState().cardlevelname == 'Infinity') {
              FFAppState().update(() {
                FFAppState().productsData = functions
                    .sortProducts(FFAppState().productsData.toList(),
                        'min_price_infinity')
                    .toList()
                    .cast<dynamic>();
              });
            } else {
              FFAppState().update(() {
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
          _model.brandsdata =
              FFAppState().productsData.toList().cast<dynamic>();
        });
        setState(() {
          FFAppState().yearProp2 = [];
          FFAppState().brandProp2 = [];
          FFAppState().countryProp2 = [];
          FFAppState().productTypeProp2 = [];
          FFAppState().genderProp2 = [];
          FFAppState().notesProp2 = [];
          FFAppState().parfumerProp2 = [];
          FFAppState().collectionProp2 = [];
          FFAppState().familyProp2 = [];
        });
        setState(() {
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
      }
    });

    _model.expandableExpandableController =
        ExpandableController(initialExpanded: false);
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
      future: ApiSulGroup.getBrandInfoCall.call(
        action: 'getinfo',
        brandId: widget.parId,
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
        final brandsGoodsPageGetBrandInfoResponse = snapshot.data!;
        return Title(
            title: 'brandsGoodsPage',
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
                      expandedHeight: 250.0,
                      collapsedHeight: 60.0,
                      pinned: true,
                      floating: false,
                      backgroundColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      automaticallyImplyLeading: false,
                      title: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 27.0,
                                  ),
                                  onPressed: () async {
                                    context.goNamed(
                                      'brandsPage',
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
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
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
                              Align(
                                alignment: const AlignmentDirectional(1.0, 0.0),
                                child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Align(
                                    alignment: const AlignmentDirectional(1.0, 0.0),
                                    child: FlutterFlowIconButton(
                                      borderRadius: 30.0,
                                      buttonSize: 60.0,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      icon: Icon(
                                        Icons.tune,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 27.0,
                                      ),
                                      onPressed: () async {
                                        context.pushNamed(
                                          'propPage',
                                          queryParameters: {
                                            'parID': serializeParam(
                                              widget.parId,
                                              ParamType.int,
                                            ),
                                            'parName': serializeParam(
                                              widget.parName,
                                              ParamType.String,
                                            ),
                                            'parType': serializeParam(
                                              'brand',
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .leftToRight,
                                            ),
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      actions: const [],
                      flexibleSpace: FlexibleSpaceBar(
                        background: ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.network(
                            ApiSulGroup.getBrandInfoCall.brandfoto(
                              brandsGoodsPageGetBrandInfoResponse.jsonBody,
                            )!,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                Image.asset(
                              'assets/images/error_image.png',
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
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
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: double.infinity,
                                color: const Color(0x00000000),
                                child: ExpandableNotifier(
                                  controller:
                                      _model.expandableExpandableController,
                                  child: ExpandablePanel(
                                    header: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          15.0, 10.0, 0.0, 10.0),
                                      child: Text(
                                        'информация о бренде',
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .displaySmallFamily,
                                              color: Colors.black,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .displaySmallFamily),
                                            ),
                                      ),
                                    ),
                                    collapsed: Container(),
                                    expanded: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 15.0, 0.0),
                                          child: Html(
                                            data: ApiSulGroup.getBrandInfoCall
                                                .description(
                                              brandsGoodsPageGetBrandInfoResponse
                                                  .jsonBody,
                                            )!,
                                            onLinkTap: (url, _, __, ___) =>
                                                launchURL(url!),
                                          ),
                                        ),
                                      ],
                                    ),
                                    theme: const ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: false,
                                      tapBodyToCollapse: true,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
                                      hasIcon: true,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              decoration: const BoxDecoration(),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 5.0, 76.0),
                                      child: Builder(
                                        builder: (context) {
                                          final goodsByBrandArr = FFAppState()
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
                                                      FFAppConstants.available))
                                              .toList();
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              setState(() {
                                                _model.brandsdata = [];
                                              });
                                              setState(() {
                                                _model.brandsdata = FFAppState()
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
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    goodsByBrandArr.length,
                                                itemBuilder: (context,
                                                    goodsByBrandArrIndex) {
                                                  final goodsByBrandArrItem =
                                                      goodsByBrandArr[
                                                          goodsByBrandArrIndex];
                                                  return ProductCardCompWidget(
                                                    key: Key(
                                                        'Key4vs_${goodsByBrandArrIndex}_of_${goodsByBrandArr.length}'),
                                                    productId: getJsonField(
                                                      goodsByBrandArrItem,
                                                      r'''$.id''',
                                                    ),
                                                    parId: widget.parId,
                                                    parName: widget.parName,
                                                    parType: 'brand',
                                                    prLike: false,
                                                    prBasket: false,
                                                    productArray:
                                                        goodsByBrandArrItem,
                                                    productInfo:
                                                        ProductInfoStruct(
                                                      productID: getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.id''',
                                                      ),
                                                      catID: getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.cat_id''',
                                                      ).toString(),
                                                      subcatListIDs:
                                                          getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.subcat_list_id''',
                                                      ).toString(),
                                                      name: getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.name''',
                                                      ).toString(),
                                                      brand: getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.brand''',
                                                      ).toString(),
                                                      brandID: getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.brand_id''',
                                                      ),
                                                      typeProduct: getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.type_product''',
                                                      ).toString(),
                                                      gender: getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.sex''',
                                                      ).toString(),
                                                      country: getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.country''',
                                                      ).toString(),
                                                      family: getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.family''',
                                                      ).toString(),
                                                      topNotes: getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.top_notes''',
                                                      ).toString(),
                                                      heartNotes: getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.heart_notes''',
                                                      ).toString(),
                                                      baseNotes: getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.base_notes''',
                                                      ).toString(),
                                                      notes: getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.notes''',
                                                      ).toString(),
                                                      parfumer: getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.parfumer''',
                                                      ).toString(),
                                                      collectionName:
                                                          getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.collection''',
                                                      ).toString(),
                                                      year: getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.year''',
                                                      ).toString(),
                                                      description: getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.description''',
                                                      ).toString(),
                                                      previewPicture:
                                                          getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.previewPicture''',
                                                      ).toString(),
                                                      available: getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.available''',
                                                      ).toString(),
                                                      newType: getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.new''',
                                                      ).toString(),
                                                      hitType: getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.hit''',
                                                      ).toString(),
                                                      recType: getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.rec''',
                                                      ).toString(),
                                                      specCategory:
                                                          getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.spec_category''',
                                                      ).toString(),
                                                      iPriceMain: getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.i_price_main''',
                                                      ),
                                                      rPriceMain: getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.r_price_main''',
                                                      ),
                                                      minPrice: getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.min_price''',
                                                      ),
                                                      specPrice: getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.spec_price''',
                                                      ),
                                                      blackPrice: getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.black_price''',
                                                      ),
                                                      goldPrice: getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.gold_price''',
                                                      ),
                                                      infinityPrice:
                                                          getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.infinity_price''',
                                                      ),
                                                      vipPrice: getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.vip_price''',
                                                      ),
                                                      discountType:
                                                          getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.discount_type''',
                                                      ).toString(),
                                                      discountName:
                                                          getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.discount_name''',
                                                      ).toString(),
                                                      discountValue:
                                                          getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.discount_value''',
                                                      ).toString(),
                                                      xmlId: getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.xml_id''',
                                                      ).toString(),
                                                      hasVariants: getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.has_variants''',
                                                      ),
                                                      minPriceBlack:
                                                          getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.min_price_black''',
                                                      ),
                                                      minPriceGold:
                                                          getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.min_price_gold''',
                                                      ),
                                                      minPriceInfinity:
                                                          getJsonField(
                                                        goodsByBrandArrItem,
                                                        r'''$.min_price_infinity''',
                                                      ),
                                                      minPriceVip: getJsonField(
                                                        goodsByBrandArrItem,
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
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      child: SizedBox(
                                        height: 80.0,
                                        child: Stack(
                                          alignment:
                                              const AlignmentDirectional(0.0, 1.0),
                                          children: [
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: wrapWithModel(
                                                model: _model.navBarCustomModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: NavBarCustomWidget(
                                                  selectedPageIndex:
                                                      FFAppState()
                                                          .basketItemsCount,
                                                  hidden: false,
                                                  showCentralButton: true,
                                                  onBasketchange:
                                                      (countItems) async {},
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
