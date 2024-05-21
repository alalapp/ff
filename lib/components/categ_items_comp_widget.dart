import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'categ_items_comp_model.dart';
export 'categ_items_comp_model.dart';

class CategItemsCompWidget extends StatefulWidget {
  const CategItemsCompWidget({
    super.key,
    required this.child,
  });

  final List<dynamic>? child;

  @override
  State<CategItemsCompWidget> createState() => _CategItemsCompWidgetState();
}

class _CategItemsCompWidgetState extends State<CategItemsCompWidget> {
  late CategItemsCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategItemsCompModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(),
      child: Builder(
        builder: (context) {
          final childarr = widget.child!.toList();
          return ListView.builder(
            padding: EdgeInsets.zero,
            primary: false,
            scrollDirection: Axis.vertical,
            itemCount: childarr.length,
            itemBuilder: (context, childarrIndex) {
              final childarrItem = childarr[childarrIndex];
              return Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(30.0, 10.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(
                        'catalogGoodsPage',
                        queryParameters: {
                          'parId': serializeParam(
                            getJsonField(
                              childarrItem,
                              r'''$.id''',
                            ),
                            ParamType.int,
                          ),
                          'parName': serializeParam(
                            getJsonField(
                              childarrItem,
                              r'''$.name''',
                            ).toString(),
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
                    },
                    child: Text(
                      getJsonField(
                        childarrItem,
                        r'''$.name''',
                      ).toString(),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            fontSize: 15.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
