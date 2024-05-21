import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'news_card_comp_model.dart';
export 'news_card_comp_model.dart';

class NewsCardCompWidget extends StatefulWidget {
  const NewsCardCompWidget({
    super.key,
    required this.news,
  });

  final dynamic news;

  @override
  State<NewsCardCompWidget> createState() => _NewsCardCompWidgetState();
}

class _NewsCardCompWidgetState extends State<NewsCardCompWidget> {
  late NewsCardCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewsCardCompModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        context.pushNamed(
          'NewsInfoPage',
          queryParameters: {
            'newsItemArray': serializeParam(
              widget.news,
              ParamType.JSON,
            ),
          }.withoutNulls,
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.network(
              getJsonField(
                widget.news,
                r'''$.image''',
              ).toString(),
              width: double.infinity,
              height: 210.0,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    getJsonField(
                      widget.news,
                      r'''$.name''',
                    ).toString(),
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyLargeFamily,
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyLargeFamily),
                        ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
