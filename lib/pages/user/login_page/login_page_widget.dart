import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/nav_bar_custom_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_page_model.dart';
export 'login_page_model.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({
    super.key,
    this.code0,
  });

  final bool? code0;

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget>
    with TickerProviderStateMixin {
  late LoginPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.phoneLoginFieldTextController?.clear();
        _model.birthdateRegFieldTextController?.clear();
        _model.telRegFieldTextController?.clear();
        _model.fioRegFieldTextController?.clear();
      });
      setState(() {
        _model.userInfoLocal = null;
      });
      FFAppState().update(() {
        FFAppState().userIDsul = '';
        FFAppState().userIDfb = '';
        FFAppState().usertel = '';
        FFAppState().username = '';
        FFAppState().accumsaleamount = 0;
        FFAppState().cardlevelname = '';
        FFAppState().cardname = '';
        FFAppState().bonusbalance = 0;
        FFAppState().usergender = '';
        FFAppState().cardid = '';
        FFAppState().cardbarcode = '';
        FFAppState().appuserinfo = jsonDecode('{}');
        FFAppState().isUserHasinFB = 0;
        FFAppState().userbirthday = '';
        FFAppState().cardnextlevelname = '';
        FFAppState().ostatok = 0;
        FFAppState().cardnextlevelsumm = 0;
        FFAppState().goodLogin = false;
        FFAppState().goodsarray = [];
        FFAppState().badgecount = 0;
        FFAppState().goodsarrayID = [];
      });
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.phoneLoginFieldTextController ??= TextEditingController();
    _model.phoneLoginFieldFocusNode ??= FocusNode();

    _model.fioRegFieldTextController ??= TextEditingController();
    _model.fioRegFieldFocusNode ??= FocusNode();

    _model.telRegFieldTextController ??= TextEditingController();
    _model.telRegFieldFocusNode ??= FocusNode();

    _model.birthdateRegFieldTextController ??= TextEditingController();
    _model.birthdateRegFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.0, 80.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.8, 0.8),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'tabOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
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
        title: 'LoginPage',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 100.0,
                          decoration: const BoxDecoration(),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 0.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.asset(
                                          'assets/images/avatar211.png',
                                          width: 230.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 12.0, 12.0, 12.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          child: Container(
                            width: double.infinity,
                            height: 630.0,
                            constraints: const BoxConstraints(
                              maxWidth: double.infinity,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(0.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 0.0,
                              ),
                            ),
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 1.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: const Alignment(0.0, 0),
                                      child: TabBar(
                                        labelColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        unselectedLabelColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        labelPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                32.0, 0.0, 32.0, 0.0),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily),
                                            ),
                                        unselectedLabelStyle:
                                            FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmallFamily),
                                                ),
                                        indicatorColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                        indicatorWeight: 2.0,
                                        tabs: [
                                          const Tab(
                                            text: 'Войти',
                                          ),
                                          const Tab(
                                            text: 'Регистрация',
                                          ).animateOnPageLoad(animationsMap[
                                              'tabOnPageLoadAnimation']!),
                                        ],
                                        controller: _model.tabBarController,
                                        onTap: (i) async {
                                          [() async {}, () async {}][i]();
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: TabBarView(
                                        controller: _model.tabBarController,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, -0.5),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 20.0, 12.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  40.0),
                                                      child: Text(
                                                        'Если вы уже наш клиент:',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLargeFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelLargeFamily),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 25.0),
                                                    child: SizedBox(
                                                      width: double.infinity,
                                                      child: TextFormField(
                                                        controller: _model
                                                            .phoneLoginFieldTextController,
                                                        focusNode: _model
                                                            .phoneLoginFieldFocusNode,
                                                        autofocus: true,
                                                        textCapitalization:
                                                            TextCapitalization
                                                                .none,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText:
                                                              'Введите номер телефона',
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyLargeFamily,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                        18.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                  ),
                                                          hintText: '+7',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyLargeFamily,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                        18.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondary,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0),
                                                          ),
                                                          filled: true,
                                                          contentPadding:
                                                              const EdgeInsets.all(
                                                                  16.0),
                                                          prefixIcon: Icon(
                                                            Icons.phone,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 22.0,
                                                          ),
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyLargeFamily),
                                                                ),
                                                        keyboardType:
                                                            TextInputType.phone,
                                                        validator: _model
                                                            .phoneLoginFieldTextControllerValidator
                                                            .asValidator(
                                                                context),
                                                        inputFormatters: [
                                                          _model
                                                              .phoneLoginFieldMask
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  25.0,
                                                                  0.0,
                                                                  25.0),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          var shouldSetState =
                                                              false;
                                                          _model.getCodeResult =
                                                              await ApiSulGroup
                                                                  .getCodeCall
                                                                  .call(
                                                            userTel: _model
                                                                .phoneLoginFieldTextController
                                                                .text,
                                                          );
                                                          shouldSetState =
                                                              true;
                                                          if ((_model
                                                                  .getCodeResult
                                                                  ?.succeeded ??
                                                              true)) {
                                                            if (FFAppState()
                                                                    .code0 ==
                                                                getJsonField(
                                                                  (_model.getCodeResult
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                  r'''$.code''',
                                                                )) {
                                                              _model.isUserCreatedFB =
                                                                  await queryUsersRecordCount(
                                                                queryBuilder:
                                                                    (usersRecord) =>
                                                                        usersRecord
                                                                            .where(
                                                                  'email',
                                                                  isEqualTo:
                                                                      getJsonField(
                                                                    (_model.getCodeResult
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$.u_mail''',
                                                                  ).toString(),
                                                                ),
                                                              );
                                                              shouldSetState =
                                                                  true;
                                                              if (_model
                                                                      .isUserCreatedFB! >
                                                                  FFAppConstants
                                                                      .zerocode) {
                                                                FFAppState()
                                                                    .isUserHasinFB = 1;
                                                                FFAppState()
                                                                        .usertel =
                                                                    _model
                                                                        .phoneLoginFieldTextController
                                                                        .text;
                                                                FFAppState()
                                                                        .username =
                                                                    getJsonField(
                                                                  (_model.getCodeResult
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                  r'''$.u_name''',
                                                                ).toString();

                                                                context
                                                                    .pushNamed(
                                                                  'sendCodePage',
                                                                  queryParameters:
                                                                      {
                                                                    'userTel':
                                                                        serializeParam(
                                                                      _model
                                                                          .phoneLoginFieldTextController
                                                                          .text,
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'userMail':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        (_model.getCodeResult?.jsonBody ??
                                                                            ''),
                                                                        r'''$.u_mail''',
                                                                      ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'userPass':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        (_model.getCodeResult?.jsonBody ??
                                                                            ''),
                                                                        r'''$.u_pass''',
                                                                      ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'userName':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        (_model.getCodeResult?.jsonBody ??
                                                                            ''),
                                                                        r'''$.u_name''',
                                                                      ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                  }.withoutNulls,
                                                                  extra: <String,
                                                                      dynamic>{
                                                                    kTransitionInfoKey:
                                                                        const TransitionInfo(
                                                                      hasTransition:
                                                                          true,
                                                                      transitionType:
                                                                          PageTransitionType
                                                                              .topToBottom,
                                                                    ),
                                                                  },
                                                                );
                                                              } else {
                                                                FFAppState()
                                                                    .isUserHasinFB = 0;
                                                                FFAppState()
                                                                        .usertel =
                                                                    _model
                                                                        .phoneLoginFieldTextController
                                                                        .text;
                                                                FFAppState()
                                                                        .username =
                                                                    getJsonField(
                                                                  (_model.getCodeResult
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                  r'''$.u_name''',
                                                                ).toString();

                                                                context
                                                                    .pushNamed(
                                                                  'sendCodePageNew',
                                                                  queryParameters:
                                                                      {
                                                                    'userTel':
                                                                        serializeParam(
                                                                      _model
                                                                          .phoneLoginFieldTextController
                                                                          .text,
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'userMail':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        (_model.getCodeResult?.jsonBody ??
                                                                            ''),
                                                                        r'''$.u_mail''',
                                                                      ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'userPass':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        (_model.getCodeResult?.jsonBody ??
                                                                            ''),
                                                                        r'''$.u_pass''',
                                                                      ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'userName':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        (_model.getCodeResult?.jsonBody ??
                                                                            ''),
                                                                        r'''$.u_name''',
                                                                      ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                  }.withoutNulls,
                                                                  extra: <String,
                                                                      dynamic>{
                                                                    kTransitionInfoKey:
                                                                        const TransitionInfo(
                                                                      hasTransition:
                                                                          true,
                                                                      transitionType:
                                                                          PageTransitionType
                                                                              .topToBottom,
                                                                    ),
                                                                  },
                                                                );
                                                              }
                                                            } else {
                                                              if (shouldSetState) {
                                                                setState(() {});
                                                              }
                                                              return;
                                                            }
                                                          } else {
                                                            if (shouldSetState) {
                                                              setState(() {});
                                                            }
                                                            return;
                                                          }

                                                          if (shouldSetState) {
                                                            setState(() {});
                                                          }
                                                        },
                                                        text:
                                                            'Получить код по SMS',
                                                        options:
                                                            FFButtonOptions(
                                                          width: 250.0,
                                                          height: 44.0,
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          iconPadding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Open Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            'Open Sans'),
                                                                  ),
                                                          elevation: 20.0,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  if ((FFAppState().code114 ==
                                                          getJsonField(
                                                            (_model.getCodeResult
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.code''',
                                                          )) ||
                                                      (FFAppState().code110 ==
                                                          getJsonField(
                                                            (_model.getCodeResult
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.code''',
                                                          )))
                                                    Text(
                                                      'такой телефон не зарегистрирован',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                ],
                                              ).animateOnPageLoad(animationsMap[
                                                  'columnOnPageLoadAnimation']!),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10.0,
                                                                20.0,
                                                                10.0,
                                                                50.0),
                                                    child: Text(
                                                      'Еще не являетесь нашим клиентом? \nЗарегистрируйтесь и получите карту лояльности.\n\nПокупайте со скидкой,  копите бонусы, повышайте уровень карты и привилегий.',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .labelLargeFamily),
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 25.0),
                                                  child: SizedBox(
                                                    width: double.infinity,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .fioRegFieldTextController,
                                                      focusNode: _model
                                                          .fioRegFieldFocusNode,
                                                      autofocus: true,
                                                      autofillHints: const [
                                                        AutofillHints.familyName
                                                      ],
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .none,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            'Введите ФИО',
                                                        hintText: 'Ф.И.О.',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyLargeFamily),
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondary,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.0),
                                                        ),
                                                        filled: true,
                                                        contentPadding:
                                                            const EdgeInsets.all(
                                                                16.0),
                                                        prefixIcon: Icon(
                                                          Icons
                                                              .person_outline_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyLargeFamily),
                                                              ),
                                                      validator: _model
                                                          .fioRegFieldTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 25.0),
                                                  child: SizedBox(
                                                    width: double.infinity,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .telRegFieldTextController,
                                                      focusNode: _model
                                                          .telRegFieldFocusNode,
                                                      autofocus: true,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .none,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            'Введите номер телефона',
                                                        hintText: '+7',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyLargeFamily),
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondary,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.0),
                                                        ),
                                                        filled: true,
                                                        contentPadding:
                                                            const EdgeInsets.all(
                                                                16.0),
                                                        prefixIcon: Icon(
                                                          Icons.phone,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 22.0,
                                                        ),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyLargeFamily),
                                                              ),
                                                      keyboardType:
                                                          TextInputType.phone,
                                                      validator: _model
                                                          .telRegFieldTextControllerValidator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        _model.telRegFieldMask
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 10.0),
                                                  child: SizedBox(
                                                    width: double.infinity,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .birthdateRegFieldTextController,
                                                      focusNode: _model
                                                          .birthdateRegFieldFocusNode,
                                                      autofocus: true,
                                                      autofillHints: const [
                                                        AutofillHints.birthday
                                                      ],
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .none,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        isDense: false,
                                                        labelText:
                                                            'Введите вашу дату рождения',
                                                        hintText: 'ДД.ММ.ГГГГ',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyLargeFamily),
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondary,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.0),
                                                        ),
                                                        filled: true,
                                                        contentPadding:
                                                            const EdgeInsets.all(
                                                                16.0),
                                                        prefixIcon: Icon(
                                                          Icons
                                                              .date_range_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 22.0,
                                                        ),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyLargeFamily),
                                                              ),
                                                      keyboardType:
                                                          TextInputType
                                                              .datetime,
                                                      validator: _model
                                                          .birthdateRegFieldTextControllerValidator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        _model
                                                            .birthdateRegFieldMask
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 20.0,
                                                                0.0, 0.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        var shouldSetState =
                                                            false;
                                                        _model.getcodeResultreg =
                                                            await ApiSulGroup
                                                                .getCodeRegCall
                                                                .call(
                                                          userTel: _model
                                                              .telRegFieldTextController
                                                              .text,
                                                        );
                                                        shouldSetState = true;
                                                        if ((_model
                                                                .getcodeResultreg
                                                                ?.succeeded ??
                                                            true)) {
                                                          if (FFAppState()
                                                                  .code0 ==
                                                              getJsonField(
                                                                (_model.getcodeResultreg
                                                                        ?.jsonBody ??
                                                                    ''),
                                                                r'''$.code''',
                                                              )) {
                                                            setState(() {
                                                              FFAppState()
                                                                      .usertel =
                                                                  _model
                                                                      .telRegFieldTextController
                                                                      .text;
                                                              FFAppState()
                                                                      .username =
                                                                  _model
                                                                      .fioRegFieldTextController
                                                                      .text;
                                                              FFAppState()
                                                                      .userbirthday =
                                                                  _model
                                                                      .birthdateRegFieldTextController
                                                                      .text;
                                                            });

                                                            context.pushNamed(
                                                              'sendCodeRegPage',
                                                              queryParameters: {
                                                                'regUserTel':
                                                                    serializeParam(
                                                                  _model
                                                                      .telRegFieldTextController
                                                                      .text,
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'regUserFio':
                                                                    serializeParam(
                                                                  _model
                                                                      .fioRegFieldTextController
                                                                      .text,
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'regUserBd':
                                                                    serializeParam(
                                                                  _model
                                                                      .birthdateRegFieldTextController
                                                                      .text,
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'regUserPass':
                                                                    serializeParam(
                                                                  getJsonField(
                                                                    (_model.getcodeResultreg
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$.u_pass''',
                                                                  ).toString(),
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'regUserMail':
                                                                    serializeParam(
                                                                  getJsonField(
                                                                    (_model.getcodeResultreg
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$.u_mail''',
                                                                  ).toString(),
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                              }.withoutNulls,
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    const TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .rightToLeft,
                                                                ),
                                                              },
                                                            );
                                                          } else {
                                                            if (shouldSetState) {
                                                              setState(() {});
                                                            }
                                                            return;
                                                          }

                                                          if (shouldSetState) {
                                                            setState(() {});
                                                          }
                                                          return;
                                                        } else {
                                                          if (shouldSetState) {
                                                            setState(() {});
                                                          }
                                                          return;
                                                        }

                                                        if (shouldSetState) {
                                                          setState(() {});
                                                        }
                                                      },
                                                      text:
                                                          'Получить код по SMS',
                                                      options: FFButtonOptions(
                                                        width: 250.0,
                                                        height: 44.0,
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        iconPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyLargeFamily),
                                                                ),
                                                        elevation: 20.0,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                if ((FFAppState().code110 ==
                                                        getJsonField(
                                                          (_model.getcodeResultreg
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.code''',
                                                        )) ||
                                                    (FFAppState().code114 ==
                                                        getJsonField(
                                                          (_model.getcodeResultreg
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.code''',
                                                        )))
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  20.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Text(
                                                        'вы уже являетесь нашим клиентом. Перейдите во вкладку \"Войти\"',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMediumFamily),
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
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation']!),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: wrapWithModel(
                        model: _model.navBarCustomModel,
                        updateCallback: () => setState(() {}),
                        child: NavBarCustomWidget(
                          selectedPageIndex: FFAppState().basketItemsCount,
                          hidden: false,
                          showCentralButton: true,
                          onBasketchange: (countItems) async {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
