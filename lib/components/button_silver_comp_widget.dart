import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'button_silver_comp_model.dart';
export 'button_silver_comp_model.dart';

class ButtonSilverCompWidget extends StatefulWidget {
  const ButtonSilverCompWidget({
    super.key,
    String? textLabel,
  }) : textLabel = textLabel ?? 'Put a text here..';

  final String textLabel;

  @override
  State<ButtonSilverCompWidget> createState() => _ButtonSilverCompWidgetState();
}

class _ButtonSilverCompWidgetState extends State<ButtonSilverCompWidget> {
  late ButtonSilverCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonSilverCompModel());

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
      width: 120.0,
      height: 40.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).button1,
        borderRadius: BorderRadius.circular(100.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).button1,
          width: 1.0,
        ),
      ),
      child: Align(
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(3.0, 3.0, 3.0, 3.0),
          child: Text(
            widget.textLabel,
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).titleSmall.override(
                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 14.0,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).titleSmallFamily),
                  lineHeight: 0.8,
                ),
          ),
        ),
      ),
    );
  }
}
