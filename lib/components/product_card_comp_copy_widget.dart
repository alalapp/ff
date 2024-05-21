import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_card_comp_copy_model.dart';
export 'product_card_comp_copy_model.dart';

class ProductCardCompCopyWidget extends StatefulWidget {
  const ProductCardCompCopyWidget({
    super.key,
    required this.productId,
    required this.productArray,
    this.parId,
    this.parName,
    this.parType,
    required this.productInfo,
  });

  final int? productId;
  final dynamic productArray;
  final int? parId;
  final String? parName;
  final String? parType;
  final ProductInfoStruct? productInfo;

  @override
  State<ProductCardCompCopyWidget> createState() =>
      _ProductCardCompCopyWidgetState();
}

class _ProductCardCompCopyWidgetState extends State<ProductCardCompCopyWidget> {
  late ProductCardCompCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductCardCompCopyModel());

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

    return Stack(
      children: [
        InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            _model.offersRes = await ApiSulGroup.getOffersNewCall.call(
              id: widget.productId,
            );

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
                  transitionType: PageTransitionType.rightToLeft,
                ),
              },
            );

            setState(() {});
          },
          child: Container(
            width: double.infinity,
            height: 330.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              shape: BoxShape.rectangle,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                  child: Container(
                    width: double.infinity,
                    height: 215.0,
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
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 5.0, 5.0),
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
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: FlutterFlowTheme.of(context).onSurfaceText,
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 0.0, 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'от ',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                        Text(
                          FFAppState().cardid == ''
                              ? ((String var1) {
                                  return '$var1₽';
                                }(getJsonField(
                                  widget.productArray,
                                  r'''$.min_price''',
                                ).toString()))
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
                                fontSize: 13.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
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
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
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
            alignment: AlignmentDirectional(
                valueOrDefault<double>(
                  (functions
                                  .stringtoInt(
                                      widget.productInfo!.discountValue)
                                  .toString() !=
                              '0') &&
                          (widget.productInfo?.discountType == 'P')
                      ? -0.6
                      : -1.0,
                  0.0,
                ),
                -1.0),
            child: Container(
              width: 30.0,
              height: 30.0,
              decoration: const BoxDecoration(
                color: Color(0xFF81D4D4),
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
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
