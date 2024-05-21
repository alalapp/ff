import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/nav_bar_custom_widget.dart';
import '/components/price_on_product_page_comp_color_widget.dart';
import '/components/price_on_product_page_comp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_page_model.dart';
export 'product_page_model.dart';

class ProductPageWidget extends StatefulWidget {
  const ProductPageWidget({
    super.key,
    required this.productId,
    required this.product,
    this.parId,
    this.parName,
    this.partype,
    this.byPar,
  });

  final int? productId;
  final dynamic product;
  final int? parId;
  final String? parName;
  final String? partype;
  final String? byPar;

  @override
  State<ProductPageWidget> createState() => _ProductPageWidgetState();
}

class _ProductPageWidgetState extends State<ProductPageWidget> {
  late ProductPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.updateProductDataTypeStruct(
          (e) => e
            ..productID = getJsonField(
              widget.product,
              r'''$.id''',
            )
            ..catID = getJsonField(
              widget.product,
              r'''$.cat_id''',
            ).toString().toString()
            ..name = getJsonField(
              widget.product,
              r'''$.name''',
            ).toString().toString()
            ..brand = getJsonField(
              widget.product,
              r'''$.brand''',
            ).toString().toString()
            ..brandID = getJsonField(
              widget.product,
              r'''$.brand_id''',
            )
            ..typeProduct = getJsonField(
              widget.product,
              r'''$.type_product''',
            ).toString().toString()
            ..gender = getJsonField(
              widget.product,
              r'''$.sex''',
            ).toString().toString()
            ..country = getJsonField(
              widget.product,
              r'''$.country''',
            ).toString().toString()
            ..family = getJsonField(
              widget.product,
              r'''$.family''',
            ).toString().toString()
            ..topNotes = getJsonField(
              widget.product,
              r'''$.top_notes''',
            ).toString().toString()
            ..heartNotes = getJsonField(
              widget.product,
              r'''$.heart_notes''',
            ).toString().toString()
            ..baseNotes = getJsonField(
              widget.product,
              r'''$.base_notes''',
            ).toString().toString()
            ..notes = getJsonField(
              widget.product,
              r'''$.notes''',
            ).toString().toString()
            ..parfumer = getJsonField(
              widget.product,
              r'''$.parfumer''',
            ).toString().toString()
            ..collectionName = getJsonField(
              widget.product,
              r'''$.collection''',
            ).toString().toString()
            ..year = getJsonField(
              widget.product,
              r'''$.year''',
            ).toString().toString()
            ..description = getJsonField(
              widget.product,
              r'''$.description''',
            ).toString().toString()
            ..available = getJsonField(
              widget.product,
              r'''$.available''',
            ).toString().toString()
            ..previewPicture = getJsonField(
              widget.product,
              r'''$.previewPicture''',
            ).toString()
            ..newType = getJsonField(
              widget.product,
              r'''$.new''',
            ).toString().toString()
            ..hitType = getJsonField(
              widget.product,
              r'''$.hit''',
            ).toString().toString()
            ..recType = getJsonField(
              widget.product,
              r'''$.rec''',
            ).toString().toString()
            ..specCategory = getJsonField(
              widget.product,
              r'''$.spec_category''',
            ).toString().toString()
            ..iPriceMain = getJsonField(
              widget.product,
              r'''$.i_price_main''',
            )
            ..rPriceMain = getJsonField(
              widget.product,
              r'''$.r_price_main''',
            )
            ..minPrice = getJsonField(
              widget.product,
              r'''$.min_price''',
            )
            ..specPrice = getJsonField(
              widget.product,
              r'''$.spec_price''',
            )
            ..blackPrice = getJsonField(
              widget.product,
              r'''$.black_price''',
            )
            ..goldPrice = getJsonField(
              widget.product,
              r'''$.gold_price''',
            )
            ..infinityPrice = getJsonField(
              widget.product,
              r'''$.infinity_price''',
            )
            ..vipPrice = getJsonField(
              widget.product,
              r'''$.vip_price''',
            )
            ..discountType = getJsonField(
              widget.product,
              r'''$.discount_type''',
            ).toString().toString()
            ..discountName = getJsonField(
              widget.product,
              r'''$.discount_name''',
            ).toString().toString()
            ..discountValue = getJsonField(
              widget.product,
              r'''$.discount_value''',
            ).toString().toString()
            ..xmlId = getJsonField(
              widget.product,
              r'''$.xml_id''',
            ).toString().toString()
            ..hasVariants = getJsonField(
              widget.product,
              r'''$.has_variants''',
            )
            ..minPriceBlack = getJsonField(
              widget.product,
              r'''$.min_price_black''',
            )
            ..minPriceGold = getJsonField(
              widget.product,
              r'''$.min_price_gold''',
            )
            ..minPriceInfinity = getJsonField(
              widget.product,
              r'''$.min_price_infinity''',
            )
            ..minPriceVip = getJsonField(
              widget.product,
              r'''$.min_price_vip''',
            ),
        );
      });
      if (_model.productDataType!.hasVariants) {
        _model.offersRes = await ApiSulGroup.getOffersNewCall.call(
          id: widget.productId,
        );
        setState(() {
          _model.productOffers = functions
              .jsonToOffersList((_model.offersRes?.jsonBody ?? ''))!
              .toList()
              .cast<OfferInfoStruct>();
        });
        setState(() {
          _model.updateProductDataTypeStruct(
            (e) => e
              ..offers = functions
                  .jsonToOffersList((_model.offersRes?.jsonBody ?? ''))!
                  .toList(),
          );
        });
        setState(() {
          _model.productName = _model.productDataType?.name;
          _model.productBrand = _model.productDataType?.brand;
          _model.productCollection = _model.productDataType?.collectionName;
          _model.productYear = _model.productDataType?.year;
          _model.productNotes = _model.productDataType?.notes;
          _model.productTopNotes = _model.productDataType?.topNotes;
          _model.productHeartNotes = _model.productDataType?.heartNotes;
          _model.productBaseNotes = _model.productDataType?.baseNotes;
          _model.productParfumeur = _model.productDataType?.parfumer;
          _model.productSex = _model.productDataType?.gender;
          _model.productCountry = _model.productDataType?.country;
          _model.productType = _model.productDataType?.typeProduct;
          _model.productFamily = _model.productDataType?.family;
          _model.productAvailable =
              _model.productDataType?.offers.first.available;
          _model.productRprice =
              _model.productDataType?.offers.first.rPrice.toString();
          _model.productIprice =
              _model.productDataType?.offers.first.iPrice.toString();
          _model.offersCount = _model.productDataType?.offers.length;
          _model.productVariant = _model.productDataType?.offers.first.volume;
          _model.productVariantCut =
              functions.replaceStr(_model.productDataType!.offers.first.volume);
          _model.xmlVariant = _model.productDataType?.offers.first.xmlIDOffer;
          _model.productColor = colorFromCssString(
            _model.productDataType!.offers.first.color,
            defaultColor: Colors.black,
          );
          _model.productDiscount =
              _model.productDataType?.offers.first.discValue;
        });
        if (FFAppState().cardid != '') {
          if (FFAppState().cardlevelname == 'Black') {
            setState(() {
              _model.productUserPrice =
                  _model.productDataType?.offers.first.blackPrice.toString();
            });
          } else if (FFAppState().cardlevelname == 'Gold') {
            setState(() {
              _model.productUserPrice =
                  _model.productDataType?.offers.first.goldPrice.toString();
            });
          } else if (FFAppState().cardlevelname == 'Infinity') {
            setState(() {
              _model.productUserPrice = _model
                  .productDataType?.offers.first.infinityPrice
                  .toString();
            });
          } else {
            setState(() {
              _model.productUserPrice =
                  _model.productDataType?.offers.first.vipPrice.toString();
            });
          }
        } else {
          setState(() {
            _model.productUserPrice =
                _model.productDataType?.blackPrice.toString();
          });
        }

        setState(() {
          _model.productSpecPrice =
              _model.productDataType?.offers.first.specPrice.toString();
        });
      } else {
        setState(() {
          _model.productName = _model.productDataType?.name;
          _model.productBrand = _model.productDataType?.brand;
          _model.productCollection = _model.productDataType?.collectionName;
          _model.productYear = _model.productDataType?.year;
          _model.productNotes = _model.productDataType?.notes;
          _model.productTopNotes = _model.productDataType?.topNotes;
          _model.productHeartNotes = _model.productDataType?.heartNotes;
          _model.productBaseNotes = _model.productDataType?.baseNotes;
          _model.productParfumeur = _model.productDataType?.parfumer;
          _model.productSex = _model.productDataType?.gender;
          _model.productCountry = _model.productDataType?.country;
          _model.productType = _model.productDataType?.typeProduct;
          _model.productFamily = _model.productDataType?.family;
          _model.productAvailable = _model.productDataType?.available;
          _model.productRprice = _model.productDataType?.rPriceMain.toString();
          _model.productIprice = _model.productDataType?.iPriceMain.toString();
          _model.offersCount = 0;
          _model.productVariant = 'шт';
          _model.productVariantCut = '-';
          _model.xmlVariant = _model.productDataType?.xmlId;
          _model.productDiscount = _model.productDataType?.discountValue;
        });
        if (FFAppState().cardid != '') {
          if (FFAppState().cardlevelname == 'Black') {
            setState(() {
              _model.productUserPrice =
                  _model.productDataType?.blackPrice.toString();
            });
          } else if (FFAppState().cardlevelname == 'Gold') {
            setState(() {
              _model.productUserPrice =
                  _model.productDataType?.goldPrice.toString();
            });
          } else if (FFAppState().cardlevelname == 'Infinity') {
            setState(() {
              _model.productUserPrice =
                  _model.productDataType?.infinityPrice.toString();
            });
          } else {
            setState(() {
              _model.productUserPrice =
                  _model.productDataType?.vipPrice.toString();
            });
          }
        } else {
          setState(() {
            _model.productUserPrice =
                _model.productDataType?.blackPrice.toString();
          });
        }

        setState(() {
          _model.productSpecPrice =
              _model.productDataType?.specPrice.toString();
        });
      }
    });

    _model.expandableExpandableController1 =
        ExpandableController(initialExpanded: true);
    _model.expandableExpandableController2 =
        ExpandableController(initialExpanded: true);
    _model.expandableExpandableController3 =
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

    return Title(
        title: 'productPage',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        StickyHeader(
                          overlapHeaders: false,
                          header: Container(
                            width: double.infinity,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 15.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.safePop();
                                    },
                                    child: Icon(
                                      Icons.arrow_back,
                                      color:
                                          FlutterFlowTheme.of(context).button3,
                                      size: 27.0,
                                    ),
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          5.0, 7.0, 5.0, 10.0),
                                      child: Text(
                                        functions.cutStringF(
                                            (String brand, String name) {
                                              return '${brand.toUpperCase()} $name';
                                            }(_model.productDataType!.brand,
                                                _model.productDataType!.name),
                                            '...',
                                            50),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .onSurfaceText,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.ios_share_sharp,
                                    color: FlutterFlowTheme.of(context).button3,
                                    size: 27.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          content: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, -1.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 19.0, 0.0, 20.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                child: Image.network(
                                                  _model.productDataType!
                                                      .previewPicture,
                                                  width: double.infinity,
                                                  height: 300.0,
                                                  fit: BoxFit.contain,
                                                  alignment:
                                                      const Alignment(0.0, -1.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          if ((_model.productDataType
                                                      ?.newType ==
                                                  'Да') ||
                                              (_model.productDataType
                                                      ?.specCategory ==
                                                  'Новинки'))
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.9, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 150.0, 0.0, 0.0),
                                                child: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: const BoxDecoration(
                                                    color: Color(0xFF72D1D2),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'NEW',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          if ((functions
                                                      .stringtoInt(_model
                                                          .productDiscount!)
                                                      .toString() !=
                                                  '0') &&
                                              (_model.productDiscount != null &&
                                                  _model.productDiscount !=
                                                      '') &&
                                              !functions.isNull(
                                                  _model.productDiscount))
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.9, -2.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 100.0, 0.0, 0.0),
                                                child: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .warning,
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      (String var1) {
                                                        return '$var1%';
                                                      }(_model
                                                          .productDiscount!),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                -1.0, -1.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 10.0, 5.0, 0.0),
                                              child: Text(
                                                (String brand, String name) {
                                                  return '${brand.toUpperCase()} $name';
                                                }(
                                                    _model
                                                        .productDataType!.brand,
                                                    _model
                                                        .productDataType!.name),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .onSurfaceText,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  if ((_model.offersCount! > 0) &&
                                      ((_model.productDiscount != null &&
                                              _model.productDiscount != '') &&
                                          (functions.stringtoInt(
                                                  _model.productDiscount!) >
                                              0)))
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            15.0, 10.0, 15.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              _model.productSpecPrice != null &&
                                                      _model.productSpecPrice !=
                                                          ''
                                                  ? ((String var1) {
                                                      return '$var1 ₽';
                                                    }(_model.productSpecPrice!))
                                                  : '0',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .displaySmallFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .yellowTriggers,
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmallFamily),
                                                      ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Text(
                                                      'цена без скидки',
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 11.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Text(
                                                      _model.productRprice !=
                                                                  null &&
                                                              _model.productRprice !=
                                                                  ''
                                                          ? ((String var1) {
                                                              return '$var1 ₽';
                                                            }(_model
                                                              .productRprice!))
                                                          : '0',
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                decoration:
                                                                    TextDecoration
                                                                        .lineThrough,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
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
                                  if ((_model.offersCount! > 0) &&
                                      ((_model.productDiscount == null ||
                                              _model.productDiscount == '') ||
                                          (functions
                                                  .stringtoInt(
                                                      _model.productDiscount!)
                                                  .toString() ==
                                              '0')) &&
                                      (FFAppState().cardid != ''))
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            15.0, 10.0, 15.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              _model.productUserPrice != null &&
                                                      _model.productUserPrice !=
                                                          ''
                                                  ? ((String var1) {
                                                      return '$var1 ₽';
                                                    }(_model.productUserPrice!))
                                                  : '0',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .displaySmallFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmallFamily),
                                                      ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Text(
                                                      'цена без скидки',
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 11.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Text(
                                                      _model.productRprice !=
                                                                  null &&
                                                              _model.productRprice !=
                                                                  ''
                                                          ? ((String var1) {
                                                              return '$var1 ₽';
                                                            }(_model
                                                              .productRprice!))
                                                          : '0',
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                decoration:
                                                                    TextDecoration
                                                                        .lineThrough,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
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
                                  if ((_model.offersCount! > 0) &&
                                      ((_model.productDiscount == null ||
                                              _model.productDiscount == '') ||
                                          (functions.stringtoInt(
                                                  _model.productDiscount!) ==
                                              0)) &&
                                      (FFAppState().cardid == ''))
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            15.0, 10.0, 15.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              _model.productRprice != null &&
                                                      _model.productRprice != ''
                                                  ? ((String var1) {
                                                      return '$var1 ₽';
                                                    }(_model.productRprice!))
                                                  : '0',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .displaySmallFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmallFamily),
                                                      ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Text(
                                                      'цена со скидкой',
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 11.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Text(
                                                      _model.productIprice !=
                                                                  null &&
                                                              _model.productIprice !=
                                                                  ''
                                                          ? ((String var1) {
                                                              return '$var1 ₽';
                                                            }(_model
                                                              .productIprice!))
                                                          : '0',
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
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
                                  if ((_model.offersCount! > 0) &&
                                      (_model.productDataType?.offers.first
                                                  .colorName !=
                                              null &&
                                          _model.productDataType?.offers.first
                                                  .colorName !=
                                              ''))
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            15.0, 20.0, 15.0, 20.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                width: double.infinity,
                                                height: valueOrDefault<double>(
                                                  () {
                                                    if (_model.offersCount! >
                                                        16) {
                                                      return 160.0;
                                                    } else if (_model
                                                            .offersCount! >
                                                        8) {
                                                      return 130.0;
                                                    } else {
                                                      return 100.0;
                                                    }
                                                  }(),
                                                  100.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: wrapWithModel(
                                                  model: _model
                                                      .priceOnProductPageCompColorModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child:
                                                      PriceOnProductPageCompColorWidget(
                                                    productId:
                                                        widget.productId!,
                                                    offers: _model
                                                        .productDataType
                                                        ?.offers,
                                                    onChangeVolume: (avail,
                                                        rPrice,
                                                        iPrice,
                                                        colorName,
                                                        xmlId,
                                                        cutvolume,
                                                        color,
                                                        disc,
                                                        userPrice,
                                                        soecPrice) async {
                                                      setState(() {
                                                        _model.productAvailable =
                                                            avail;
                                                        _model.productRprice =
                                                            rPrice;
                                                        _model.productIprice =
                                                            iPrice;
                                                        _model.productVariant =
                                                            colorName;
                                                        _model.xmlVariant =
                                                            xmlId;
                                                        _model.productVariantCut =
                                                            cutvolume;
                                                        _model.productColor =
                                                            color;
                                                        _model.productDiscount =
                                                            disc;
                                                        _model.productUserPrice =
                                                            userPrice;
                                                        _model.productSpecPrice =
                                                            soecPrice;
                                                      });
                                                    },
                                                    firstState: (avail,
                                                        disc,
                                                        specPrice,
                                                        userPrice) async {
                                                      setState(() {
                                                        _model.productAvailable =
                                                            avail;
                                                        _model.productDiscount =
                                                            disc;
                                                        _model.productSpecPrice =
                                                            specPrice;
                                                      });
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  if ((_model.offersCount! > 0) &&
                                      (_model.productDataType?.offers.first
                                                  .colorName ==
                                              null ||
                                          _model.productDataType?.offers.first
                                                  .colorName ==
                                              ''))
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            15.0, 20.0, 15.0, 20.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: wrapWithModel(
                                                  model: _model
                                                      .priceOnProductPageCompModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child:
                                                      PriceOnProductPageCompWidget(
                                                    productId:
                                                        widget.productId!,
                                                    offers: _model
                                                        .productDataType
                                                        ?.offers,
                                                    onChangeVolume: (avail,
                                                        rPrice,
                                                        iPrice,
                                                        volume,
                                                        xmlId,
                                                        cutvolume,
                                                        disc,
                                                        userPrice,
                                                        specPrice) async {
                                                      setState(() {
                                                        _model.productVariant =
                                                            volume;
                                                        _model.productRprice =
                                                            rPrice;
                                                        _model.productIprice =
                                                            iPrice;
                                                        _model.productAvailable =
                                                            avail;
                                                        _model.xmlVariant =
                                                            xmlId;
                                                        _model.productVariantCut =
                                                            cutvolume;
                                                        _model.productDiscount =
                                                            disc;
                                                        _model.productUserPrice =
                                                            userPrice;
                                                        _model.productSpecPrice =
                                                            specPrice;
                                                      });
                                                    },
                                                    firstState: (avail,
                                                        disc,
                                                        userPrice,
                                                        specPrice) async {
                                                      setState(() {
                                                        _model.productAvailable =
                                                            avail;
                                                        _model.productDiscount =
                                                            disc;
                                                        _model.productSpecPrice =
                                                            specPrice;
                                                      });
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  if ((_model.productDataType?.hasVariants !=
                                          true) &&
                                      ((_model.productDiscount != null &&
                                              _model.productDiscount != '') &&
                                          (functions.stringtoInt(
                                                  _model.productDiscount!) >
                                              0)))
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            15.0, 0.0, 15.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              _model.productSpecPrice != null &&
                                                      _model.productSpecPrice !=
                                                          ''
                                                  ? ((String var1) {
                                                      return '$var1 ₽';
                                                    }(_model.productSpecPrice!))
                                                  : '0',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .displaySmallFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .yellowTriggers,
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmallFamily),
                                                      ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Text(
                                                      'цена  без скидки',
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 11.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Text(
                                                      (_model.productRprice !=
                                                                      null &&
                                                                  _model.productRprice !=
                                                                      '') &&
                                                              (_model.productDataType!
                                                                      .rPriceMain >
                                                                  0)
                                                          ? ((String var1) {
                                                              return '$var1 ₽';
                                                            }(_model
                                                              .productDataType!
                                                              .rPriceMain
                                                              .toString()))
                                                          : '0',
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                decoration:
                                                                    TextDecoration
                                                                        .lineThrough,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
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
                                  if ((_model.productDataType?.hasVariants !=
                                          true) &&
                                      ((_model.productDiscount == null ||
                                              _model.productDiscount == '') ||
                                          (functions.stringtoInt(
                                                  _model.productDiscount!) ==
                                              0)) &&
                                      (FFAppState().cardid != ''))
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            15.0, 0.0, 15.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              _model.productUserPrice != null &&
                                                      _model.productUserPrice !=
                                                          ''
                                                  ? ((String var1) {
                                                      return '$var1 ₽';
                                                    }(_model.productUserPrice!))
                                                  : '0',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .displaySmallFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmallFamily),
                                                      ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Text(
                                                      'цена  без скидки',
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 11.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Text(
                                                      (_model.productDataType
                                                                      ?.rPriceMain !=
                                                                  null) &&
                                                              (_model.productDataType!
                                                                      .rPriceMain >
                                                                  0)
                                                          ? ((String var1) {
                                                              return '$var1 ₽';
                                                            }(_model
                                                              .productDataType!
                                                              .rPriceMain
                                                              .toString()))
                                                          : '0',
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                decoration:
                                                                    TextDecoration
                                                                        .lineThrough,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
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
                                  if ((_model.productDataType?.hasVariants !=
                                          true) &&
                                      ((_model.productDiscount == null ||
                                              _model.productDiscount == '') ||
                                          (functions.stringtoInt(
                                                  _model.productDiscount!) ==
                                              0)) &&
                                      (FFAppState().cardid == ''))
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            15.0, 0.0, 15.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              _model.productDataType
                                                          ?.rPriceMain !=
                                                      null
                                                  ? ((String var1) {
                                                      return '$var1 ₽';
                                                    }(_model.productDataType!
                                                      .rPriceMain
                                                      .toString()))
                                                  : '0',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .displaySmallFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmallFamily),
                                                      ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Text(
                                                      'цена со скидкой',
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 11.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Text(
                                                      _model.productDataType
                                                                  ?.iPriceMain !=
                                                              null
                                                          ? ((String var1) {
                                                              return '$var1 ₽';
                                                            }(_model
                                                              .productDataType!
                                                              .iPriceMain
                                                              .toString()))
                                                          : '0',
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
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
                                  Divider(
                                    thickness: 1.0,
                                    indent: 20.0,
                                    endIndent: 20.0,
                                    color: FlutterFlowTheme.of(context)
                                        .thirdTextColor,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        15.0, 20.0, 15.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        color: Colors.white,
                                        child: ExpandableNotifier(
                                          controller: _model
                                              .expandableExpandableController1,
                                          child: ExpandablePanel(
                                            header: Text(
                                              'ОПИСАНИЕ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .displaySmallFamily,
                                                        color: Colors.black,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmallFamily),
                                                      ),
                                            ),
                                            collapsed: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 0.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Text(
                                                '',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmallFamily,
                                                          color: Colors.black,
                                                          fontSize: 12.0,
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
                                            expanded: SingleChildScrollView(
                                              primary: false,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 8.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        _model.productDataType
                                                            ?.description,
                                                        '-',
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: const Color(
                                                                    0x8A000000),
                                                                fontSize: 13.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            theme: const ExpandableThemeData(
                                              tapHeaderToExpand: true,
                                              tapBodyToExpand: false,
                                              tapBodyToCollapse: false,
                                              headerAlignment:
                                                  ExpandablePanelHeaderAlignment
                                                      .center,
                                              hasIcon: true,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    indent: 20.0,
                                    endIndent: 20.0,
                                    color: FlutterFlowTheme.of(context)
                                        .thirdTextColor,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 20.0, 20.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        color: Colors.white,
                                        child: ExpandableNotifier(
                                          controller: _model
                                              .expandableExpandableController2,
                                          child: ExpandablePanel(
                                            header: Text(
                                              'ХАРАКТЕРИСТИКИ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .displaySmallFamily,
                                                        color: Colors.black,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmallFamily),
                                                      ),
                                            ),
                                            collapsed: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 0.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Text(
                                                '',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmallFamily,
                                                          color: Colors.black,
                                                          fontSize: 12.0,
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
                                            expanded: SingleChildScrollView(
                                              primary: false,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if (!functions.isNull(
                                                      _model.productBrand))
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  7.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Бренд:',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      13.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                _model
                                                                    .productDataType
                                                                    ?.brand,
                                                                '-',
                                                              ),
                                                              textAlign:
                                                                  TextAlign.end,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    fontSize:
                                                                        13.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 40.0)),
                                                      ),
                                                    ),
                                                  if (!functions.isNull(
                                                      _model.productFamily))
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  7.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Семейство ароматов:',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      13.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                _model
                                                                    .productDataType
                                                                    ?.family,
                                                                '-',
                                                              ),
                                                              textAlign:
                                                                  TextAlign.end,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    fontSize:
                                                                        13.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 40.0)),
                                                      ),
                                                    ),
                                                  if (!functions
                                                      .isNull(getJsonField(
                                                    widget.product,
                                                    r'''$.country''',
                                                  ).toString()))
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  7.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Страна:',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      13.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              _model
                                                                  .productDataType
                                                                  ?.country,
                                                              '-',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      13.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 40.0)),
                                                      ),
                                                    ),
                                                  if (!functions.isNull(
                                                      _model.productSex))
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  7.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Для кого:',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      13.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              _model
                                                                  .productDataType
                                                                  ?.gender,
                                                              '-',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      13.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 40.0)),
                                                      ),
                                                    ),
                                                  if (!functions.isNull(
                                                      _model.productTopNotes))
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  7.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Верхние ноты:',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      13.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                _model
                                                                    .productDataType
                                                                    ?.topNotes,
                                                                '-',
                                                              ),
                                                              textAlign:
                                                                  TextAlign.end,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    fontSize:
                                                                        13.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 40.0)),
                                                      ),
                                                    ),
                                                  if (!functions.isNull(
                                                      _model.productHeartNotes))
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  7.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Ноты сердца:',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      13.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                _model
                                                                    .productDataType
                                                                    ?.heartNotes,
                                                                '-',
                                                              ),
                                                              textAlign:
                                                                  TextAlign.end,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    fontSize:
                                                                        13.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 40.0)),
                                                      ),
                                                    ),
                                                  if (!functions.isNull(
                                                      _model.productBaseNotes))
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  7.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Базовые ноты:',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      13.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                _model
                                                                    .productDataType
                                                                    ?.baseNotes,
                                                                '-',
                                                              ),
                                                              textAlign:
                                                                  TextAlign.end,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    fontSize:
                                                                        13.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 40.0)),
                                                      ),
                                                    ),
                                                  if (!functions.isNull(
                                                      _model.productParfumeur))
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  7.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Парфюмер:',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      13.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                _model
                                                                    .productDataType
                                                                    ?.parfumer,
                                                                '-',
                                                              ),
                                                              textAlign:
                                                                  TextAlign.end,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    fontSize:
                                                                        13.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 40.0)),
                                                      ),
                                                    ),
                                                  if (!functions.isNull(
                                                          _model.productYear) &&
                                                      (_model.productYear !=
                                                          '0'))
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  7.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Год выпуска:',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      13.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              _model
                                                                  .productDataType
                                                                  ?.year,
                                                              '0',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      13.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 40.0)),
                                                      ),
                                                    ),
                                                  if (!functions.isNull(
                                                      _model.productCollection))
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  7.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Коллекция:',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      13.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                _model
                                                                    .productDataType
                                                                    ?.collectionName,
                                                                '-',
                                                              ),
                                                              textAlign:
                                                                  TextAlign.end,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    fontSize:
                                                                        13.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 40.0)),
                                                      ),
                                                    ),
                                                  if (!functions.isNull(
                                                      _model.productNotes))
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  7.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Ноты:',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      13.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                _model
                                                                    .productNotes,
                                                                '-',
                                                              ),
                                                              textAlign:
                                                                  TextAlign.end,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    fontSize:
                                                                        13.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 40.0)),
                                                      ),
                                                    ),
                                                  if (!functions.isNull(
                                                      _model.productType))
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  7.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Тип продукта:',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      13.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                _model
                                                                    .productDataType
                                                                    ?.typeProduct,
                                                                '-',
                                                              ),
                                                              textAlign:
                                                                  TextAlign.end,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    fontSize:
                                                                        13.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 40.0)),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ),
                                            theme: const ExpandableThemeData(
                                              tapHeaderToExpand: true,
                                              tapBodyToExpand: false,
                                              tapBodyToCollapse: false,
                                              headerAlignment:
                                                  ExpandablePanelHeaderAlignment
                                                      .center,
                                              hasIcon: true,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    indent: 20.0,
                                    endIndent: 20.0,
                                    color: FlutterFlowTheme.of(context)
                                        .thirdTextColor,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 20.0, 20.0, 100.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        color: Colors.white,
                                        child: ExpandableNotifier(
                                          controller: _model
                                              .expandableExpandableController3,
                                          child: ExpandablePanel(
                                            header: Text(
                                              'О БРЕНДЕ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .displaySmallFamily,
                                                        color: Colors.black,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmallFamily),
                                                      ),
                                            ),
                                            collapsed: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 0.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Text(
                                                '',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmallFamily,
                                                          color: Colors.black,
                                                          fontSize: 12.0,
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
                                            expanded: SingleChildScrollView(
                                              primary: false,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if (!functions.isNull(
                                                      _model.productBrand))
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  7.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Бренд:',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      13.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                _model
                                                                    .productDataType
                                                                    ?.brand,
                                                                '-',
                                                              ),
                                                              textAlign:
                                                                  TextAlign.end,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    fontSize:
                                                                        13.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 40.0)),
                                                      ),
                                                    ),
                                                  if (!functions.isNull(
                                                      _model.productCountry))
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  7.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Страна:',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      13.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              _model
                                                                  .productDataType
                                                                  ?.country,
                                                              '-',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      13.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 40.0)),
                                                      ),
                                                    ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 7.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
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
                                                            context.goNamed(
                                                              'brandsGoodsPage',
                                                              queryParameters: {
                                                                'parId':
                                                                    serializeParam(
                                                                  getJsonField(
                                                                    widget
                                                                        .product,
                                                                    r'''$.brand_id''',
                                                                  ),
                                                                  ParamType.int,
                                                                ),
                                                                'parName':
                                                                    serializeParam(
                                                                  getJsonField(
                                                                    widget
                                                                        .product,
                                                                    r'''$.brand''',
                                                                  ).toString(),
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'from':
                                                                    serializeParam(
                                                                  '',
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
                                                          child: Text(
                                                            (String var1) {
                                                              return 'Все товары бренда $var1 ⟶';
                                                            }(getJsonField(
                                                              widget.product,
                                                              r'''$.brand''',
                                                            ).toString()),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          width: 40.0)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            theme: const ExpandableThemeData(
                                              tapHeaderToExpand: true,
                                              tapBodyToExpand: false,
                                              tapBodyToCollapse: true,
                                              headerAlignment:
                                                  ExpandablePanelHeaderAlignment
                                                      .center,
                                              hasIcon: true,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: Stack(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 80.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 1.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if (_model.productAvailable == 'Y') {
                                        _model.isAddedReference =
                                            await actions.findItemInBasket(
                                          _model.xmlVariant,
                                          FFAppState().basketstr!,
                                        );
                                        if (_model.isAddedReference != null) {
                                          _model.basketitem = await BasketRecord
                                              .getDocumentOnce(
                                                  _model.isAddedReference!);

                                          await _model.isAddedReference!
                                              .update({
                                            ...createBasketRecordData(
                                              xmlIdVariant: _model.xmlVariant,
                                              xmlIdProduct:
                                                  _model.productDataType?.xmlId,
                                            ),
                                            ...mapToFirestore(
                                              {
                                                'kolvo':
                                                    FieldValue.increment(1),
                                                'discount_sum': FieldValue.increment((int
                                                            .parse((_model
                                                                .productRprice!)) *
                                                        (int.parse((_model
                                                                        .productDiscount!)
                                                                    .toString()) /
                                                                100)
                                                            .round()) *
                                                    (_model.basketitem!.kolvo +
                                                        1)),
                                              },
                                            ),
                                          });
                                        } else {
                                          if (_model
                                              .productDataType!.hasVariants) {
                                            // addItemtoBasketVariable
                                            _model.addBasket =
                                                await actions.addItemtoBasket(
                                              _model.productDataType?.xmlId,
                                              _model.xmlVariant,
                                              widget.productId,
                                              0,
                                              _model.productName,
                                              _model.productVariant,
                                              _model.productVariant,
                                              _model.offersCount! > 0
                                                  ? functions.replaceStr(
                                                      _model.productVariant!)
                                                  : '-',
                                              _model.productDataType?.offers
                                                              .first.color !=
                                                          null &&
                                                      _model
                                                              .productDataType
                                                              ?.offers
                                                              .first
                                                              .color !=
                                                          ''
                                                  ? _model.productVariant
                                                  : '-',
                                              1,
                                              int.parse(
                                                  (_model.productRprice!)),
                                              functions.stringtoInt(
                                                  _model.productUserPrice!),
                                              functions.stringtoInt(
                                                  _model.productDiscount!),
                                              int.parse(
                                                      (_model.productRprice!)) -
                                                  (int.parse((_model
                                                          .productRprice!)) *
                                                      (int.parse((_model
                                                                      .productDiscount!)
                                                                  .toString()) /
                                                              100)
                                                          .round()),
                                              _model.productDataType
                                                  ?.previewPicture,
                                              _model.productColor,
                                            );
                                            FFAppState().update(() {
                                              FFAppState().addToBasket(
                                                  _model.addBasket!);
                                            });
                                            if (_model.productOffers.first
                                                        .colorName !=
                                                    '') {
                                              // Add record to basket collection FB

                                              var basketRecordReference2 =
                                                  BasketRecord.createDoc(
                                                      FFAppState().basketstr!);
                                              await basketRecordReference2
                                                  .set(createBasketRecordData(
                                                xmlIdProduct: _model
                                                    .addBasket?.xmlIdProduct,
                                                xmlIdVariant: _model
                                                    .addBasket?.xmlIdVariant,
                                                idProduct:
                                                    _model.addBasket?.idProduct,
                                                idVariant:
                                                    _model.addBasket?.idVariant,
                                                productName: _model
                                                    .addBasket?.productName,
                                                variantName: _model
                                                    .addBasket?.variantName,
                                                volumeFull: _model
                                                    .addBasket?.volumeFull,
                                                volumeCut:
                                                    _model.addBasket?.volumeCut,
                                                colorName:
                                                    _model.addBasket?.colorName,
                                                kolvo: _model.addBasket?.kolvo,
                                                rPrice:
                                                    _model.addBasket?.rPrice,
                                                userPrice:
                                                    _model.addBasket?.userPrice,
                                                discount:
                                                    _model.addBasket?.discount,
                                                discountSum: _model
                                                    .addBasket?.discountSum,
                                                image: _model.addBasket?.image,
                                                basketMainReference:
                                                    FFAppState().basketstr,
                                                color: _model.addBasket?.color ?? const Color(0x00000000),
                                              ));
                                              _model.newBasketItemFB2 =
                                                  BasketRecord.getDocumentFromData(
                                                      createBasketRecordData(
                                                        xmlIdProduct: _model
                                                            .addBasket
                                                            ?.xmlIdProduct,
                                                        xmlIdVariant: _model
                                                            .addBasket
                                                            ?.xmlIdVariant,
                                                        idProduct: _model
                                                            .addBasket
                                                            ?.idProduct,
                                                        idVariant: _model
                                                            .addBasket
                                                            ?.idVariant,
                                                        productName: _model
                                                            .addBasket
                                                            ?.productName,
                                                        variantName: _model
                                                            .addBasket
                                                            ?.variantName,
                                                        volumeFull: _model
                                                            .addBasket
                                                            ?.volumeFull,
                                                        volumeCut: _model
                                                            .addBasket
                                                            ?.volumeCut,
                                                        colorName: _model
                                                            .addBasket
                                                            ?.colorName,
                                                        kolvo: _model
                                                            .addBasket?.kolvo,
                                                        rPrice: _model
                                                            .addBasket?.rPrice,
                                                        userPrice: _model
                                                            .addBasket
                                                            ?.userPrice,
                                                        discount: _model
                                                            .addBasket
                                                            ?.discount,
                                                        discountSum: _model
                                                            .addBasket
                                                            ?.discountSum,
                                                        image: _model
                                                            .addBasket?.image,
                                                        basketMainReference:
                                                            FFAppState()
                                                                .basketstr,
                                                        color: _model.addBasket
                                                                ?.color ?? const Color(0x00000000),
                                                      ),
                                                      basketRecordReference2);
                                              _model.baskMain4upd =
                                                  await actions
                                                      .countBasketVarsCopy(
                                                FFAppState().basketstr!,
                                              );

                                              await FFAppState()
                                                  .basketstr!
                                                  .update(
                                                      createBasketMainRecordData(
                                                    kolProducts: _model
                                                        .baskMain4upd
                                                        ?.kolProducts,
                                                    total: _model
                                                        .baskMain4upd?.total,
                                                    totalDiscount: _model
                                                        .baskMain4upd
                                                        ?.totalDiscount,
                                                    totalR: _model
                                                        .baskMain4upd?.totalR,
                                                  ));
                                              FFAppState().update(() {
                                                FFAppState()
                                                    .updateBasketMainStruct(
                                                  (e) => e
                                                    ..kolProducts = _model
                                                        .baskMain4upd
                                                        ?.kolProducts
                                                    ..total = _model
                                                        .baskMain4upd?.total
                                                    ..totalDiscount = _model
                                                        .baskMain4upd
                                                        ?.totalDiscount
                                                    ..totalR = _model
                                                        .baskMain4upd?.totalR,
                                                );
                                              });
                                              FFAppState().update(() {
                                                FFAppState().basketItemsCount =
                                                    _model.baskMain4upd!
                                                        .kolProducts;
                                                FFAppState().basketTotal =
                                                    _model.baskMain4upd!.totalR;
                                                FFAppState().basketDiscountSum =
                                                    _model.baskMain4upd!
                                                        .totalDiscount;
                                              });
                                            } else {
                                              // Add record to basket collection FB

                                              var basketRecordReference3 =
                                                  BasketRecord.createDoc(
                                                      FFAppState().basketstr!);
                                              await basketRecordReference3
                                                  .set(createBasketRecordData(
                                                xmlIdProduct: _model
                                                    .addBasket?.xmlIdProduct,
                                                xmlIdVariant: _model
                                                    .addBasket?.xmlIdVariant,
                                                idProduct:
                                                    _model.addBasket?.idProduct,
                                                idVariant:
                                                    _model.addBasket?.idVariant,
                                                productName: _model
                                                    .addBasket?.productName,
                                                variantName: _model
                                                    .addBasket?.variantName,
                                                volumeFull: _model
                                                    .addBasket?.volumeFull,
                                                volumeCut:
                                                    _model.addBasket?.volumeCut,
                                                kolvo: _model.addBasket?.kolvo,
                                                rPrice:
                                                    _model.addBasket?.rPrice,
                                                userPrice:
                                                    _model.addBasket?.userPrice,
                                                discount:
                                                    _model.addBasket?.discount,
                                                discountSum: _model
                                                    .addBasket?.discountSum,
                                                image: _model.addBasket?.image,
                                                basketMainReference:
                                                    FFAppState().basketstr,
                                              ));
                                              _model.newBasketItemFB =
                                                  BasketRecord.getDocumentFromData(
                                                      createBasketRecordData(
                                                        xmlIdProduct: _model
                                                            .addBasket
                                                            ?.xmlIdProduct,
                                                        xmlIdVariant: _model
                                                            .addBasket
                                                            ?.xmlIdVariant,
                                                        idProduct: _model
                                                            .addBasket
                                                            ?.idProduct,
                                                        idVariant: _model
                                                            .addBasket
                                                            ?.idVariant,
                                                        productName: _model
                                                            .addBasket
                                                            ?.productName,
                                                        variantName: _model
                                                            .addBasket
                                                            ?.variantName,
                                                        volumeFull: _model
                                                            .addBasket
                                                            ?.volumeFull,
                                                        volumeCut: _model
                                                            .addBasket
                                                            ?.volumeCut,
                                                        kolvo: _model
                                                            .addBasket?.kolvo,
                                                        rPrice: _model
                                                            .addBasket?.rPrice,
                                                        userPrice: _model
                                                            .addBasket
                                                            ?.userPrice,
                                                        discount: _model
                                                            .addBasket
                                                            ?.discount,
                                                        discountSum: _model
                                                            .addBasket
                                                            ?.discountSum,
                                                        image: _model
                                                            .addBasket?.image,
                                                        basketMainReference:
                                                            FFAppState()
                                                                .basketstr,
                                                      ),
                                                      basketRecordReference3);
                                              _model.baskMain4upd11 =
                                                  await actions
                                                      .countBasketVarsCopy(
                                                FFAppState().basketstr!,
                                              );

                                              await FFAppState()
                                                  .basketstr!
                                                  .update(
                                                      createBasketMainRecordData(
                                                    kolProducts: _model
                                                        .baskMain4upd11
                                                        ?.kolProducts,
                                                    total: _model
                                                        .baskMain4upd11?.total,
                                                    totalDiscount: _model
                                                        .baskMain4upd11
                                                        ?.totalDiscount,
                                                    totalR: _model
                                                        .baskMain4upd11?.totalR,
                                                  ));
                                              FFAppState().update(() {
                                                FFAppState()
                                                    .updateBasketMainStruct(
                                                  (e) => e
                                                    ..kolProducts = _model
                                                        .baskMain4upd11
                                                        ?.kolProducts
                                                    ..total = _model
                                                        .baskMain4upd11?.total
                                                    ..totalDiscount = _model
                                                        .baskMain4upd11
                                                        ?.totalDiscount
                                                    ..totalR = _model
                                                        .baskMain4upd11?.totalR,
                                                );
                                              });
                                              FFAppState().update(() {
                                                FFAppState().basketItemsCount =
                                                    _model.baskMain4upd11!
                                                        .kolProducts;
                                                FFAppState().basketTotal =
                                                    _model
                                                        .baskMain4upd11!.totalR;
                                                FFAppState().basketDiscountSum =
                                                    _model.baskMain4upd11!
                                                        .totalDiscount;
                                              });
                                            }

                                            ScaffoldMessenger.of(context)
                                                .clearSnackBars();
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  (String var1, String var2,
                                                          String var3) {
                                                    return '${var2.toUpperCase()} $var1 $var3 добавлен в корзину';
                                                  }(
                                                      _model.productName!,
                                                      _model.productBrand!,
                                                      _model.productVariant!),
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                                duration: const Duration(
                                                    milliseconds: 2350),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                action: SnackBarAction(
                                                  label: 'Перейти в корзину?',
                                                  textColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  onPressed: () async {
                                                    context.pushNamed(
                                                      'basketPage',
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
                                                ),
                                              ),
                                            );
                                          } else {
                                            // addItemtoBasketVariable
                                            _model.addBasket3 =
                                                await actions.addItemtoBasket(
                                              _model.productDataType?.xmlId,
                                              _model.xmlVariant,
                                              _model.productDataType?.productID,
                                              0,
                                              _model.productDataType?.name,
                                              'шт',
                                              'шт',
                                              '-',
                                              '-',
                                              1,
                                              int.parse(_model
                                                  .productDataType!.rPriceMain
                                                  .toString()),
                                              functions.stringtoInt(
                                                  _model.productUserPrice!),
                                              functions.stringtoInt(
                                                  _model.productDiscount!),
                                              int.parse(
                                                      (_model.productRprice!)) -
                                                  (int.parse((_model
                                                          .productRprice!)) *
                                                      (int.parse((_model
                                                                      .productDiscount!)
                                                                  .toString()) /
                                                              100)
                                                          .round()),
                                              _model.productDataType
                                                  ?.previewPicture,
                                              const Color(0x00000000),
                                            );
                                            FFAppState().update(() {
                                              FFAppState().addToBasket(
                                                  _model.addBasket3!);
                                            });
                                            // Add record to basket collection FB

                                            var basketRecordReference4 =
                                                BasketRecord.createDoc(
                                                    FFAppState().basketstr!);
                                            await basketRecordReference4
                                                .set(createBasketRecordData(
                                              xmlIdProduct: _model
                                                  .addBasket3?.xmlIdProduct,
                                              xmlIdVariant: _model
                                                  .addBasket3?.xmlIdVariant,
                                              idProduct:
                                                  _model.addBasket3?.idProduct,
                                              idVariant: valueOrDefault<int>(
                                                _model.addBasket3?.idVariant,
                                                0,
                                              ),
                                              productName: _model
                                                  .addBasket3?.productName,
                                              variantName: _model
                                                  .addBasket3?.variantName,
                                              volumeFull:
                                                  _model.addBasket3?.volumeFull,
                                              volumeCut:
                                                  _model.addBasket3?.volumeCut,
                                              kolvo: _model.addBasket3?.kolvo,
                                              rPrice: _model.addBasket3?.rPrice,
                                              userPrice:
                                                  _model.addBasket3?.userPrice,
                                              discount:
                                                  _model.addBasket3?.discount,
                                              discountSum: _model
                                                  .addBasket3?.discountSum,
                                              image: _model.addBasket3?.image,
                                              basketMainReference:
                                                  FFAppState().basketstr,
                                            ));
                                            _model.newBasketItemFB3 =
                                                BasketRecord
                                                    .getDocumentFromData(
                                                        createBasketRecordData(
                                                          xmlIdProduct: _model
                                                              .addBasket3
                                                              ?.xmlIdProduct,
                                                          xmlIdVariant: _model
                                                              .addBasket3
                                                              ?.xmlIdVariant,
                                                          idProduct: _model
                                                              .addBasket3
                                                              ?.idProduct,
                                                          idVariant:
                                                              valueOrDefault<
                                                                  int>(
                                                            _model.addBasket3
                                                                ?.idVariant,
                                                            0,
                                                          ),
                                                          productName: _model
                                                              .addBasket3
                                                              ?.productName,
                                                          variantName: _model
                                                              .addBasket3
                                                              ?.variantName,
                                                          volumeFull: _model
                                                              .addBasket3
                                                              ?.volumeFull,
                                                          volumeCut: _model
                                                              .addBasket3
                                                              ?.volumeCut,
                                                          kolvo: _model
                                                              .addBasket3
                                                              ?.kolvo,
                                                          rPrice: _model
                                                              .addBasket3
                                                              ?.rPrice,
                                                          userPrice: _model
                                                              .addBasket3
                                                              ?.userPrice,
                                                          discount: _model
                                                              .addBasket3
                                                              ?.discount,
                                                          discountSum: _model
                                                              .addBasket3
                                                              ?.discountSum,
                                                          image: _model
                                                              .addBasket3
                                                              ?.image,
                                                          basketMainReference:
                                                              FFAppState()
                                                                  .basketstr,
                                                        ),
                                                        basketRecordReference4);
                                            _model.baskMain4upd12 =
                                                await actions
                                                    .countBasketVarsCopy(
                                              FFAppState().basketstr!,
                                            );

                                            await FFAppState()
                                                .basketstr!
                                                .update(
                                                    createBasketMainRecordData(
                                                  kolProducts: _model
                                                      .baskMain4upd12
                                                      ?.kolProducts,
                                                  total: _model
                                                      .baskMain4upd12?.total,
                                                  totalDiscount: _model
                                                      .baskMain4upd12
                                                      ?.totalDiscount,
                                                  totalR: _model
                                                      .baskMain4upd12?.totalR,
                                                ));
                                            FFAppState().update(() {
                                              FFAppState()
                                                  .updateBasketMainStruct(
                                                (e) => e
                                                  ..kolProducts = _model
                                                      .baskMain4upd12
                                                      ?.kolProducts
                                                  ..total = _model
                                                      .baskMain4upd12?.total
                                                  ..totalDiscount = _model
                                                      .baskMain4upd12
                                                      ?.totalDiscount
                                                  ..totalR = _model
                                                      .baskMain4upd12?.totalR,
                                              );
                                            });
                                            FFAppState().update(() {
                                              FFAppState().basketItemsCount =
                                                  _model.baskMain4upd12!
                                                      .kolProducts;
                                              FFAppState().basketTotal =
                                                  _model.baskMain4upd12!.totalR;
                                              FFAppState().basketDiscountSum =
                                                  _model.baskMain4upd12!
                                                      .totalDiscount;
                                            });
                                            ScaffoldMessenger.of(context)
                                                .clearSnackBars();
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  (String var1, String var2,
                                                          String var3) {
                                                    return '${var2.toUpperCase()} $var1 $var3 добавлен в корзину';
                                                  }(
                                                      _model.productName!,
                                                      _model.productBrand!,
                                                      _model.productVariant!),
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                                duration: const Duration(
                                                    milliseconds: 2350),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                action: SnackBarAction(
                                                  label: 'Перейти в корзину?',
                                                  textColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  onPressed: () async {
                                                    context.pushNamed(
                                                      'basketPage',
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
                                                ),
                                              ),
                                            );
                                          }
                                        }
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              content: const Text('нет в наличии'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: const Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      }

                                      setState(() {});
                                    },
                                    text: _model.productAvailable == 'Y'
                                        ? 'ДОБАВИТЬ В КОРЗИНУ'
                                        : 'ПОДПИСАТЬСЯ',
                                    options: FFButtonOptions(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.75,
                                      height: 40.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: _model.productAvailable == 'Y'
                                          ? FlutterFlowTheme.of(context)
                                              .tertiary
                                          : FlutterFlowTheme.of(context)
                                              .button3,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            fontSize: 13.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w300,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      elevation: 4.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 1.0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: '',
                                    icon: Icon(
                                      Icons.favorite,
                                      color: FlutterFlowTheme.of(context)
                                          .yellowTriggers,
                                      size: 24.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.14,
                                      height: 40.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          7.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w300,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      elevation: 4.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
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
                ],
              ),
            ),
          ),
        ));
  }
}
