import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'send_code_page_model.dart';
export 'send_code_page_model.dart';

class SendCodePageWidget extends StatefulWidget {
  const SendCodePageWidget({
    super.key,
    required this.userTel,
    required this.userMail,
    required this.userPass,
    required this.userName,
  });

  final String? userTel;
  final String? userMail;
  final String? userPass;
  final String? userName;

  @override
  State<SendCodePageWidget> createState() => _SendCodePageWidgetState();
}

class _SendCodePageWidgetState extends State<SendCodePageWidget> {
  late SendCodePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SendCodePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().codeerr = 112;
      });
    });

    _model.codeTxtTextController ??= TextEditingController();
    _model.codeTxtFocusNode ??= FocusNode();

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
        title: 'sendCodePage',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(60.0),
              child: AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                automaticallyImplyLeading: false,
                leading: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    context.goNamed(
                      'LoginPage',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: const TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.leftToRight,
                        ),
                      },
                    );
                  },
                ),
                title: Text(
                  'Введите код авторизации',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).headlineMediumFamily,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).headlineMediumFamily),
                      ),
                ),
                actions: const [],
                centerTitle: true,
              ),
            ),
            body: SafeArea(
              top: true,
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 20.0, 12.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller: _model.codeTxtTextController,
                                      focusNode: _model.codeTxtFocusNode,
                                      autofocus: true,
                                      autofillHints: const [
                                        AutofillHints.oneTimeCode
                                      ],
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'код',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLargeFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLargeFamily),
                                            ),
                                        hintText: '****',
                                        hintStyle: FlutterFlowTheme.of(context)
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
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        filled: true,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelLargeFamily,
                                            fontSize: 24.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .labelLargeFamily),
                                          ),
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      validator: _model
                                          .codeTxtTextControllerValidator
                                          .asValidator(context),
                                      inputFormatters: [_model.codeTxtMask],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 25.0, 0.0, 25.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      var shouldSetState = false;
                                      _model.sendCodeResult =
                                          await ApiSulGroup.sendCodeCall.call(
                                        userCode:
                                            _model.codeTxtTextController.text,
                                        userTel: FFAppState().usertel,
                                      );
                                      shouldSetState = true;
                                      if ((_model.sendCodeResult?.succeeded ??
                                          true)) {
                                        if (FFAppConstants.zerocode ==
                                            getJsonField(
                                              (_model.sendCodeResult
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.code''',
                                            )) {
                                          FFAppState().update(() {
                                            FFAppState().userIDsul =
                                                getJsonField(
                                              (_model.sendCodeResult
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.user_id''',
                                            ).toString();
                                            FFAppState().usertel =
                                                widget.userTel!;
                                            FFAppState().username =
                                                getJsonField(
                                              (_model.sendCodeResult
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.user_name''',
                                            ).toString();
                                            FFAppState().accumsaleamount =
                                                getJsonField(
                                              (_model.sendCodeResult
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.accum_sale_amount''',
                                            );
                                            FFAppState().cardlevelname =
                                                getJsonField(
                                              (_model.sendCodeResult
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.card_level_name''',
                                            ).toString();
                                            FFAppState().cardname =
                                                getJsonField(
                                              (_model.sendCodeResult
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.card_name''',
                                            ).toString();
                                            FFAppState().bonusbalance =
                                                getJsonField(
                                              (_model.sendCodeResult
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.bonus_balance''',
                                            );
                                            FFAppState().usergender =
                                                getJsonField(
                                              (_model.sendCodeResult
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.user_gender''',
                                            ).toString();
                                            FFAppState().cardid = getJsonField(
                                              (_model.sendCodeResult
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.card_id''',
                                            ).toString();
                                            FFAppState().cardbarcode =
                                                getJsonField(
                                              (_model.sendCodeResult
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.card_barcode''',
                                            ).toString();
                                            FFAppState().codeerr = 112;
                                          });
                                          GoRouter.of(context)
                                              .prepareAuthEvent(true);

                                          final user =
                                              await authManager.signInWithEmail(
                                            context,
                                            widget.userMail!,
                                            widget.userPass!,
                                          );
                                          if (user == null) {
                                            return;
                                          }

                                          setState(() {
                                            FFAppState().goodLogin = true;
                                            FFAppState().userIDfb =
                                                currentUserUid;
                                          });
                                          _model.apiResultr4l =
                                              await ApiSulGroup.setVisitCall
                                                  .call(
                                            userIdMobile:
                                                FFAppState().userIDsul,
                                            uidFB: FFAppState().userIDfb,
                                          );
                                          shouldSetState = true;
                                          _model.getUserInfoResult =
                                              await ApiSulGroup.getUserInfoCall
                                                  .call(
                                            cardId: FFAppState().cardid,
                                          );
                                          shouldSetState = true;
                                          FFAppState().update(() {
                                            FFAppState().username =
                                                getJsonField(
                                              (_model.getUserInfoResult
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.user_name''',
                                            ).toString();
                                            FFAppState().cardnextlevelname =
                                                getJsonField(
                                              (_model.getUserInfoResult
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.card_next_level_name''',
                                            ).toString();
                                            FFAppState().ostatok = getJsonField(
                                              (_model.getUserInfoResult
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.ostatok''',
                                            );
                                            FFAppState().cardid = getJsonField(
                                              (_model.getUserInfoResult
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.card_id''',
                                            ).toString();
                                          });
                                          setState(() {
                                            FFAppState()
                                                .updateUserProfileStruct(
                                              (e) => e
                                                ..userID = currentUserUid
                                                ..userSULID =
                                                    FFAppState().userIDsul
                                                ..cardID = FFAppState().cardid
                                                ..cardLevelName =
                                                    FFAppState().cardlevelname
                                                ..userFIO =
                                                    FFAppState().username
                                                ..userTEL = FFAppState().usertel
                                                ..userAmount =
                                                    FFAppState().accumsaleamount
                                                ..userBonusBalance =
                                                    FFAppState().bonusbalance
                                                ..userBD =
                                                    FFAppState().userbirthday
                                                ..cardBarcode =
                                                    FFAppState().cardbarcode
                                                ..cardName =
                                                    FFAppState().cardname
                                                ..ostatok = FFAppState().ostatok
                                                ..userGender =
                                                    FFAppState().usergender,
                                            );
                                          });

                                          context.goNamedAuth(
                                            'homePage',
                                            context.mounted,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType
                                                        .bottomToTop,
                                                duration: Duration(
                                                    milliseconds: 1000),
                                              ),
                                            },
                                            ignoreRedirect: true,
                                          );
                                        } else {
                                          FFAppState().update(() {
                                            FFAppState().codeerr =
                                                FFAppConstants.zerocode;
                                          });
                                          if (shouldSetState) setState(() {});
                                          return;
                                        }
                                      } else {
                                        if (shouldSetState) setState(() {});
                                        return;
                                      }

                                      if (shouldSetState) setState(() {});
                                    },
                                    text: 'Войти',
                                    options: FFButtonOptions(
                                      width: 250.0,
                                      height: 44.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Open Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey('Open Sans'),
                                          ),
                                      elevation: 20.0,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      if (FFAppState().codeerr != 112)
                        Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: Text(
                            'введен неверный код',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color: FlutterFlowTheme.of(context).error,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
