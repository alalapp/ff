import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'send_code_reg_page_model.dart';
export 'send_code_reg_page_model.dart';

class SendCodeRegPageWidget extends StatefulWidget {
  const SendCodeRegPageWidget({
    super.key,
    required this.regUserTel,
    required this.regUserFio,
    this.regUserBd,
    required this.regUserPass,
    required this.regUserMail,
  });

  final String? regUserTel;
  final String? regUserFio;
  final String? regUserBd;
  final String? regUserPass;
  final String? regUserMail;

  @override
  State<SendCodeRegPageWidget> createState() => _SendCodeRegPageWidgetState();
}

class _SendCodeRegPageWidgetState extends State<SendCodeRegPageWidget> {
  late SendCodeRegPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SendCodeRegPageModel());

    _model.codeRegTxtTextController ??= TextEditingController();
    _model.codeRegTxtFocusNode ??= FocusNode();

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
        title: 'sendCodeRegPage',
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
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('LoginPage');
                  },
                ),
                title: Text(
                  'введите код регистрации',
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller:
                                          _model.codeRegTxtTextController,
                                      focusNode: _model.codeRegTxtFocusNode,
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
                                          .codeRegTxtTextControllerValidator
                                          .asValidator(context),
                                      inputFormatters: [_model.codeRegTxtMask],
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
                                      FFAppState().appuserinfo =
                                          <String, String>{
                                        'user_tel': widget.regUserTel!,
                                        'user_fio': widget.regUserFio!,
                                        'user_bd': widget.regUserBd!,
                                      };
                                      _model.sendcodeResultreg =
                                          await ApiSulGroup.sendCodeRegCall
                                              .call(
                                        userCode: _model
                                            .codeRegTxtTextController.text,
                                        userInfoJson: FFAppState().appuserinfo,
                                        userTel: FFAppState().usertel,
                                      );
                                      shouldSetState = true;
                                      if ((_model
                                              .sendcodeResultreg?.succeeded ??
                                          true)) {
                                        if (FFAppState().code0 ==
                                            getJsonField(
                                              (_model.sendcodeResultreg
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.code''',
                                            )) {
                                          FFAppState().update(() {
                                            FFAppState().userIDsul =
                                                getJsonField(
                                              (_model.sendcodeResultreg
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.user_id''',
                                            ).toString();
                                            FFAppState().accumsaleamount = 0;
                                            FFAppState().cardlevelname =
                                                getJsonField(
                                              (_model.sendcodeResultreg
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.card_level_name''',
                                            ).toString();
                                            FFAppState().cardname =
                                                getJsonField(
                                              (_model.sendcodeResultreg
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.card_level_name''',
                                            ).toString();
                                            FFAppState().bonusbalance = 0;
                                            FFAppState().usergender =
                                                getJsonField(
                                              (_model.sendcodeResultreg
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.user_gender''',
                                            ).toString();
                                            FFAppState().cardid = getJsonField(
                                              (_model.sendcodeResultreg
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.card_id''',
                                            ).toString();
                                            FFAppState().cardbarcode =
                                                getJsonField(
                                              (_model.sendcodeResultreg
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.card_barcode''',
                                            ).toString();
                                            FFAppState().goodLogin = true;
                                          });
                                          GoRouter.of(context)
                                              .prepareAuthEvent();
                                          if (widget.regUserPass! !=
                                              widget.regUserPass!) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              const SnackBar(
                                                content: Text(
                                                  'Passwords don\'t match!',
                                                ),
                                              ),
                                            );
                                            return;
                                          }

                                          final user = await authManager
                                              .createAccountWithEmail(
                                            context,
                                            widget.regUserMail!,
                                            widget.regUserPass!,
                                          );
                                          if (user == null) {
                                            return;
                                          }

                                          await UsersRecord.collection
                                              .doc(user.uid)
                                              .update(createUsersRecordData(
                                                role: 'user',
                                                displayName:
                                                    FFAppState().username,
                                                phoneNumber:
                                                    FFAppState().usertel,
                                                birthday:
                                                    FFAppState().userbirthday,
                                              ));

                                          setState(() {
                                            FFAppState().userIDfb =
                                                currentUserUid;
                                          });
                                          await ApiSulGroup.getUserInfoCall
                                              .call(
                                            cardId: FFAppState().cardid,
                                          );
                                          FFAppState().update(() {
                                            FFAppState().cardnextlevelname =
                                                FFAppState().cardnextlevelname;
                                            FFAppState().ostatok =
                                                FFAppState().ostatok;
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
                                          await ApiSulGroup.setVisitCall.call(
                                            userIdMobile:
                                                FFAppState().userIDsul,
                                            uidFB: FFAppState().userIDfb,
                                          );

                                          context.goNamedAuth(
                                            'accountPage',
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
                                          );
                                        } else {
                                          FFAppState().codeerr =
                                              FFAppConstants.zerocode;
                                          if (shouldSetState) setState(() {});
                                          return;
                                        }
                                      } else {
                                        if (shouldSetState) setState(() {});
                                        return;
                                      }

                                      if (shouldSetState) setState(() {});
                                    },
                                    text: 'Зарегистрироваться',
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
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLargeFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily),
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
                        Text(
                          'введен неверный код',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: FlutterFlowTheme.of(context).error,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
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
