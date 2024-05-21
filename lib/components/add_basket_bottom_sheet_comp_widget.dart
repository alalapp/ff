import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_basket_bottom_sheet_comp_model.dart';
export 'add_basket_bottom_sheet_comp_model.dart';

class AddBasketBottomSheetCompWidget extends StatefulWidget {
  const AddBasketBottomSheetCompWidget({
    super.key,
    required this.offers,
    required this.productID,
  });

  final List<dynamic>? offers;
  final int? productID;

  @override
  State<AddBasketBottomSheetCompWidget> createState() =>
      _AddBasketBottomSheetCompWidgetState();
}

class _AddBasketBottomSheetCompWidgetState
    extends State<AddBasketBottomSheetCompWidget> {
  late AddBasketBottomSheetCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddBasketBottomSheetCompModel());

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

    return Container(
      width: double.infinity,
      height: 300.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: FutureBuilder<ApiCallResponse>(
        future: ApiSulGroup.getInfoProductNEWCall.call(
          id: widget.productID,
        ),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 150.0,
                height: 150.0,
                child: SpinKitRipple(
                  color: FlutterFlowTheme.of(context).secondary,
                  size: 150.0,
                ),
              ),
            );
          }
          final columnGetInfoProductNEWResponse = snapshot.data!;
          return SingleChildScrollView(
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network(
                                ApiSulGroup.getInfoProductNEWCall
                                    .previewPicture(
                                  columnGetInfoProductNEWResponse.jsonBody,
                                )!,
                                width: 80.0,
                                height: 80.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    (String var1, String var2) {
                                      return '$var1 $var2';
                                    }(
                                        ApiSulGroup.getInfoProductNEWCall.brand(
                                          columnGetInfoProductNEWResponse
                                              .jsonBody,
                                        )!,
                                        ApiSulGroup.getInfoProductNEWCall.name(
                                          columnGetInfoProductNEWResponse
                                              .jsonBody,
                                        )!),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          fontSize: 17.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
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
                ),
                Divider(
                  thickness: 1.0,
                  indent: 20.0,
                  endIndent: 20.0,
                  color: FlutterFlowTheme.of(context).button4,
                ),
                Builder(
                  builder: (context) {
                    final childarr = widget.offers!.toList();
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: childarr.length,
                      itemBuilder: (context, childarrIndex) {
                        final childarrItem = childarr[childarrIndex];
                        return Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              30.0, 20.0, 20.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              if (getJsonField(
                                    childarrItem,
                                    r'''$.color_name''',
                                  ) !=
                                  null)
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Container(
                                    width: 30.0,
                                    height: 30.0,
                                    decoration: BoxDecoration(
                                      color: getJsonField(
                                                childarrItem,
                                                r'''$.color_name''',
                                              ) !=
                                              null
                                          ? colorFromCssString(
                                              getJsonField(
                                                childarrItem,
                                                r'''$.color''',
                                              ).toString(),
                                              defaultColor: Colors.black,
                                            )
                                          : const Color(0x00000000),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  functions
                                              .strLength(getJsonField(
                                                childarrItem,
                                                r'''$.color_name''',
                                              ).toString())
                                              .toString() !=
                                          '0'
                                      ? getJsonField(
                                          childarrItem,
                                          r'''$.volume''',
                                        ).toString()
                                      : getJsonField(
                                          childarrItem,
                                          r'''$.color_name''',
                                        ).toString(),
                                  textAlign: TextAlign.justify,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: const AlignmentDirectional(1.0, 0.0),
                                  child: Text(
                                    FFAppState().cardid == ''
                                        ? ((String var1) {
                                            return '$var1₽';
                                          }(getJsonField(
                                            childarrItem,
                                            r'''$.r_price''',
                                          ).toString()))
                                        : () {
                                            if (FFAppState().cardlevelname ==
                                                'Black') {
                                              return ((String var1) {
                                                return '$var1₽';
                                              }(getJsonField(
                                                childarrItem,
                                                r'''$.black_price_offer''',
                                              ).toString()));
                                            } else if (FFAppState()
                                                    .cardlevelname ==
                                                'Gold') {
                                              return ((String var1) {
                                                return '$var1₽';
                                              }(getJsonField(
                                                childarrItem,
                                                r'''$.gold_price_offer''',
                                              ).toString()));
                                            } else if (FFAppState()
                                                    .cardlevelname ==
                                                'Infinity') {
                                              return ((String var1) {
                                                return '$var1₽';
                                              }(getJsonField(
                                                childarrItem,
                                                r'''$.infinity_price_offer''',
                                              ).toString()));
                                            } else {
                                              return ((String var1) {
                                                return '$var1₽';
                                              }(getJsonField(
                                                childarrItem,
                                                r'''$.vip_price_offer''',
                                              ).toString()));
                                            }
                                          }(),
                                    textAlign: TextAlign.end,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
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
                                child: FlutterFlowIconButton(
                                  borderRadius: 20.0,
                                  buttonSize: 40.0,
                                  icon: Icon(
                                    Icons.shopping_bag_sharp,
                                    color: functions.convJsonToStringCopy(
                                                getJsonField(
                                              childarrItem,
                                              r'''$.available''',
                                            )) ==
                                            FFAppConstants.available
                                        ? FlutterFlowTheme.of(context).tertiary
                                        : FlutterFlowTheme.of(context)
                                            .fon3MiddleGray,
                                    size: 24.0,
                                  ),
                                  onPressed: !(functions.convJsonToStringCopy(
                                                  getJsonField(
                                                childarrItem,
                                                r'''$.available''',
                                              )) ==
                                              FFAppConstants.available
                                          ? true
                                          : true)
                                      ? null
                                      : () async {
                                          if (functions.convJsonToStringCopy(
                                                  getJsonField(
                                                childarrItem,
                                                r'''$.available''',
                                              )) ==
                                              FFAppConstants.available) {
                                            _model.isAddedReference2 =
                                                await actions.findItemInBasket(
                                              getJsonField(
                                                childarrItem,
                                                r'''$.xml_id''',
                                              ).toString(),
                                              FFAppState().basketstr!,
                                            );
                                            if (_model.isAddedReference2 !=
                                                null) {
                                              await _model.isAddedReference2!
                                                  .update({
                                                ...createBasketRecordData(
                                                  xmlIdVariant: getJsonField(
                                                    childarrItem,
                                                    r'''$.xml_id''',
                                                  ).toString(),
                                                ),
                                                ...mapToFirestore(
                                                  {
                                                    'kolvo':
                                                        FieldValue.increment(1),
                                                  },
                                                ),
                                              });
                                            } else {
                                              // addItemtoBasketVariable
                                              _model.addBasket2 =
                                                  await actions.addItemtoBasket(
                                                ApiSulGroup
                                                    .getInfoProductNEWCall
                                                    .xmlid(
                                                  columnGetInfoProductNEWResponse
                                                      .jsonBody,
                                                ),
                                                getJsonField(
                                                  childarrItem,
                                                  r'''$.xml_id''',
                                                ).toString(),
                                                ApiSulGroup
                                                    .getInfoProductNEWCall
                                                    .id(
                                                  columnGetInfoProductNEWResponse
                                                      .jsonBody,
                                                ),
                                                0,
                                                ApiSulGroup
                                                    .getInfoProductNEWCall
                                                    .name(
                                                  columnGetInfoProductNEWResponse
                                                      .jsonBody,
                                                ),
                                                (functions
                                                                .countJSONElements(
                                                                    ApiSulGroup
                                                                        .getInfoProductNEWCall
                                                                        .offers(
                                                                          columnGetInfoProductNEWResponse
                                                                              .jsonBody,
                                                                        )!
                                                                        .toList())
                                                                .toString() !=
                                                            '0') &&
                                                        (getJsonField(
                                                              childarrItem,
                                                              r'''$.color_name''',
                                                            ) !=
                                                            null)
                                                    ? getJsonField(
                                                        childarrItem,
                                                        r'''$.color_name''',
                                                      ).toString()
                                                    : (functions
                                                                .countJSONElements(
                                                                    ApiSulGroup
                                                                        .getInfoProductNEWCall
                                                                        .offers(
                                                                          columnGetInfoProductNEWResponse
                                                                              .jsonBody,
                                                                        )!
                                                                        .toList())
                                                                .toString() !=
                                                            '0'
                                                        ? getJsonField(
                                                            childarrItem,
                                                            r'''$.volume''',
                                                          ).toString()
                                                        : 'шт'),
                                                (functions
                                                                .countJSONElements(
                                                                    ApiSulGroup
                                                                        .getInfoProductNEWCall
                                                                        .offers(
                                                                          columnGetInfoProductNEWResponse
                                                                              .jsonBody,
                                                                        )!
                                                                        .toList())
                                                                .toString() !=
                                                            '0') &&
                                                        (getJsonField(
                                                              childarrItem,
                                                              r'''$.color_name''',
                                                            ) !=
                                                            null)
                                                    ? getJsonField(
                                                        childarrItem,
                                                        r'''$.color_name''',
                                                      ).toString()
                                                    : (functions
                                                                .countJSONElements(
                                                                    ApiSulGroup
                                                                        .getInfoProductNEWCall
                                                                        .offers(
                                                                          columnGetInfoProductNEWResponse
                                                                              .jsonBody,
                                                                        )!
                                                                        .toList())
                                                                .toString() !=
                                                            '0'
                                                        ? getJsonField(
                                                            childarrItem,
                                                            r'''$.volume''',
                                                          ).toString()
                                                        : 'шт'),
                                                functions
                                                            .countJSONElements(
                                                                widget.offers!
                                                                    .toList())
                                                            .toString() !=
                                                        '0'
                                                    ? ((functions
                                                                    .countJSONElements(ApiSulGroup
                                                                        .getInfoProductNEWCall
                                                                        .offers(
                                                                          columnGetInfoProductNEWResponse
                                                                              .jsonBody,
                                                                        )!
                                                                        .toList())
                                                                    .toString() !=
                                                                '0') &&
                                                            (getJsonField(
                                                                  childarrItem,
                                                                  r'''$.color_name''',
                                                                ) !=
                                                                null)
                                                        ? getJsonField(
                                                            childarrItem,
                                                            r'''$.color_name''',
                                                          ).toString()
                                                        : (functions
                                                                    .countJSONElements(ApiSulGroup
                                                                        .getInfoProductNEWCall
                                                                        .offers(
                                                                          columnGetInfoProductNEWResponse
                                                                              .jsonBody,
                                                                        )!
                                                                        .toList())
                                                                    .toString() !=
                                                                '0'
                                                            ? functions
                                                                .replaceStr(
                                                                    getJsonField(
                                                                childarrItem,
                                                                r'''$.volume''',
                                                              ).toString())
                                                            : 'шт'))
                                                    : '-',
                                                getJsonField(
                                                          childarrItem,
                                                          r'''$.color''',
                                                        ) !=
                                                        null
                                                    ? getJsonField(
                                                        childarrItem,
                                                        r'''$.color_name''',
                                                      ).toString()
                                                    : null,
                                                1,
                                                int.parse(getJsonField(
                                                  childarrItem,
                                                  r'''$.r_price''',
                                                ).toString()),
                                                0,
                                                0,
                                                0,
                                                ApiSulGroup
                                                    .getInfoProductNEWCall
                                                    .previewPicture(
                                                  columnGetInfoProductNEWResponse
                                                      .jsonBody,
                                                ),
                                                (functions
                                                                .countJSONElements(
                                                                    widget
                                                                        .offers!
                                                                        .toList())
                                                                .toString() !=
                                                            '0') &&
                                                        (getJsonField(
                                                              childarrItem,
                                                              r'''$.color_name''',
                                                            ) !=
                                                            null)
                                                    ? colorFromCssString(
                                                        getJsonField(
                                                          childarrItem,
                                                          r'''$.color''',
                                                        ).toString(),
                                                      )
                                                    : const Color(0x00000000),
                                              );
                                              FFAppState().update(() {
                                                FFAppState().addToBasket(
                                                    _model.addBasket2!);
                                              });
                                              if (getJsonField(
                                                    childarrItem,
                                                    r'''$.color_name''',
                                                  ) !=
                                                  null) {
                                                // Add record to basket collection FB

                                                var basketRecordReference1 =
                                                    BasketRecord.createDoc(
                                                        FFAppState()
                                                            .basketstr!);
                                                await basketRecordReference1
                                                    .set(createBasketRecordData(
                                                  xmlIdProduct: _model
                                                      .addBasket2?.xmlIdProduct,
                                                  xmlIdVariant: _model
                                                      .addBasket2?.xmlIdVariant,
                                                  idProduct: _model
                                                      .addBasket2?.idProduct,
                                                  idVariant: _model
                                                      .addBasket2?.idVariant,
                                                  productName: _model
                                                      .addBasket2?.productName,
                                                  variantName: _model
                                                      .addBasket2?.variantName,
                                                  volumeFull: _model
                                                      .addBasket2?.volumeFull,
                                                  volumeCut: _model
                                                      .addBasket2?.volumeCut,
                                                  colorName: _model
                                                      .addBasket2?.colorName,
                                                  kolvo:
                                                      _model.addBasket2?.kolvo,
                                                  rPrice:
                                                      _model.addBasket2?.rPrice,
                                                  userPrice: _model
                                                      .addBasket2?.userPrice,
                                                  discount: _model
                                                      .addBasket2?.discount,
                                                  discountSum: _model
                                                      .addBasket2?.discountSum,
                                                  image:
                                                      _model.addBasket2?.image,
                                                  basketMainReference:
                                                      FFAppState().basketstr,
                                                  color:
                                                      _model.addBasket2?.color,
                                                ));
                                                _model.newBasketItemFB2 =
                                                    BasketRecord.getDocumentFromData(
                                                        createBasketRecordData(
                                                          xmlIdProduct: _model
                                                              .addBasket2
                                                              ?.xmlIdProduct,
                                                          xmlIdVariant: _model
                                                              .addBasket2
                                                              ?.xmlIdVariant,
                                                          idProduct: _model
                                                              .addBasket2
                                                              ?.idProduct,
                                                          idVariant: _model
                                                              .addBasket2
                                                              ?.idVariant,
                                                          productName: _model
                                                              .addBasket2
                                                              ?.productName,
                                                          variantName: _model
                                                              .addBasket2
                                                              ?.variantName,
                                                          volumeFull: _model
                                                              .addBasket2
                                                              ?.volumeFull,
                                                          volumeCut: _model
                                                              .addBasket2
                                                              ?.volumeCut,
                                                          colorName: _model
                                                              .addBasket2
                                                              ?.colorName,
                                                          kolvo: _model
                                                              .addBasket2
                                                              ?.kolvo,
                                                          rPrice: _model
                                                              .addBasket2
                                                              ?.rPrice,
                                                          userPrice: _model
                                                              .addBasket2
                                                              ?.userPrice,
                                                          discount: _model
                                                              .addBasket2
                                                              ?.discount,
                                                          discountSum: _model
                                                              .addBasket2
                                                              ?.discountSum,
                                                          image: _model
                                                              .addBasket2
                                                              ?.image,
                                                          basketMainReference:
                                                              FFAppState()
                                                                  .basketstr,
                                                          color: _model
                                                              .addBasket2
                                                              ?.color,
                                                        ),
                                                        basketRecordReference1);
                                              } else {
                                                // Add record to basket collection FB

                                                var basketRecordReference2 =
                                                    BasketRecord.createDoc(
                                                        FFAppState()
                                                            .basketstr!);
                                                await basketRecordReference2
                                                    .set(createBasketRecordData(
                                                  xmlIdProduct: _model
                                                      .addBasket2?.xmlIdProduct,
                                                  xmlIdVariant: _model
                                                      .addBasket2?.xmlIdVariant,
                                                  idProduct: _model
                                                      .addBasket2?.idProduct,
                                                  idVariant: _model
                                                      .addBasket2?.idVariant,
                                                  productName: _model
                                                      .addBasket2?.productName,
                                                  variantName: _model
                                                      .addBasket2?.variantName,
                                                  volumeFull: _model
                                                      .addBasket2?.volumeFull,
                                                  volumeCut: _model
                                                      .addBasket2?.volumeCut,
                                                  kolvo:
                                                      _model.addBasket2?.kolvo,
                                                  rPrice:
                                                      _model.addBasket2?.rPrice,
                                                  userPrice: _model
                                                      .addBasket2?.userPrice,
                                                  discount: _model
                                                      .addBasket2?.discount,
                                                  discountSum: _model
                                                      .addBasket2?.discountSum,
                                                  image:
                                                      _model.addBasket2?.image,
                                                  basketMainReference:
                                                      FFAppState().basketstr,
                                                ));
                                                _model.newBasketItemFB3 =
                                                    BasketRecord.getDocumentFromData(
                                                        createBasketRecordData(
                                                          xmlIdProduct: _model
                                                              .addBasket2
                                                              ?.xmlIdProduct,
                                                          xmlIdVariant: _model
                                                              .addBasket2
                                                              ?.xmlIdVariant,
                                                          idProduct: _model
                                                              .addBasket2
                                                              ?.idProduct,
                                                          idVariant: _model
                                                              .addBasket2
                                                              ?.idVariant,
                                                          productName: _model
                                                              .addBasket2
                                                              ?.productName,
                                                          variantName: _model
                                                              .addBasket2
                                                              ?.variantName,
                                                          volumeFull: _model
                                                              .addBasket2
                                                              ?.volumeFull,
                                                          volumeCut: _model
                                                              .addBasket2
                                                              ?.volumeCut,
                                                          kolvo: _model
                                                              .addBasket2
                                                              ?.kolvo,
                                                          rPrice: _model
                                                              .addBasket2
                                                              ?.rPrice,
                                                          userPrice: _model
                                                              .addBasket2
                                                              ?.userPrice,
                                                          discount: _model
                                                              .addBasket2
                                                              ?.discount,
                                                          discountSum: _model
                                                              .addBasket2
                                                              ?.discountSum,
                                                          image: _model
                                                              .addBasket2
                                                              ?.image,
                                                          basketMainReference:
                                                              FFAppState()
                                                                  .basketstr,
                                                        ),
                                                        basketRecordReference2);
                                              }
                                            }

                                            _model.baskMain4upd2 = await actions
                                                .countBasketVarsCopy(
                                              FFAppState().basketstr!,
                                            );

                                            await FFAppState()
                                                .basketstr!
                                                .update(
                                                    createBasketMainRecordData(
                                                  kolProducts: _model
                                                      .baskMain4upd2
                                                      ?.kolProducts,
                                                  total: _model
                                                      .baskMain4upd2?.total,
                                                  totalDiscount: _model
                                                      .baskMain4upd2
                                                      ?.totalDiscount,
                                                  totalR: _model
                                                      .baskMain4upd2?.totalR,
                                                ));
                                            FFAppState().update(() {
                                              FFAppState()
                                                  .updateBasketMainStruct(
                                                (e) => e
                                                  ..kolProducts = _model
                                                      .baskMain4upd2
                                                      ?.kolProducts
                                                  ..total = _model
                                                      .baskMain4upd2?.total
                                                  ..totalDiscount = _model
                                                      .baskMain4upd2
                                                      ?.totalDiscount
                                                  ..totalR = _model
                                                      .baskMain4upd2?.totalR,
                                              );
                                            });
                                            FFAppState().update(() {
                                              FFAppState().basketItemsCount =
                                                  _model.baskMain4upd2!
                                                      .kolProducts;
                                              FFAppState().basketTotal =
                                                  _model.baskMain4upd2!.totalR;
                                              FFAppState().basketDiscountSum =
                                                  _model.baskMain4upd2!
                                                      .totalDiscount;
                                            });
                                            Navigator.pop(context);
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
                                                      ApiSulGroup
                                                          .getInfoProductNEWCall
                                                          .name(
                                                        columnGetInfoProductNEWResponse
                                                            .jsonBody,
                                                      )!,
                                                      ApiSulGroup
                                                          .getInfoProductNEWCall
                                                          .brand(
                                                        columnGetInfoProductNEWResponse
                                                            .jsonBody,
                                                      )!,
                                                      ((functions
                                                                      .countJSONElements(ApiSulGroup
                                                                          .getInfoProductNEWCall
                                                                          .offers(
                                                                            columnGetInfoProductNEWResponse.jsonBody,
                                                                          )!
                                                                          .toList())
                                                                      .toString() !=
                                                                  '0') &&
                                                              (getJsonField(
                                                                    childarrItem,
                                                                    r'''$.color_name''',
                                                                  ) !=
                                                                  null)
                                                          ? getJsonField(
                                                              childarrItem,
                                                              r'''$.color_name''',
                                                            ).toString()
                                                          : (functions
                                                                      .countJSONElements(ApiSulGroup
                                                                          .getInfoProductNEWCall
                                                                          .offers(
                                                                            columnGetInfoProductNEWResponse.jsonBody,
                                                                          )!
                                                                          .toList())
                                                                      .toString() !=
                                                                  '0'
                                                              ? getJsonField(
                                                                  childarrItem,
                                                                  r'''$.volume''',
                                                                ).toString()
                                                              : 'шт'))),
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
                                                        .yellowTriggers,
                                              ),
                                            );
                                          } else {
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  content:
                                                      const Text('нет в наличии'),
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
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ].divide(const SizedBox(height: 10.0)),
            ),
          );
        },
      ),
    );
  }
}
