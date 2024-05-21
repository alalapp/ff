import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'filter_plusfind_comp_model.dart';
export 'filter_plusfind_comp_model.dart';

class FilterPlusfindCompWidget extends StatefulWidget {
  const FilterPlusfindCompWidget({
    super.key,
    required this.parameter1,
  });

  final int? parameter1;

  @override
  State<FilterPlusfindCompWidget> createState() =>
      _FilterPlusfindCompWidgetState();
}

class _FilterPlusfindCompWidgetState extends State<FilterPlusfindCompWidget> {
  late FilterPlusfindCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterPlusfindCompModel());

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
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 40.0,
            height: 40.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: FlutterFlowIconButton(
              borderRadius: 30.0,
              buttonSize: 60.0,
              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
              icon: Icon(
                Icons.tune,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 27.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ),
        ].divide(const SizedBox(width: 20.0)),
      ),
    );
  }
}
