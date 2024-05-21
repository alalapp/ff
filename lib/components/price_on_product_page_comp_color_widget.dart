import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'price_on_product_page_comp_color_model.dart';
export 'price_on_product_page_comp_color_model.dart';

class PriceOnProductPageCompColorWidget extends StatefulWidget {
  const PriceOnProductPageCompColorWidget({
    super.key,
    required this.productId,
    this.offers,
    this.onChangeVolume,
    required this.firstState,
  });

  final int? productId;
  final List<OfferInfoStruct>? offers;
  final Future Function(
      String? avail,
      String? rPrice,
      String? iPrice,
      String? colorName,
      String? xmlId,
      String? cutvolume,
      Color? color,
      String? disc,
      String? userPrice,
      String? soecPrice)? onChangeVolume;
  final Future Function(
          String? avail, String? disc, String? specPrice, String? userPrice)?
      firstState;

  @override
  State<PriceOnProductPageCompColorWidget> createState() =>
      _PriceOnProductPageCompColorWidgetState();
}

class _PriceOnProductPageCompColorWidgetState
    extends State<PriceOnProductPageCompColorWidget> {
  late PriceOnProductPageCompColorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PriceOnProductPageCompColorModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.updatePage(() {
        _model.selectedOfferId = widget.offers?.first.id.toString();
        _model.selectedColor = colorFromCssString(
          widget.offers!.first.color,
          defaultColor: Colors.black,
        );
        _model.selectedColorName = widget.offers?.first.colorName;
        _model.selectedAvailable = widget.offers?.first.available;
        _model.selectedXmlVariant = widget.offers?.first.xmlIDOffer;
        _model.selectedDiscount = widget.offers?.first.discValue;
        _model.selectedSpecPrice = widget.offers?.first.specPrice.toString();
      });
      if (FFAppState().cardid != '') {
        if (FFAppState().cardnextlevelname == 'Black') {
          setState(() {
            _model.selectedUserPrice =
                widget.offers?.first.blackPrice.toString();
          });
        } else if (FFAppState().cardnextlevelname == 'Gold') {
          setState(() {
            _model.selectedUserPrice =
                widget.offers?.first.goldPrice.toString();
          });
        } else if (FFAppState().cardnextlevelname == 'Infinity') {
          setState(() {
            _model.selectedUserPrice =
                widget.offers?.first.infinityPrice.toString();
          });
        } else {
          setState(() {
            _model.selectedUserPrice =
                widget.offers?.first.vipPrice.toString();
          });
        }
      } else {
        setState(() {
          _model.selectedUserPrice = '0';
        });
      }

      await widget.firstState?.call(
        _model.selectedAvailable,
        _model.selectedDiscount,
        _model.selectedSpecPrice,
        _model.selectedUserPrice,
      );
    });

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: const AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: Text(
                  'ОТТЕНОК',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: Text(
                  valueOrDefault<String>(
                    _model.selectedColorName,
                    '-',
                  ),
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Builder(
            builder: (context) {
              final offersARR = widget.offers?.toList() ?? [];
              return GridView.builder(
                padding: const EdgeInsets.fromLTRB(
                  0,
                  10.0,
                  0,
                  10.0,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 8,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0,
                  childAspectRatio: 1.0,
                ),
                primary: false,
                scrollDirection: Axis.vertical,
                itemCount: offersARR.length,
                itemBuilder: (context, offersARRIndex) {
                  final offersARRItem = offersARR[offersARRIndex];
                  return Container(
                    width: 25.0,
                    height: 25.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: valueOrDefault<Color>(
                          functions.intToString(offersARRItem.id) ==
                                  _model.selectedOfferId
                              ? FlutterFlowTheme.of(context).tertiary
                              : FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                          FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        width: 1.0,
                      ),
                    ),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.updatePage(() {
                          _model.selectedOfferId = offersARRItem.id.toString();
                          _model.selectedPriceR =
                              offersARRItem.rPrice.toString();
                          _model.selectedPriceI =
                              offersARRItem.iPrice.toString();
                          _model.selectedColor = colorFromCssString(
                            offersARRItem.color,
                            defaultColor: Colors.black,
                          );
                          _model.selectedColorName = offersARRItem.colorName;
                          _model.selectedAvailable = offersARRItem.available;
                          _model.selectedXmlVariant = offersARRItem.xmlIDOffer;
                          _model.selectedDiscount = offersARRItem.discValue;
                          _model.selectedSpecPrice =
                              offersARRItem.specPrice.toString();
                        });
                        if (FFAppState().cardid != '') {
                          if (FFAppState().cardlevelname == 'Black') {
                            setState(() {
                              _model.selectedUserPrice =
                                  offersARRItem.blackPrice.toString();
                            });
                          } else if (FFAppState().cardlevelname == 'Gold') {
                            setState(() {
                              _model.selectedUserPrice =
                                  offersARRItem.goldPrice.toString();
                            });
                          } else if (FFAppState().cardlevelname == 'Infinity') {
                            setState(() {
                              _model.selectedUserPrice =
                                  offersARRItem.infinityPrice.toString();
                            });
                          } else {
                            setState(() {
                              _model.selectedUserPrice =
                                  offersARRItem.vipPrice.toString();
                            });
                          }
                        } else {
                          setState(() {
                            _model.selectedUserPrice =
                                offersARRItem.blackPrice.toString();
                          });
                        }

                        await widget.onChangeVolume?.call(
                          _model.selectedAvailable,
                          _model.selectedPriceR,
                          _model.selectedPriceI,
                          _model.selectedColorName,
                          _model.selectedXmlVariant,
                          '',
                          _model.selectedColor,
                          _model.selectedDiscount,
                          _model.selectedUserPrice,
                          _model.selectedSpecPrice,
                        );
                      },
                      child: Container(
                        width: 22.0,
                        height: 22.0,
                        decoration: BoxDecoration(
                          color: colorFromCssString(
                            offersARRItem.color,
                            defaultColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          shape: BoxShape.circle,
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
    );
  }
}
