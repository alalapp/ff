import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'filter_comp_model.dart';
export 'filter_comp_model.dart';

class FilterCompWidget extends StatefulWidget {
  const FilterCompWidget({
    super.key,
    required this.paramID,
    required this.paramNAME,
    required this.paramType,
    required this.paranAction,
  });

  final int? paramID;
  final String? paramNAME;
  final String? paramType;
  final Future Function(List<dynamic>? data)? paranAction;

  @override
  State<FilterCompWidget> createState() => _FilterCompWidgetState();
}

class _FilterCompWidgetState extends State<FilterCompWidget> {
  late FilterCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterCompModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {});

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

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
      child: Container(
        width: 80.0,
        height: 50.0,
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if (((FFAppState().fBrand +
                        FFAppState().fCountry +
                        FFAppState().fGender +
                        FFAppState().fParfumer +
                        FFAppState().fTypeProduct +
                        FFAppState().fFamily)
                    .toString()) !=
                '0')
              Container(
                width: 40.0,
                height: 20.0,
                decoration: BoxDecoration(
                  color: const Color(0xFFDFB487),
                  borderRadius: BorderRadius.circular(4.0),
                  shape: BoxShape.rectangle,
                ),
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    (int var1, int var2, int var3, int var4, int var5,
                            int var6) {
                      return '${var1 + var2 + var3 + var4 + var5 + var6}→';
                    }(
                        FFAppState().fBrand,
                        FFAppState().fCountry,
                        FFAppState().fGender,
                        FFAppState().fParfumer,
                        FFAppState().fTypeProduct,
                        FFAppState().fFamily),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
                        ),
                  ),
                ),
              ),
            Container(
              width: 40.0,
              height: 40.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: FlutterFlowIconButton(
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.tune,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 27.0,
                ),
                onPressed: () async {
                  context.pushNamed(
                    'propPage',
                    queryParameters: {
                      'parID': serializeParam(
                        widget.paramID,
                        ParamType.int,
                      ),
                      'parName': serializeParam(
                        widget.paramNAME,
                        ParamType.String,
                      ),
                      'parType': serializeParam(
                        'cat',
                        ParamType.String,
                      ),
                    }.withoutNulls,
                    extra: <String, dynamic>{
                      kTransitionInfoKey: const TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.leftToRight,
                      ),
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
