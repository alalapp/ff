import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'prop_page_model.dart';
export 'prop_page_model.dart';

class PropPageWidget extends StatefulWidget {
  const PropPageWidget({
    super.key,
    this.parID,
    this.parName,
    String? parType,
  }) : parType = parType ?? 'cat';

  final int? parID;
  final String? parName;
  final String parType;

  @override
  State<PropPageWidget> createState() => _PropPageWidgetState();
}

class _PropPageWidgetState extends State<PropPageWidget> {
  late PropPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PropPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (_model.productNonFilteredArray.isEmpty) {
        setState(() {
          _model.productNonFilteredArray = [];
        });
        setState(() {
          _model.productNonFilteredArray =
              FFAppState().productsData.toList().cast<dynamic>();
        });
      }
      await actions.filterDataDict(
        context,
        _model.productNonFilteredArray.toList(),
      );
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
        title: 'propPage',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            endDrawer: SizedBox(
              width: double.infinity,
              child: Drawer(
                child: Stack(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 80.0),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Stack(
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  StickyHeader(
                                    overlapHeaders: false,
                                    header: Container(
                                      width: double.infinity,
                                      height: 120.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          15.0, 0.0, 40.0, 0.0),
                                                  child: FlutterFlowIconButton(
                                                    borderRadius: 20.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 40.0,
                                                    icon: Icon(
                                                      Icons.arrow_back,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 27.0,
                                                    ),
                                                    onPressed: () async {
                                                      if (scaffoldKey
                                                              .currentState!
                                                              .isDrawerOpen ||
                                                          scaffoldKey
                                                              .currentState!
                                                              .isEndDrawerOpen) {
                                                        Navigator.pop(context);
                                                      }
                                                    },
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 30.0, 0.0, 20.0),
                                                  child: Text(
                                                    () {
                                                      if (_model.currentProp ==
                                                          'family') {
                                                        return 'семейства ароматов';
                                                      } else if (_model
                                                              .currentProp ==
                                                          'parfumer') {
                                                        return 'парфюмер';
                                                      } else if (_model
                                                              .currentProp ==
                                                          'country') {
                                                        return 'страна';
                                                      } else if (_model
                                                              .currentProp ==
                                                          'product_type') {
                                                        return 'тип продукции';
                                                      } else if (_model
                                                              .currentProp ==
                                                          'brands') {
                                                        return 'бренды';
                                                      } else if (_model
                                                              .currentProp ==
                                                          'gender') {
                                                        return 'для кого';
                                                      } else if (_model
                                                              .currentProp ==
                                                          'notes') {
                                                        return 'ноты аромата';
                                                      } else {
                                                        return 'другое';
                                                      }
                                                    }(),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          if ((_model.currentProp ==
                                                  'brands') ||
                                              (_model.currentProp ==
                                                  'product_type') ||
                                              (_model.currentProp ==
                                                  'parfumer'))
                                            Expanded(
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: SizedBox(
                                                        width: double.infinity,
                                                        child: TextFormField(
                                                          controller: _model
                                                              .textController,
                                                          focusNode: _model
                                                              .textFieldFocusNode,
                                                          onChanged: (_) =>
                                                              EasyDebounce
                                                                  .debounce(
                                                            '_model.textController',
                                                            const Duration(
                                                                milliseconds:
                                                                    500),
                                                            () =>
                                                                setState(() {}),
                                                          ),
                                                          autofocus: true,
                                                          textCapitalization:
                                                              TextCapitalization
                                                                  .none,
                                                          textInputAction:
                                                              TextInputAction
                                                                  .search,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            labelText:
                                                                '    искать...',
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMediumFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryFixedDim,
                                                                      fontSize:
                                                                          15.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).labelMediumFamily),
                                                                    ),
                                                            alignLabelWithHint:
                                                                false,
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                            enabledBorder:
                                                                UnderlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                            ),
                                                            focusedBorder:
                                                                UnderlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .fon3MiddleGray,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                            ),
                                                            errorBorder:
                                                                UnderlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                UnderlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                            ),
                                                            suffixIcon: _model
                                                                    .textController!
                                                                    .text
                                                                    .isNotEmpty
                                                                ? InkWell(
                                                                    onTap:
                                                                        () async {
                                                                      _model
                                                                          .textController
                                                                          ?.clear();
                                                                      setState(
                                                                          () {});
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .clear,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          22.0,
                                                                    ),
                                                                  )
                                                                : null,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                          validator: _model
                                                              .textControllerValidator
                                                              .asValidator(
                                                                  context),
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
                                    content: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: SingleChildScrollView(
                                        primary: false,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              height: 697.0,
                                              decoration: const BoxDecoration(),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 20.0, 80.0),
                                                child: Builder(
                                                  builder: (context) {
                                                    final propItem = () {
                                                      if ((_model.currentProp != null && _model.currentProp != '') &&
                                                          (_model.currentProp ==
                                                              'family')) {
                                                        return FFAppState()
                                                            .familyProp2;
                                                      } else if ((_model.currentProp != null && _model.currentProp != '') &&
                                                          (_model.currentProp ==
                                                              'parfumer')) {
                                                        return FFAppState()
                                                            .parfumerProp2;
                                                      } else if ((_model.currentProp != null && _model.currentProp != '') &&
                                                          (_model.currentProp ==
                                                              'brands')) {
                                                        return FFAppState()
                                                            .brandProp2;
                                                      } else if ((_model.currentProp != null && _model.currentProp != '') &&
                                                          (_model.currentProp ==
                                                              'country')) {
                                                        return FFAppState()
                                                            .countryProp2;
                                                      } else if ((_model.currentProp != null &&
                                                              _model.currentProp !=
                                                                  '') &&
                                                          (_model.currentProp ==
                                                              'product_type')) {
                                                        return FFAppState()
                                                            .productTypeProp2;
                                                      } else if ((_model.currentProp != null &&
                                                              _model.currentProp !=
                                                                  '') &&
                                                          (_model.currentProp ==
                                                              'gender')) {
                                                        return FFAppState()
                                                            .genderProp2;
                                                      } else if ((_model.currentProp != null &&
                                                              _model.currentProp !=
                                                                  '') &&
                                                          (_model.currentProp ==
                                                              'notes')) {
                                                        return FFAppState()
                                                            .notesProp2;
                                                      } else if ((_model.currentProp !=
                                                                  null &&
                                                              _model.currentProp != '') &&
                                                          (_model.currentProp == 'collection')) {
                                                        return FFAppState()
                                                            .collectionProp2;
                                                      } else {
                                                        return FFAppState()
                                                            .yearProp2;
                                                      }
                                                    }()
                                                        .toList();
                                                    return ListView.builder(
                                                      padding: EdgeInsets.zero,
                                                      primary: false,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          propItem.length,
                                                      itemBuilder: (context,
                                                          propItemIndex) {
                                                        final propItemItem =
                                                            propItem[
                                                                propItemIndex];
                                                        return Visibility(
                                                          visible: functions.containsIString(
                                                                  _model
                                                                      .textController
                                                                      .text,
                                                                  propItemItem
                                                                      .value) ==
                                                              true,
                                                          child: Theme(
                                                            data: ThemeData(
                                                              checkboxTheme:
                                                                  const CheckboxThemeData(
                                                                visualDensity:
                                                                    VisualDensity
                                                                        .compact,
                                                                materialTapTargetSize:
                                                                    MaterialTapTargetSize
                                                                        .shrinkWrap,
                                                              ),
                                                              unselectedWidgetColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                            ),
                                                            child:
                                                                CheckboxListTile(
                                                              value: _model
                                                                          .checkboxListTileValueMap[
                                                                      propItemItem] ??=
                                                                  propItemItem
                                                                      .checked,
                                                              onChanged: (propItemItem
                                                                          .active ==
                                                                      false)
                                                                  ? null
                                                                  : (newValue) async {
                                                                      setState(() =>
                                                                          _model.checkboxListTileValueMap[propItemItem] =
                                                                              newValue!);
                                                                      if (newValue!) {
                                                                        if (_model.currentProp ==
                                                                            'brands') {
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().fBrand =
                                                                                FFAppState().fBrand + 1;
                                                                            FFAppState().updateBrandProp2AtIndex(
                                                                              propItemIndex,
                                                                              (e) => e..checked = true,
                                                                            );
                                                                          });
                                                                          _model.wresu =
                                                                              await actions.filterDictStart(
                                                                            context,
                                                                            _model.productNonFilteredArray.toList(),
                                                                            'brand',
                                                                          );
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().productsData =
                                                                                [];
                                                                          });
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().productsData =
                                                                                _model.wresu!.toList().cast<dynamic>();
                                                                          });
                                                                        } else if (_model.currentProp ==
                                                                            'family') {
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().updateFamilyProp2AtIndex(
                                                                              propItemIndex,
                                                                              (e) => e..checked = true,
                                                                            );
                                                                            FFAppState().fFamily =
                                                                                FFAppState().fFamily + 1;
                                                                          });
                                                                          _model.wresu1 =
                                                                              await actions.filterDictStart(
                                                                            context,
                                                                            _model.productNonFilteredArray.toList(),
                                                                            'family',
                                                                          );
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().productsData =
                                                                                [];
                                                                          });
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().productsData =
                                                                                _model.wresu1!.toList().cast<dynamic>();
                                                                          });
                                                                        } else if (_model.currentProp ==
                                                                            'gender') {
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().fGender =
                                                                                FFAppState().fGender + 1;
                                                                            FFAppState().updateGenderProp2AtIndex(
                                                                              propItemIndex,
                                                                              (e) => e..checked = true,
                                                                            );
                                                                          });
                                                                          _model.wresu22 =
                                                                              await actions.filterDictStart(
                                                                            context,
                                                                            _model.productNonFilteredArray.toList(),
                                                                            'gender',
                                                                          );
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().productsData =
                                                                                [];
                                                                          });
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().productsData =
                                                                                _model.wresu22!.toList().cast<dynamic>();
                                                                          });
                                                                        } else if (_model.currentProp ==
                                                                            'parfumer') {
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().fParfumer =
                                                                                FFAppState().fParfumer + 1;
                                                                            FFAppState().updateParfumerProp2AtIndex(
                                                                              propItemIndex,
                                                                              (e) => e..checked = true,
                                                                            );
                                                                          });
                                                                          _model.wresu3 =
                                                                              await actions.filterDictStart(
                                                                            context,
                                                                            _model.productNonFilteredArray.toList(),
                                                                            'parfumer',
                                                                          );
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().productsData =
                                                                                [];
                                                                          });
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().productsData =
                                                                                _model.wresu3!.toList().cast<dynamic>();
                                                                          });
                                                                        } else if (_model.currentProp ==
                                                                            'country') {
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().fCountry =
                                                                                FFAppState().fCountry + 1;
                                                                            FFAppState().updateCountryProp2AtIndex(
                                                                              propItemIndex,
                                                                              (e) => e..checked = true,
                                                                            );
                                                                          });
                                                                          _model.wresu4 =
                                                                              await actions.filterDictStart(
                                                                            context,
                                                                            _model.productNonFilteredArray.toList(),
                                                                            'country',
                                                                          );
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().productsData =
                                                                                [];
                                                                          });
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().productsData =
                                                                                _model.wresu4!.toList().cast<dynamic>();
                                                                          });
                                                                        } else {
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().fTypeProduct =
                                                                                FFAppState().fTypeProduct + 1;
                                                                            FFAppState().updateProductTypeProp2AtIndex(
                                                                              propItemIndex,
                                                                              (e) => e..checked = true,
                                                                            );
                                                                          });
                                                                          _model.wresu5 =
                                                                              await actions.filterDictStart(
                                                                            context,
                                                                            _model.productNonFilteredArray.toList(),
                                                                            'type_product',
                                                                          );
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().productsData =
                                                                                [];
                                                                          });
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().productsData =
                                                                                _model.wresu5!.toList().cast<dynamic>();
                                                                          });
                                                                        }

                                                                        setState(
                                                                            () {});
                                                                      } else {
                                                                        if (_model.currentProp ==
                                                                            'brands') {
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().fBrand =
                                                                                FFAppState().fBrand + -1;
                                                                            FFAppState().updateBrandProp2AtIndex(
                                                                              propItemIndex,
                                                                              (e) => e..checked = !true,
                                                                            );
                                                                          });
                                                                          _model.xresu =
                                                                              await actions.filterDictStart(
                                                                            context,
                                                                            _model.productNonFilteredArray.toList(),
                                                                            'brand',
                                                                          );
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().productsData =
                                                                                [];
                                                                          });
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().productsData =
                                                                                _model.xresu!.toList().cast<dynamic>();
                                                                          });
                                                                        } else if (_model.currentProp ==
                                                                            'family') {
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().updateFamilyProp2AtIndex(
                                                                              propItemIndex,
                                                                              (e) => e..checked = !true,
                                                                            );
                                                                            FFAppState().fFamily =
                                                                                FFAppState().fFamily + -1;
                                                                          });
                                                                          _model.xresu1 =
                                                                              await actions.filterDictStart(
                                                                            context,
                                                                            _model.productNonFilteredArray.toList(),
                                                                            'family',
                                                                          );
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().productsData =
                                                                                [];
                                                                          });
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().productsData =
                                                                                _model.xresu1!.toList().cast<dynamic>();
                                                                          });
                                                                        } else if (_model.currentProp ==
                                                                            'gender') {
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().fGender =
                                                                                FFAppState().fGender + -1;
                                                                            FFAppState().updateGenderProp2AtIndex(
                                                                              propItemIndex,
                                                                              (e) => e..checked = !true,
                                                                            );
                                                                          });
                                                                          _model.xresu2 =
                                                                              await actions.filterDictStart(
                                                                            context,
                                                                            _model.productNonFilteredArray.toList(),
                                                                            'gender',
                                                                          );
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().productsData =
                                                                                [];
                                                                          });
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().productsData =
                                                                                _model.xresu2!.toList().cast<dynamic>();
                                                                          });
                                                                        } else if (_model.currentProp ==
                                                                            'parfumer') {
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().fParfumer =
                                                                                FFAppState().fParfumer + -1;
                                                                            FFAppState().updateParfumerProp2AtIndex(
                                                                              propItemIndex,
                                                                              (e) => e..checked = !true,
                                                                            );
                                                                          });
                                                                          _model.xresu3 =
                                                                              await actions.filterDictStart(
                                                                            context,
                                                                            _model.productNonFilteredArray.toList(),
                                                                            'parfumer',
                                                                          );
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().productsData =
                                                                                [];
                                                                          });
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().productsData =
                                                                                _model.xresu3!.toList().cast<dynamic>();
                                                                          });
                                                                        } else if (_model.currentProp ==
                                                                            'country') {
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().fCountry =
                                                                                FFAppState().fCountry + -1;
                                                                            FFAppState().updateCountryProp2AtIndex(
                                                                              propItemIndex,
                                                                              (e) => e..checked = !true,
                                                                            );
                                                                          });
                                                                          _model.xresu4 =
                                                                              await actions.filterDictStart(
                                                                            context,
                                                                            _model.productNonFilteredArray.toList(),
                                                                            'country',
                                                                          );
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().productsData =
                                                                                [];
                                                                          });
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().productsData =
                                                                                _model.xresu4!.toList().cast<dynamic>();
                                                                          });
                                                                        } else {
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().fTypeProduct =
                                                                                FFAppState().fTypeProduct + -1;
                                                                            FFAppState().updateProductTypeProp2AtIndex(
                                                                              propItemIndex,
                                                                              (e) => e..checked = !true,
                                                                            );
                                                                          });
                                                                          _model.xresu5 =
                                                                              await actions.filterDictStart(
                                                                            context,
                                                                            _model.productNonFilteredArray.toList(),
                                                                            'type_product',
                                                                          );
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().productsData =
                                                                                [];
                                                                          });
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().productsData =
                                                                                _model.xresu5!.toList().cast<dynamic>();
                                                                          });
                                                                        }

                                                                        setState(
                                                                            () {});
                                                                      }
                                                                    },
                                                              title: Text(
                                                                propItemItem
                                                                    .value,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleLargeFamily,
                                                                      color: propItemItem.active
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .primaryText
                                                                          : FlutterFlowTheme.of(context)
                                                                              .fon3MiddleGray,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).titleLargeFamily),
                                                                    ),
                                                              ),
                                                              tileColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              checkColor: (propItemItem
                                                                          .active ==
                                                                      false)
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .fon3MiddleGray
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                              dense: true,
                                                              controlAffinity:
                                                                  ListTileControlAffinity
                                                                      .trailing,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          ]
                                              .divide(const SizedBox(height: 15.0))
                                              .addToEnd(
                                                  const SizedBox(height: 150.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ].addToEnd(const SizedBox(height: 100.0)),
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
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 57.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 27.0,
                ),
                onPressed: () async {
                  if (widget.parType == 'cat') {
                    context.goNamed(
                      'catalogGoodsPage',
                      queryParameters: {
                        'parId': serializeParam(
                          widget.parID,
                          ParamType.int,
                        ),
                        'parName': serializeParam(
                          widget.parName,
                          ParamType.String,
                        ),
                        'from': serializeParam(
                          'backPropPage',
                          ParamType.String,
                        ),
                      }.withoutNulls,
                      extra: <String, dynamic>{
                        kTransitionInfoKey: const TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.bottomToTop,
                        ),
                      },
                    );
                  } else {
                    context.goNamed(
                      'brandsGoodsPage',
                      queryParameters: {
                        'parId': serializeParam(
                          widget.parID,
                          ParamType.int,
                        ),
                        'parName': serializeParam(
                          widget.parName,
                          ParamType.String,
                        ),
                        'from': serializeParam(
                          'backPropPage',
                          ParamType.String,
                        ),
                      }.withoutNulls,
                      extra: <String, dynamic>{
                        kTransitionInfoKey: const TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.bottomToTop,
                        ),
                      },
                    );
                  }
                },
              ),
              title: Text(
                'фильтры',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
              ),
              actions: [
                Visibility(
                  visible: (FFAppState().fFamily +
                              FFAppState().fBrand +
                              FFAppState().fCountry +
                              FFAppState().fTypeProduct +
                              FFAppState().fGender +
                              FFAppState().fParfumer)
                          .toString() !=
                      '0',
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            _model.productNonFilteredArray = [];
                          });
                          await actions.refreshPropDict(
                            context,
                          );
                          if (widget.parType != 'cat') {
                            _model.refreshdatares1 =
                                await ApiSulGroup.getProductsNewCall.call(
                              bypar: 'bybrand',
                              id: widget.parID,
                            );
                            FFAppState().update(() {
                              FFAppState().productsData =
                                  (_model.refreshdatares1?.jsonBody ?? '')
                                      .toList()
                                      .cast<dynamic>();
                              FFAppState().totalFilteredItems = ApiSulGroup
                                  .getProductsNewCall
                                  .id(
                                    (_model.refreshdatares1?.jsonBody ?? ''),
                                  )!
                                  .length;
                            });
                            setState(() {
                              _model.productNonFilteredArray =
                                  (_model.refreshdatares1?.jsonBody ?? '')
                                      .toList()
                                      .cast<dynamic>();
                            });
                          } else {
                            _model.refreshdatares =
                                await ApiSulGroup.getProductsNewCall.call(
                              bypar: 'bycategory',
                              id: widget.parID,
                            );
                            FFAppState().update(() {
                              FFAppState().productsData =
                                  (_model.refreshdatares?.jsonBody ?? '')
                                      .toList()
                                      .cast<dynamic>();
                              FFAppState().totalFilteredItems =
                                  ApiSulGroup.getProductsNewCall
                                      .id(
                                        (_model.refreshdatares?.jsonBody ?? ''),
                                      )!
                                      .length;
                            });
                            setState(() {
                              _model.productNonFilteredArray =
                                  (_model.refreshdatares?.jsonBody ?? '')
                                      .toList()
                                      .cast<dynamic>();
                            });
                          }

                          FFAppState().update(() {
                            FFAppState().yearProp2 = FFAppState()
                                .yearPropList
                                .toList()
                                .cast<PropertyValuesStruct>();
                            FFAppState().brandProp2 = FFAppState()
                                .brandPropList
                                .toList()
                                .cast<PropertyValuesStruct>();
                            FFAppState().countryProp2 = FFAppState()
                                .countryPropList
                                .toList()
                                .cast<PropertyValuesStruct>();
                            FFAppState().productTypeProp2 = FFAppState()
                                .productTypePropList
                                .toList()
                                .cast<PropertyValuesStruct>();
                            FFAppState().genderProp2 = FFAppState()
                                .genderPropList
                                .toList()
                                .cast<PropertyValuesStruct>();
                            FFAppState().notesProp2 = FFAppState()
                                .notesPropList
                                .toList()
                                .cast<PropertyValuesStruct>();
                            FFAppState().parfumerProp2 = FFAppState()
                                .parfumerPropList
                                .toList()
                                .cast<PropertyValuesStruct>();
                            FFAppState().collectionProp2 = FFAppState()
                                .collectionPropList
                                .toList()
                                .cast<PropertyValuesStruct>();
                            FFAppState().familyProp2 = FFAppState()
                                .familyPropList
                                .toList()
                                .cast<PropertyValuesStruct>();
                          });
                          await actions.filterDataDict(
                            context,
                            _model.productNonFilteredArray.toList(),
                          );

                          setState(() {});
                        },
                        child: Text(
                          'очистить',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
              centerTitle: true,
              elevation: 0.0,
            ),
            body: Align(
              alignment: const AlignmentDirectional(0.0, -1.0),
              child: Stack(
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(15.0, 30.0, 15.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: SizedBox(
                              width: 330.0,
                              height: 100.0,
                              child: custom_widgets.RangeSliderWidget(
                                width: 330.0,
                                height: 100.0,
                                min: FFAppState().startbase,
                                max: FFAppState().endbase,
                                start: FFAppState().start,
                                end: FFAppState().end,
                                divisions: 5000,
                                textColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                sliderColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                thumbColor:
                                    FlutterFlowTheme.of(context).tertiary,
                                inactiveTrackColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                showLabels: true,
                                showRangeLabels: true,
                                minLabel: 'от ',
                                maxLabel: 'до ',
                                labelFontSize: 12.0,
                                valueFontSize: 14.0,
                                isEnabled: true,
                              ),
                            ),
                          ),
                          Stack(
                            children: [
                              if (widget.parType != 'brand')
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setState(() {
                                      _model.currentProp = 'brands';
                                    });
                                    setState(() {
                                      _model.textController?.clear();
                                    });
                                    scaffoldKey.currentState!.openEndDrawer();
                                  },
                                  child: ListTile(
                                    title: Text(
                                      'бренд',
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleLargeFamily,
                                            fontSize: 15.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleLargeFamily),
                                          ),
                                    ),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 14.0,
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    dense: false,
                                  ),
                                ),
                              if (FFAppState().fBrand > 0)
                                Align(
                                  alignment: const AlignmentDirectional(0.35, 0.08),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: Container(
                                      width: 20.0,
                                      height: 20.0,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFDFB487),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            FFAppState().fBrand.toString(),
                                            '0',
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          Stack(
                            children: [
                              if (widget.parType != 'brand')
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setState(() {
                                      _model.currentProp = 'country';
                                    });
                                    scaffoldKey.currentState!.openEndDrawer();
                                  },
                                  child: ListTile(
                                    title: Text(
                                      'страна',
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleLargeFamily,
                                            fontSize: 15.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleLargeFamily),
                                          ),
                                    ),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 14.0,
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    dense: false,
                                  ),
                                ),
                              if (FFAppState().fCountry > 0)
                                Align(
                                  alignment: const AlignmentDirectional(0.35, 0.08),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: Container(
                                      width: 20.0,
                                      height: 20.0,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFDFB487),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            FFAppState().fCountry.toString(),
                                            '0',
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          Stack(
                            children: [
                              if (FFAppState().isProductTypeProp)
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setState(() {
                                      _model.currentProp = 'product_type';
                                    });
                                    setState(() {
                                      _model.textController?.clear();
                                    });
                                    scaffoldKey.currentState!.openEndDrawer();
                                  },
                                  child: ListTile(
                                    title: Text(
                                      'тип продукции',
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleLargeFamily,
                                            fontSize: 15.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleLargeFamily),
                                          ),
                                    ),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 14.0,
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    dense: false,
                                  ),
                                ),
                              if (FFAppState().fTypeProduct > 0)
                                Align(
                                  alignment: const AlignmentDirectional(0.35, 0.08),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: Container(
                                      width: 20.0,
                                      height: 20.0,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFD29C63),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            FFAppState()
                                                .fTypeProduct
                                                .toString(),
                                            '0',
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          if (widget.parType != 'brand')
                            Divider(
                              thickness: 1.0,
                              indent: 20.0,
                              endIndent: 20.0,
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          Stack(
                            children: [
                              if (FFAppState().isGenderProp)
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setState(() {
                                      _model.currentProp = 'gender';
                                    });
                                    scaffoldKey.currentState!.openEndDrawer();
                                  },
                                  child: ListTile(
                                    title: Text(
                                      'для кого',
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleLargeFamily,
                                            fontSize: 15.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleLargeFamily),
                                          ),
                                    ),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 14.0,
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    dense: false,
                                  ),
                                ),
                              if (FFAppState().fGender > 0)
                                Align(
                                  alignment: const AlignmentDirectional(0.35, 0.08),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: Container(
                                      width: 20.0,
                                      height: 20.0,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFD29C63),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            FFAppState().fGender.toString(),
                                            '0',
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          Stack(
                            children: [
                              if (FFAppState().isParfumerProp)
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setState(() {
                                      _model.currentProp = 'parfumer';
                                    });
                                    setState(() {
                                      _model.textController?.clear();
                                    });
                                    scaffoldKey.currentState!.openEndDrawer();
                                  },
                                  child: ListTile(
                                    title: Text(
                                      'парфюмер',
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleLargeFamily,
                                            fontSize: 15.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleLargeFamily),
                                          ),
                                    ),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 14.0,
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    dense: false,
                                  ),
                                ),
                              if (FFAppState().fParfumer > 0)
                                Align(
                                  alignment: const AlignmentDirectional(0.35, 0.08),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: Container(
                                      width: 20.0,
                                      height: 20.0,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFD29C63),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            FFAppState().fParfumer.toString(),
                                            '0',
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          Stack(
                            children: [
                              if (FFAppState().isFamilyProp)
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setState(() {
                                      _model.currentProp = 'family';
                                    });
                                    scaffoldKey.currentState!.openEndDrawer();
                                  },
                                  child: ListTile(
                                    title: Text(
                                      'семество ароматов',
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleLargeFamily,
                                            fontSize: 15.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleLargeFamily),
                                          ),
                                    ),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 14.0,
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    dense: false,
                                  ),
                                ),
                              if (FFAppState().fFamily > 0)
                                Align(
                                  alignment: const AlignmentDirectional(0.35, 0.08),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: Container(
                                      width: 20.0,
                                      height: 20.0,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFD29C63),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            FFAppState().fFamily.toString(),
                                            '0',
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 30.0, 0.0, 20.0),
                              child: Text(
                                'сортировать:',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .headlineSmallFamily,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmallFamily),
                                    ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                25.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: FlutterFlowRadioButton(
                                          options: [
                                            'по наименованию',
                                            'по цене'
                                          ].toList(),
                                          onChanged: (val) async {
                                            setState(() {});
                                            if (_model.sortRadioButtonValue ==
                                                'по наименованию') {
                                              FFAppState().update(() {
                                                FFAppState()
                                                    .updateBrandfilterStruct(
                                                  (e) => e..sortByName = true,
                                                );
                                              });
                                              FFAppState().update(() {
                                                FFAppState().productsData =
                                                    functions
                                                        .sortProducts(
                                                            FFAppState()
                                                                .productsData
                                                                .toList(),
                                                            'name')
                                                        .toList()
                                                        .cast<dynamic>();
                                              });
                                            } else {
                                              FFAppState().update(() {
                                                FFAppState()
                                                    .updateBrandfilterStruct(
                                                  (e) => e..sortByName = false,
                                                );
                                              });
                                              FFAppState().update(() {
                                                FFAppState().productsData =
                                                    functions
                                                        .sortProducts(
                                                            FFAppState()
                                                                .productsData
                                                                .toList(),
                                                            'min_price')
                                                        .toList()
                                                        .cast<dynamic>();
                                              });
                                            }
                                          },
                                          controller: _model
                                                  .sortRadioButtonValueController ??=
                                              FormFieldController<String>(
                                                  FFAppState()
                                                          .brandfilter
                                                          .sortByName
                                                      ? 'по наименованию'
                                                      : 'по цене'),
                                          optionHeight: 32.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMediumFamily),
                                              ),
                                          selectedTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily),
                                                  ),
                                          buttonPosition:
                                              RadioButtonPosition.left,
                                          direction: Axis.horizontal,
                                          radioButtonColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiary,
                                          inactiveRadioButtonColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          toggleable: true,
                                          horizontalAlignment:
                                              WrapAlignment.start,
                                          verticalAlignment:
                                              WrapCrossAlignment.start,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 40.0, 20.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: SwitchListTile.adaptive(
                                    value:
                                        _model.availableSwitchListTileValue1 ??=
                                            FFAppState()
                                                        .brandfilter
                                                        .showUnavailable ==
                                                    FFAppConstants.available
                                                ? false
                                                : true,
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.availableSwitchListTileValue1 =
                                              newValue);
                                      if (newValue) {
                                        FFAppState().update(() {
                                          FFAppState().updateBrandfilterStruct(
                                            (e) => e
                                              ..showUnavailable =
                                                  FFAppConstants.unavailable,
                                          );
                                        });
                                        _model.wresu55 =
                                            await actions.filterDictStart(
                                          context,
                                          _model.productNonFilteredArray
                                              .toList(),
                                          'brand',
                                        );
                                        FFAppState().update(() {
                                          FFAppState().productsData = [];
                                        });
                                        FFAppState().update(() {
                                          FFAppState().productsData = _model
                                              .wresu55!
                                              .toList()
                                              .cast<dynamic>();
                                        });

                                        setState(() {});
                                      } else {
                                        FFAppState().update(() {
                                          FFAppState().updateBrandfilterStruct(
                                            (e) => e
                                              ..showUnavailable =
                                                  FFAppConstants.available,
                                          );
                                        });
                                        _model.xresu55 =
                                            await actions.filterDictStart(
                                          context,
                                          _model.productNonFilteredArray
                                              .toList(),
                                          'brand',
                                        );
                                        FFAppState().update(() {
                                          FFAppState().productsData = [];
                                        });
                                        FFAppState().update(() {
                                          FFAppState().productsData = _model
                                              .xresu55!
                                              .toList()
                                              .cast<dynamic>();
                                        });

                                        setState(() {});
                                      }
                                    },
                                    title: Text(
                                      ' в наличии',
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleLargeFamily,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w300,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleLargeFamily),
                                          ),
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    activeColor:
                                        FlutterFlowTheme.of(context).secondary,
                                    activeTrackColor:
                                        FlutterFlowTheme.of(context).tertiary,
                                    dense: true,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 20.0, 150.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: SwitchListTile.adaptive(
                                    value:
                                        _model.availableSwitchListTileValue2 ??=
                                            FFAppState()
                                                        .brandfilter
                                                        .showUnavailable ==
                                                    'Y'
                                                ? true
                                                : false,
                                    onChanged: (widget.parID != 77777)
                                        ? null
                                        : (newValue) async {
                                            setState(() => _model
                                                    .availableSwitchListTileValue2 =
                                                newValue);
                                            if (newValue) {
                                              setState(() {
                                                FFAppState()
                                                    .updateBrandfilterStruct(
                                                  (e) => e
                                                    ..showUnavailable =
                                                        FFAppConstants
                                                            .available,
                                                );
                                              });
                                            } else {
                                              setState(() {
                                                FFAppState()
                                                    .updateBrandfilterStruct(
                                                  (e) => e
                                                    ..showUnavailable =
                                                        FFAppConstants
                                                            .unavailable,
                                                );
                                              });
                                            }
                                          },
                                    title: Text(
                                      'со скидкой',
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleLargeFamily,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w300,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleLargeFamily),
                                          ),
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    activeColor:
                                        FlutterFlowTheme.of(context).secondary,
                                    activeTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    dense: true,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: Stack(
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 30.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (widget.parType == 'cat') {
                                    context.pushNamed(
                                      'catalogGoodsPage',
                                      queryParameters: {
                                        'parId': serializeParam(
                                          widget.parID,
                                          ParamType.int,
                                        ),
                                        'parName': serializeParam(
                                          widget.parName,
                                          ParamType.String,
                                        ),
                                        'from': serializeParam(
                                          'propPage',
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.topToBottom,
                                        ),
                                      },
                                    );
                                  } else {
                                    context.pushNamed(
                                      'brandsGoodsPage',
                                      queryParameters: {
                                        'parId': serializeParam(
                                          widget.parID,
                                          ParamType.int,
                                        ),
                                        'parName': serializeParam(
                                          widget.parName,
                                          ParamType.String,
                                        ),
                                        'from': serializeParam(
                                          'propPage',
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.topToBottom,
                                        ),
                                      },
                                    );
                                  }
                                },
                                text: FFAppState().totalFilteredItems > 0
                                    ? ((int var1) {
                                        return ' Показать $var1 товар (ов)';
                                      }(FFAppState().totalFilteredItems))
                                    : '0 товаров по фильтру',
                                options: FFButtonOptions(
                                  width: MediaQuery.sizeOf(context).width * 0.8,
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleSmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
