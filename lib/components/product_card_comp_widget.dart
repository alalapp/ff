import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/add_basket_bottom_sheet_comp_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_card_comp_model.dart';
export 'product_card_comp_model.dart';

class ProductCardCompWidget extends StatefulWidget {
  const ProductCardCompWidget({
    super.key,
    required this.productId,
    required this.productArray,
    this.parId,
    this.parName,
    this.parType,
    this.prLike,
    this.prBasket,
    required this.productInfo,
  });

  final int? productId;
  final dynamic productArray;
  final int? parId;
  final String? parName;
  final String? parType;
  final bool? prLike;
  final bool? prBasket;
  final ProductInfoStruct? productInfo;

  @override
  State<ProductCardCompWidget> createState() => _ProductCardCompWidgetState();
}

class _ProductCardCompWidgetState extends State<ProductCardCompWidget> {
  late ProductCardCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductCardCompModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          context.pushNamed(
            'productPage',
            queryParameters: {
              'productId': serializeParam(
                widget.productId,
                ParamType.int,
              ),
              'product': serializeParam(
                widget.productArray,
                ParamType.JSON,
              ),
              'parId': serializeParam(
                widget.parId,
                ParamType.int,
              ),
              'parName': serializeParam(
                widget.parName,
                ParamType.String,
              ),
              'partype': serializeParam(
                widget.parType,
                ParamType.String,
              ),
              'byPar': serializeParam(
                'bycategory',
                ParamType.String,
              ),
            }.withoutNulls,
            extra: <String, dynamic>{
              kTransitionInfoKey: const TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.fade,
                duration: Duration(milliseconds: 0),
              ),
            },
          );
        },
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: FlutterFlowTheme.of(context).surfaceBright,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                child: Container(
                  width: double.infinity,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        getJsonField(
                          widget.productArray,
                          r'''$.previewPicture''',
                        ).toString(),
                      ).image,
                    ),
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 2.0,
                              sigmaY: 2.0,
                            ),
                            child: Visibility(
                              visible:
                                  functions.convJsonToStringCopy(getJsonField(
                                        widget.productArray,
                                        r'''$.available''',
                                      )) !=
                                      FFAppConstants.available,
                              child: Opacity(
                                opacity: 0.8,
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 30.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Text(
                                        'нет в наличии',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              fontSize: 16.0,
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
              Align(
                alignment: const AlignmentDirectional(1.0, -1.0),
                child: ToggleIcon(
                  onPressed: () async {
                    setState(
                        () => FFAppState().tapHeart = !FFAppState().tapHeart);
                  },
                  value: FFAppState().tapHeart,
                  onIcon: Icon(
                    Icons.favorite_sharp,
                    color: FlutterFlowTheme.of(context).error,
                    size: 25.0,
                  ),
                  offIcon: Icon(
                    Icons.favorite_border,
                    color: FlutterFlowTheme.of(context).error,
                    size: 25.0,
                  ),
                ),
              ),
              if (functions.convJsonToStringCopy(getJsonField(
                    widget.productArray,
                    r'''$.available''',
                  )) ==
                  FFAppConstants.available)
                Align(
                  alignment: const AlignmentDirectional(0.97, 0.93),
                  child: FlutterFlowIconButton(
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.shopping_bag_outlined,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 30.0,
                    ),
                    onPressed: () async {
                      _model.offersRes =
                          await ApiSulGroup.getOffersNewCall.call(
                        id: widget.productId,
                      );
                      if (functions
                              .countJSONElements(
                                  (_model.offersRes?.jsonBody ?? ''))
                              .toString() ==
                          '0') {
                        _model.isAddedReference3 =
                            await actions.findItemInBasket(
                          getJsonField(
                            widget.productArray,
                            r'''$.xml_id''',
                          ).toString(),
                          FFAppState().basketstr!,
                        );
                        if (_model.isAddedReference3 != null) {
                          await _model.isAddedReference3!.update({
                            ...createBasketRecordData(
                              xmlIdProduct: getJsonField(
                                widget.productArray,
                                r'''$.xml_id''',
                              ).toString(),
                              xmlIdVariant: getJsonField(
                                widget.productArray,
                                r'''$.xml_id''',
                              ).toString(),
                            ),
                            ...mapToFirestore(
                              {
                                'kolvo': FieldValue.increment(1),
                              },
                            ),
                          });
                        } else {
                          // addItemtoBasketVariable
                          _model.addBasket3 = await actions.addItemtoBasket(
                            getJsonField(
                              widget.productArray,
                              r'''$.xml_id''',
                            ).toString(),
                            getJsonField(
                              widget.productArray,
                              r'''$.xml_id''',
                            ).toString(),
                            widget.productId,
                            0,
                            getJsonField(
                              widget.productArray,
                              r'''$.name''',
                            ).toString(),
                            'шт',
                            'шт',
                            '-',
                            '-',
                            1,
                            int.parse(getJsonField(
                              widget.productArray,
                              r'''$.r_price_main''',
                            ).toString()),
                            0,
                            0,
                            0,
                            getJsonField(
                              widget.productArray,
                              r'''$.previewPicture''',
                            ).toString(),
                            const Color(0x00000000),
                          );
                          FFAppState().update(() {
                            FFAppState().addToBasket(_model.addBasket3!);
                          });
                          // Add record to basket collection FB

                          var basketRecordReference =
                              BasketRecord.createDoc(FFAppState().basketstr!);
                          await basketRecordReference
                              .set(createBasketRecordData(
                            xmlIdProduct: _model.addBasket3?.xmlIdProduct,
                            idProduct: _model.addBasket3?.idProduct,
                            productName: _model.addBasket3?.productName,
                            variantName: _model.addBasket3?.variantName,
                            volumeFull: _model.addBasket3?.volumeFull,
                            kolvo: _model.addBasket3?.kolvo,
                            rPrice: _model.addBasket3?.rPrice,
                            userPrice: _model.addBasket3?.userPrice,
                            discount: _model.addBasket3?.discount,
                            discountSum: _model.addBasket3?.discountSum,
                            image: _model.addBasket3?.image,
                            basketMainReference: FFAppState().basketstr,
                            xmlIdVariant: _model.addBasket3?.xmlIdVariant,
                          ));
                          _model.newBasketItemFB4 =
                              BasketRecord.getDocumentFromData(
                                  createBasketRecordData(
                                    xmlIdProduct:
                                        _model.addBasket3?.xmlIdProduct,
                                    idProduct: _model.addBasket3?.idProduct,
                                    productName: _model.addBasket3?.productName,
                                    variantName: _model.addBasket3?.variantName,
                                    volumeFull: _model.addBasket3?.volumeFull,
                                    kolvo: _model.addBasket3?.kolvo,
                                    rPrice: _model.addBasket3?.rPrice,
                                    userPrice: _model.addBasket3?.userPrice,
                                    discount: _model.addBasket3?.discount,
                                    discountSum: _model.addBasket3?.discountSum,
                                    image: _model.addBasket3?.image,
                                    basketMainReference: FFAppState().basketstr,
                                    xmlIdVariant:
                                        _model.addBasket3?.xmlIdVariant,
                                  ),
                                  basketRecordReference);
                        }

                        _model.baskMain4upd3 =
                            await actions.countBasketVarsCopy(
                          FFAppState().basketstr!,
                        );

                        await FFAppState()
                            .basketstr!
                            .update(createBasketMainRecordData(
                              kolProducts: _model.baskMain4upd3?.kolProducts,
                              total: _model.baskMain4upd3?.total,
                              totalDiscount:
                                  _model.baskMain4upd3?.totalDiscount,
                              totalR: _model.baskMain4upd3?.totalR,
                            ));
                        FFAppState().update(() {
                          FFAppState().updateBasketMainStruct(
                            (e) => e
                              ..kolProducts = _model.baskMain4upd3?.kolProducts
                              ..total = _model.baskMain4upd3?.total
                              ..totalDiscount =
                                  _model.baskMain4upd3?.totalDiscount
                              ..totalR = _model.baskMain4upd3?.totalR,
                          );
                        });
                        FFAppState().update(() {
                          FFAppState().basketItemsCount =
                              _model.baskMain4upd3!.kolProducts;
                          FFAppState().basketTotal =
                              _model.baskMain4upd3!.totalR;
                          FFAppState().basketDiscountSum =
                              _model.baskMain4upd3!.totalDiscount;
                        });
                        ScaffoldMessenger.of(context).clearSnackBars();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              (String var1, String var2, String var3) {
                                return '${var2.toUpperCase()} $var1 $var3 добавлен в корзину';
                              }(
                                  getJsonField(
                                    widget.productArray,
                                    r'''$.name''',
                                  ).toString(),
                                  getJsonField(
                                    widget.productArray,
                                    r'''$.brand''',
                                  ).toString(),
                                  '1 шт'),
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                fontSize: 14.0,
                              ),
                            ),
                            duration: const Duration(milliseconds: 2350),
                            backgroundColor:
                                FlutterFlowTheme.of(context).yellowTriggers,
                          ),
                        );
                      } else {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          enableDrag: false,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: AddBasketBottomSheetCompWidget(
                                offers: (_model.offersRes?.jsonBody ?? ''),
                                productID: widget.productId!,
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      }

                      setState(() {});
                    },
                  ),
                ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            5.0, 10.0, 5.0, 10.0),
                        child: Text(
                          functions.cutStringF(
                              (String brand, String name) {
                                return '${brand.toUpperCase()} $name';
                              }(
                                  getJsonField(
                                    widget.productArray,
                                    r'''$.brand''',
                                  ).toString(),
                                  getJsonField(
                                    widget.productArray,
                                    r'''$.name''',
                                  ).toString()),
                              '...',
                              60),
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                fontSize: 13.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 17.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'от ',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          Text(
                            FFAppState().cardid == ''
                                ? ((String var1) {
                                    return '$var1₽';
                                  }(widget.productInfo!.minPrice.toString()))
                                : (widget.productInfo!.hasVariants
                                    ? () {
                                        if (FFAppState().cardlevelname ==
                                            'Black') {
                                          return ((String var1) {
                                            return '$var1₽';
                                          }(widget.productInfo!.minPriceBlack
                                              .toString()));
                                        } else if (FFAppState().cardlevelname ==
                                            'Gold') {
                                          return ((String var1) {
                                            return '$var1₽';
                                          }(widget.productInfo!.minPriceGold
                                              .toString()));
                                        } else if (FFAppState().cardlevelname ==
                                            'Infinity') {
                                          return ((String var1) {
                                            return '$var1₽';
                                          }(widget.productInfo!.minPriceInfinity
                                              .toString()));
                                        } else {
                                          return ((String var1) {
                                            return '$var1₽';
                                          }(widget.productInfo!.minPriceVip
                                              .toString()));
                                        }
                                      }()
                                    : ((String var1) {
                                        return '$var1₽';
                                      }(widget.productInfo!.minPrice
                                        .toString()))),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              if ((functions
                          .stringtoInt(widget.productInfo!.discountValue)
                          .toString() !=
                      '0') &&
                  (widget.productInfo?.discountType == 'P'))
                Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).warning,
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      (String var1) {
                        return '$var1%';
                      }(getJsonField(
                        widget.productArray,
                        r'''$.discount_value''',
                      ).toString()),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            fontSize: 11.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ),
                ),
              if ((widget.productInfo?.newType == 'Да') ||
                  (widget.productInfo?.specCategory == 'Новинки'))
                Align(
                  alignment: const AlignmentDirectional(-0.6, -1.0),
                  child: Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: const BoxDecoration(
                      color: Color(0xFF49ACAD),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        'NEW',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              fontSize: 11.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
