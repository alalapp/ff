import '/backend/api_requests/api_calls.dart';
import '/components/object_info_dialog_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'order_delivery_set_p_v_z_model.dart';
export 'order_delivery_set_p_v_z_model.dart';

class OrderDeliverySetPVZWidget extends StatefulWidget {
  const OrderDeliverySetPVZWidget({super.key});

  @override
  State<OrderDeliverySetPVZWidget> createState() =>
      _OrderDeliverySetPVZWidgetState();
}

class _OrderDeliverySetPVZWidgetState extends State<OrderDeliverySetPVZWidget> {
  late OrderDeliverySetPVZModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderDeliverySetPVZModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.dPoints = await ApiSulGroup.getDeliveryPointsCall.call(
        action: 'getDeliveryPoints',
        cityCode: FFAppState().userProfile.address.cityId,
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'orderDeliverySetPVZ',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            resizeToAvoidBottomInset: false,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondary,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 57.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  size: 27.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              title: Text(
                'Page Title',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).headlineMediumFamily,
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).headlineMediumFamily),
                    ),
              ),
              actions: const [],
              centerTitle: true,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.infinity,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ),
                  Expanded(
                    child: Builder(
                      builder: (context) => FutureBuilder<ApiCallResponse>(
                        future: ApiSulGroup.getDeliveryPointsCall.call(
                          action: 'getDeliveryPoints',
                          cityCode: FFAppState().userProfile.address.cityId,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 150.0,
                                height: 150.0,
                                child: SpinKitRipple(
                                  color: FlutterFlowTheme.of(context).secondary,
                                  size: 150.0,
                                ),
                              ),
                            );
                          }
                          final googleMapGetDeliveryPointsResponse =
                              snapshot.data!;
                          return FlutterFlowGoogleMap(
                            controller: _model.googleMapsController,
                            onCameraIdle: (latLng) =>
                                _model.googleMapsCenter = latLng,
                            initialLocation: _model.googleMapsCenter ??=
                                FFAppState().userProfile.address.cityLat > 0.0
                                    ? functions.parseLatLngFromJson(
                                        FFAppState()
                                            .userProfile
                                            .address
                                            .cityLat
                                            .toString(),
                                        FFAppState()
                                            .userProfile
                                            .address
                                            .cityLon
                                            .toString())!
                                    : functions.parseLatLngFromJson(
                                        '56.8519', '60.6122')!,
                            markers: functions
                                .parseLatLngFromJsonList(
                                    googleMapGetDeliveryPointsResponse.jsonBody)
                                .map(
                                  (marker) => FlutterFlowMarker(
                                    marker.serialize(),
                                    marker,
                                    () async {
                                      await showDialog(
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: const AlignmentDirectional(
                                                    0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: GestureDetector(
                                              onTap: () => _model.unfocusNode
                                                      .canRequestFocus
                                                  ? FocusScope.of(context)
                                                      .requestFocus(
                                                          _model.unfocusNode)
                                                  : FocusScope.of(context)
                                                      .unfocus(),
                                              child: ObjectInfoDialogWidget(
                                                objectPVZ: functions
                                                    .getGoogleMapObject(
                                                        _model
                                                            .googleMapsCenter!,
                                                        googleMapGetDeliveryPointsResponse
                                                            .jsonBody,
                                                        10.0)!,
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => setState(() {}));
                                    },
                                  ),
                                )
                                .toList(),
                            markerColor: GoogleMarkerColor.green,
                            mapType: MapType.normal,
                            style: GoogleMapStyle.retro,
                            initialZoom: 14.0,
                            allowInteraction: true,
                            allowZoom: true,
                            showZoomControls: true,
                            showLocation: true,
                            showCompass: false,
                            showMapToolbar: false,
                            showTraffic: false,
                            centerMapOnMarkerTap: true,
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ),
                  const Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
