import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'order_delivery_page_model.dart';
export 'order_delivery_page_model.dart';

class OrderDeliveryPageWidget extends StatefulWidget {
  const OrderDeliveryPageWidget({super.key});

  @override
  State<OrderDeliveryPageWidget> createState() =>
      _OrderDeliveryPageWidgetState();
}

class _OrderDeliveryPageWidgetState extends State<OrderDeliveryPageWidget> {
  late OrderDeliveryPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderDeliveryPageModel());

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
        title: 'выбор способа доставки',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
                'способы и адрес доставки',
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
            body: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: 110.0,
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Text(
                      'выберите удобный  способ доставки',
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineMediumFamily,
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineMediumFamily),
                              ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                    child: StreamBuilder<List<DeliveryMethodsRecord>>(
                      stream: queryDeliveryMethodsRecord(
                        queryBuilder: (deliveryMethodsRecord) =>
                            deliveryMethodsRecord.where(
                          'active',
                          isEqualTo: true,
                        ),
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
                        List<DeliveryMethodsRecord>
                            containerDeliveryMethodsRecordList = snapshot.data!;
                        return Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: const BoxDecoration(),
                          child: Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: FlutterFlowRadioButton(
                              options: containerDeliveryMethodsRecordList
                                  .map((e) => e.deliveryName)
                                  .toList()
                                  .toList(),
                              onChanged: (val) async {
                                setState(() {});
                                _model.selFB =
                                    await queryDeliveryMethodsRecordOnce(
                                  queryBuilder: (deliveryMethodsRecord) =>
                                      deliveryMethodsRecord.where(
                                    'deliveryName',
                                    isEqualTo: _model.radioButtonValue,
                                  ),
                                  singleRecord: true,
                                ).then((s) => s.firstOrNull);
                                setState(() {
                                  _model.selectName =
                                      _model.selFB?.deliveryName;
                                  _model.selectID = _model.selFB?.deliveryID;
                                  _model.selectDesc = _model.selFB?.description;
                                  _model.selectImage = _model.selFB?.image;
                                });
                                if (_model.selectID == 1) {
                                  _model.apiResultsws1 =
                                      await ApiSulGroup.getCalculateCall.call(
                                    cityCode:
                                        FFAppState().orderData.deliveryCityID,
                                    tariffId:
                                        FFAppState().orderData.deliveryTariffID,
                                    kolProducts:
                                        FFAppState().BasketMain.kolProducts,
                                  );

                                  context.pushNamed('orderDeliverySetPVZ');

                                  FFAppState().update(() {
                                    FFAppState().updateOrderDataStruct(
                                      (e) => e
                                        ..deliveryCost = getJsonField(
                                          (_model.apiResultsws1?.jsonBody ??
                                              ''),
                                          r'''$.total_sum''',
                                        )
                                        ..deliveryDateMin = functions
                                            .calculateDateRange(
                                                getJsonField(
                                                  (_model.apiResultsws1
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.period_min''',
                                                ),
                                                getJsonField(
                                                  (_model.apiResultsws1
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.period_max''',
                                                ))
                                            .first
                                        ..deliveryDateMax = functions
                                            .calculateDateRange(
                                                getJsonField(
                                                  (_model.apiResultsws1
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.period_min''',
                                                ),
                                                getJsonField(
                                                  (_model.apiResultsws1
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.period_max''',
                                                ))
                                            .last,
                                    );
                                  });
                                  _model.apiResultsws3 =
                                      await ApiSulGroup.getCalculateCall.call(
                                    cityCode:
                                        FFAppState().orderData.deliveryCityID,
                                    tariffId:
                                        FFAppState().orderData.deliveryTariffID,
                                    kolProducts:
                                        FFAppState().BasketMain.kolProducts,
                                  );
                                  FFAppState().update(() {
                                    FFAppState().updateOrderDataStruct(
                                      (e) => e
                                        ..deliveryCost = getJsonField(
                                          (_model.apiResultsws3?.jsonBody ??
                                              ''),
                                          r'''$.total_sum''',
                                        )
                                        ..deliveryDateMin = functions
                                            .calculateDateRange(
                                                getJsonField(
                                                  (_model.apiResultsws3
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.period_min''',
                                                ),
                                                getJsonField(
                                                  (_model.apiResultsws3
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.period_max''',
                                                ))
                                            .first
                                        ..deliveryDateMax = functions
                                            .calculateDateRange(
                                                getJsonField(
                                                  (_model.apiResultsws3
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.period_min''',
                                                ),
                                                getJsonField(
                                                  (_model.apiResultsws3
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.period_max''',
                                                ))
                                            .last,
                                    );
                                  });
                                } else if (_model.selectID == 2) {
                                  FFAppState().update(() {
                                    FFAppState().updateOrderDataStruct(
                                      (e) => e
                                        ..issetAddress = true
                                        ..deliveryCity = FFAppState()
                                            .userProfile
                                            .address
                                            .city
                                        ..deliveryCityID = FFAppState()
                                            .userProfile
                                            .address
                                            .cityId
                                        ..deliveryAddress = FFAppState()
                                            .userProfile
                                            .address
                                            .address
                                        ..deliveryAddressAlias =
                                            _model.homeAlias
                                        ..deliveryID = _model.selectID
                                        ..deliveryName = _model.selectName
                                        ..deliveryTariffID =
                                            _model.tariffIDCourier,
                                    );
                                  });
                                  _model.apiResultsws2 =
                                      await ApiSulGroup.getCalculateCall.call(
                                    cityCode:
                                        FFAppState().orderData.deliveryCityID,
                                    tariffId:
                                        FFAppState().orderData.deliveryTariffID,
                                    kolProducts:
                                        FFAppState().BasketMain.kolProducts,
                                  );
                                  FFAppState().update(() {
                                    FFAppState().updateOrderDataStruct(
                                      (e) => e
                                        ..deliveryCost = getJsonField(
                                          (_model.apiResultsws2?.jsonBody ??
                                              ''),
                                          r'''$.total_sum''',
                                        )
                                        ..deliveryDateMin = functions
                                            .calculateDateRange(
                                                getJsonField(
                                                  (_model.apiResultsws2
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.period_min''',
                                                ),
                                                getJsonField(
                                                  (_model.apiResultsws2
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.period_max''',
                                                ))
                                            .first
                                        ..deliveryDateMax = functions
                                            .calculateDateRange(
                                                getJsonField(
                                                  (_model.apiResultsws2
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.period_min''',
                                                ),
                                                getJsonField(
                                                  (_model.apiResultsws2
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.period_max''',
                                                ))
                                            .last,
                                    );
                                  });
                                } else if (_model.selectID == 3) {
                                  FFAppState().update(() {
                                    FFAppState().updateOrderDataStruct(
                                      (e) => e
                                        ..issetAddress = true
                                        ..deliveryCity = _model.autoCity
                                        ..deliveryCityID = _model.autoCityID
                                        ..deliveryAddress = _model.autoAddress
                                        ..deliveryAddressAlias =
                                            _model.autoAlias
                                        ..deliveryID = _model.selectID
                                        ..deliveryName = _model.selectName
                                        ..deliveryCost = FFAppConstants.zerocode
                                        ..deliveryDateMin = functions
                                            .calculateDateRange(0, 0)
                                            .first
                                        ..deliveryDateMax = functions
                                            .calculateDateRange(0, 0)
                                            .last,
                                    );
                                  });
                                } else {
                                  FFAppState().update(() {
                                    FFAppState().updateOrderDataStruct(
                                      (e) => e
                                        ..issetAddress = true
                                        ..deliveryCity = FFAppState()
                                            .userProfile
                                            .address
                                            .city
                                        ..deliveryCityID = FFAppState()
                                            .userProfile
                                            .address
                                            .cityId
                                        ..deliveryAddress = FFAppState()
                                            .userProfile
                                            .address
                                            .address
                                        ..deliveryAddressAlias =
                                            _model.homeAlias
                                        ..deliveryID = _model.selectID
                                        ..deliveryName = _model.selectName,
                                    );
                                  });
                                  FFAppState().update(() {
                                    FFAppState().updateOrderDataStruct(
                                      (e) => e
                                        ..deliveryCost =
                                            FFAppConstants.zerocode,
                                    );
                                  });
                                }

                                setState(() {});
                              },
                              controller: _model.radioButtonValueController ??=
                                  FormFieldController<String>(null),
                              optionHeight: 38.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .labelMediumFamily),
                                  ),
                              selectedTextStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                              buttonPosition: RadioButtonPosition.left,
                              direction: Axis.vertical,
                              radioButtonColor:
                                  FlutterFlowTheme.of(context).primary,
                              inactiveRadioButtonColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              toggleable: false,
                              horizontalAlignment: WrapAlignment.start,
                              verticalAlignment: WrapCrossAlignment.start,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  height: 100.0,
                  decoration: const BoxDecoration(),
                  child: Visibility(
                    visible: _model.selectID != null,
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  _model.selectDesc != null &&
                                          _model.selectDesc != ''
                                      ? _model.selectDesc
                                      : '-',
                                  '-',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                      fontStyle: FontStyle.italic,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100.0,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (FFAppState().orderData.deliveryCity != '')
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    FFAppState().orderData.deliveryAddressAlias,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (FFAppState().orderData.deliveryAddressAlias != '')
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    '${FFAppState().orderData.deliveryCity}, ${FFAppState().orderData.deliveryAddress}',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  (FFAppState().orderData.deliveryCost == 0) ||
                                          (FFAppState().BasketMain.total > 5000)
                                      ? 'стоимость доставки: бесплатно'
                                      : 'стоимость доставки:${FFAppState().orderData.deliveryCost.toString()} ₽',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'дата доставки с:${dateTimeFormat(
                                    'yMMMd',
                                    FFAppState().orderData.deliveryDateMin,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  )} по: ${dateTimeFormat(
                                    'yMMMd',
                                    FFAppState().orderData.deliveryDateMax,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  )}',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 30.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        if (_model.selectID != null) {
                                          FFAppState().update(() {
                                            FFAppState().updateOrderDataStruct(
                                              (e) => e
                                                ..deliveryID = _model.selectID
                                                ..deliveryName =
                                                    _model.selectName
                                                ..issetDelivery = true,
                                            );
                                          });

                                          context.pushNamed(
                                            'orderPage',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType
                                                        .rightToLeft,
                                              ),
                                            },
                                          );
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Я дико извиняюсь, но вы не выбрали способ доставки :-(',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  fontSize: 15.0,
                                                ),
                                              ),
                                              duration:
                                                  const Duration(milliseconds: 2849),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                            ),
                                          );
                                        }
                                      },
                                      text: 'Выбрать доставку',
                                      options: FFButtonOptions(
                                        width: 250.0,
                                        height: 40.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily),
                                            ),
                                        elevation: 4.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
