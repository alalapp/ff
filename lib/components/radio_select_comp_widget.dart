import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'radio_select_comp_model.dart';
export 'radio_select_comp_model.dart';

class RadioSelectCompWidget extends StatefulWidget {
  const RadioSelectCompWidget({
    super.key,
    required this.returnSelected,
    required this.payments,
  });

  final Future Function(int? selectedID, String? selectedName,
      String? selectedDesc, String? selectedImage)? returnSelected;
  final List<String>? payments;

  @override
  State<RadioSelectCompWidget> createState() => _RadioSelectCompWidgetState();
}

class _RadioSelectCompWidgetState extends State<RadioSelectCompWidget> {
  late RadioSelectCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RadioSelectCompModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(-1.0, 0.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
        child: FlutterFlowRadioButton(
          options: widget.payments!.toList(),
          onChanged: (val) async {
            setState(() {});
            _model.selItem = await queryPaymentMethodsRecordOnce(
              queryBuilder: (paymentMethodsRecord) =>
                  paymentMethodsRecord.where(
                'paymentName',
                isEqualTo: _model.radioButtonValue,
              ),
              singleRecord: true,
            ).then((s) => s.firstOrNull);
            await widget.returnSelected?.call(
              _model.selItem?.paymentID,
              _model.selItem?.paymentName,
              _model.selItem?.description,
              _model.selItem?.image,
            );

            setState(() {});
          },
          controller: _model.radioButtonValueController ??=
              FormFieldController<String>(null),
          optionHeight: 32.0,
          textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                letterSpacing: 0.0,
                useGoogleFonts: GoogleFonts.asMap().containsKey(
                    FlutterFlowTheme.of(context).labelMediumFamily),
              ),
          selectedTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                letterSpacing: 0.0,
                useGoogleFonts: GoogleFonts.asMap()
                    .containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
              ),
          buttonPosition: RadioButtonPosition.left,
          direction: Axis.vertical,
          radioButtonColor: FlutterFlowTheme.of(context).primary,
          inactiveRadioButtonColor: FlutterFlowTheme.of(context).secondaryText,
          toggleable: true,
          horizontalAlignment: WrapAlignment.start,
          verticalAlignment: WrapCrossAlignment.start,
        ),
      ),
    );
  }
}
