import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'price_on_product_page_comp_model.dart';
export 'price_on_product_page_comp_model.dart';

class PriceOnProductPageCompWidget extends StatefulWidget {
  const PriceOnProductPageCompWidget({
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
      String? volume,
      String? xmlId,
      String? cutvolume,
      String? disc,
      String? userPrice,
      String? specPrice)? onChangeVolume;
  final Future Function(
          String? avail, String? disc, String? userPrice, String? specPrice)?
      firstState;

  @override
  State<PriceOnProductPageCompWidget> createState() =>
      _PriceOnProductPageCompWidgetState();
}

class _PriceOnProductPageCompWidgetState
    extends State<PriceOnProductPageCompWidget> {
  late PriceOnProductPageCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PriceOnProductPageCompModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.updatePage(() {
        _model.selectedOfferId = widget.offers?.first.id.toString();
        _model.selectedVolume = widget.offers!.first.volume;
        _model.selectedAvailable = widget.offers?.first.available;
        _model.volume = widget.offers?.first.volume;
        _model.cutvolume = functions.replaceStr(widget.offers!.first.volume);
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
        _model.selectedUserPrice,
        _model.selectedSpecPrice,
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
        Align(
          alignment: const AlignmentDirectional(-1.0, 0.0),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
            child: Text(
              'ОБЪЕМ, МЛ',
              textAlign: TextAlign.start,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    fontSize: 12.0,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyMediumFamily),
                  ),
            ),
          ),
        ),
        Builder(
          builder: (context) {
            final offersarray = widget.offers?.toList() ?? [];
            return Row(
              mainAxisSize: MainAxisSize.max,
              children: List.generate(offersarray.length, (offersarrayIndex) {
                final offersarrayItem = offersarray[offersarrayIndex];
                return InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    _model.updatePage(() {
                      _model.selectedOfferId = offersarrayItem.id.toString();
                      _model.selectedPriceR = offersarrayItem.rPrice.toString();
                      _model.selectedPriceI = offersarrayItem.iPrice.toString();
                      _model.selectedVolume =
                          functions.replaceStr2(offersarrayItem.volume);
                      _model.selectedAvailable = offersarrayItem.available;
                      _model.volume = offersarrayItem.volume;
                      _model.cutvolume =
                          functions.replaceStr(offersarrayItem.volume);
                      _model.selectedXmlVariant = offersarrayItem.xmlIDOffer;
                      _model.selectedDiscount = offersarrayItem.discValue;
                      _model.selectedSpecPrice =
                          offersarrayItem.specPrice.toString();
                    });
                    if (FFAppState().cardid != '') {
                      if (FFAppState().cardlevelname == 'Black') {
                        setState(() {
                          _model.selectedUserPrice =
                              offersarrayItem.blackPrice.toString();
                        });
                      } else if (FFAppState().cardlevelname == 'Gold') {
                        setState(() {
                          _model.selectedUserPrice =
                              offersarrayItem.goldPrice.toString();
                        });
                      } else if (FFAppState().cardlevelname == 'Infinity') {
                        setState(() {
                          _model.selectedUserPrice =
                              offersarrayItem.infinityPrice.toString();
                        });
                      } else {
                        setState(() {
                          _model.selectedUserPrice =
                              offersarrayItem.vipPrice.toString();
                        });
                      }
                    } else {
                      setState(() {
                        _model.selectedUserPrice =
                            offersarrayItem.blackPrice.toString();
                      });
                    }

                    await widget.onChangeVolume?.call(
                      _model.selectedAvailable,
                      _model.selectedPriceR,
                      _model.selectedPriceI,
                      _model.volume,
                      _model.selectedXmlVariant,
                      _model.cutvolume,
                      _model.selectedDiscount,
                      _model.selectedUserPrice,
                      _model.selectedSpecPrice,
                    );
                  },
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: functions.intToString(offersarrayItem.id) ==
                                _model.selectedOfferId
                            ? FlutterFlowTheme.of(context).tertiary
                            : FlutterFlowTheme.of(context).button4,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        functions.replaceStr(offersarrayItem.volume),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: functions
                                          .intToString(offersarrayItem.id) ==
                                      _model.selectedOfferId
                                  ? FlutterFlowTheme.of(context).tertiary
                                  : FlutterFlowTheme.of(context).thirdTextColor,
                              fontSize: 11.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ),
                  ),
                );
              }).divide(const SizedBox(width: 20.0)),
            );
          },
        ),
      ],
    );
  }
}
