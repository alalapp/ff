import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'object_info_dialog_model.dart';
export 'object_info_dialog_model.dart';

class ObjectInfoDialogWidget extends StatefulWidget {
  const ObjectInfoDialogWidget({
    super.key,
    required this.objectPVZ,
  });

  final dynamic objectPVZ;

  @override
  State<ObjectInfoDialogWidget> createState() => _ObjectInfoDialogWidgetState();
}

class _ObjectInfoDialogWidgetState extends State<ObjectInfoDialogWidget> {
  late ObjectInfoDialogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ObjectInfoDialogModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.objectPVZ != null,
      child: Container(
        width: 330.0,
        height: 240.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(22.0),
          shape: BoxShape.rectangle,
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  getJsonField(
                    widget.objectPVZ,
                    r'''$.name''',
                  ).toString(),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ),
              Expanded(
                child: Text(
                  '${valueOrDefault<String>(
                    getJsonField(
                      widget.objectPVZ,
                      r'''$.location.city''',
                    )?.toString(),
                    '-',
                  )}, ${valueOrDefault<String>(
                    getJsonField(
                      widget.objectPVZ,
                      r'''$.location.address''',
                    )?.toString(),
                    '-',
                  )}',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ),
              Expanded(
                child: Text(
                  valueOrDefault<String>(
                    getJsonField(
                      widget.objectPVZ,
                      r'''$.work_time''',
                    )?.toString(),
                    '-',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        setState(() {
                          FFAppState().updateOrderDataStruct(
                            (e) => e
                              ..issetDelivery = true
                              ..deliveryCity = getJsonField(
                                widget.objectPVZ,
                                r'''$.location.city''',
                              ).toString()
                              ..deliveryCityID = getJsonField(
                                widget.objectPVZ,
                                r'''$.location.city_code''',
                              )
                              ..deliveryAddress = getJsonField(
                                widget.objectPVZ,
                                r'''$.location.address''',
                              ).toString()
                              ..deliveryAddressAlias = _model.adrAliad
                              ..deliveryID = FFAppConstants.one
                              ..deliveryName = _model.delName
                              ..deliveryTariffID = _model.tariffIDPVZ,
                          );
                        });
                        Navigator.pop(context);
                      },
                      text: 'Выбрать ПВЗ',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).tertiary,
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleSmallFamily,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
