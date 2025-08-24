import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/profile/component/nav_btns/nav_btn_03/nav_btn03_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'account_delete_model.dart';
export 'account_delete_model.dart';

class AccountDeleteWidget extends StatefulWidget {
  const AccountDeleteWidget({super.key});

  static String routeName = 'AccountDelete';
  static String routePath = '/accountDelete';

  @override
  State<AccountDeleteWidget> createState() => _AccountDeleteWidgetState();
}

class _AccountDeleteWidgetState extends State<AccountDeleteWidget> {
  late AccountDeleteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccountDeleteModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'AccountDelete'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 54.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 24.0,
            ),
            onPressed: () async {
              logFirebaseEvent('ACCOUNT_DELETE_arrow_back_rounded_ICN_ON');
              logFirebaseEvent('IconButton_navigate_back');
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              '605dm7q0' /* Delete account */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.cairo(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: Colors.white,
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'pbso83xy' /* Delete my account */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.cairo(
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'oc5tsztd' /* Why would you like to delete y... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.cairo(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ].divide(SizedBox(height: 4.0)),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).lineColor,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        wrapWithModel(
                          model: _model.navBtn03Model1,
                          updateCallback: () => safeSetState(() {}),
                          child: NavBtn03Widget(
                            title:
                                'I don\'t want to use ${valueOrDefault<String>(
                              FFAppState().AppDetails.title,
                              'NA',
                            )} anymore',
                            navigateAction: () async {
                              logFirebaseEvent(
                                  'ACCOUNT_DELETE_Container_yoxab6sd_CALLBA');
                              logFirebaseEvent('NavBtn_03_navigate_to');

                              context.pushNamed(
                                AccountDeleteCnfWidget.routeName,
                                queryParameters: {
                                  'reason': serializeParam(
                                    'I don\'t want to use ${FFAppState().AppDetails.title} anymore',
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            },
                          ),
                        ),
                        Divider(
                          height: 1.0,
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).lineColor,
                        ),
                        wrapWithModel(
                          model: _model.navBtn03Model2,
                          updateCallback: () => safeSetState(() {}),
                          child: NavBtn03Widget(
                            title: 'I\'m using a different account',
                            navigateAction: () async {
                              logFirebaseEvent(
                                  'ACCOUNT_DELETE_Container_f4ra1d8f_CALLBA');
                              logFirebaseEvent('NavBtn_03_navigate_to');

                              context.pushNamed(
                                AccountDeleteCnfWidget.routeName,
                                queryParameters: {
                                  'reason': serializeParam(
                                    'I\'m using a different account',
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            },
                          ),
                        ),
                        Divider(
                          height: 1.0,
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).lineColor,
                        ),
                        wrapWithModel(
                          model: _model.navBtn03Model3,
                          updateCallback: () => safeSetState(() {}),
                          child: NavBtn03Widget(
                            title: 'I\'m worried about privacy',
                            navigateAction: () async {
                              logFirebaseEvent(
                                  'ACCOUNT_DELETE_Container_ew6jkau0_CALLBA');
                              logFirebaseEvent('NavBtn_03_navigate_to');

                              context.pushNamed(
                                AccountDeleteCnfWidget.routeName,
                                queryParameters: {
                                  'reason': serializeParam(
                                    'I\'m worried about privacy',
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            },
                          ),
                        ),
                        Divider(
                          height: 1.0,
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).lineColor,
                        ),
                        wrapWithModel(
                          model: _model.navBtn03Model4,
                          updateCallback: () => safeSetState(() {}),
                          child: NavBtn03Widget(
                            title: 'This app is not working properly',
                            navigateAction: () async {
                              logFirebaseEvent(
                                  'ACCOUNT_DELETE_Container_aq33sou2_CALLBA');
                              logFirebaseEvent('NavBtn_03_navigate_to');

                              context.pushNamed(
                                AccountDeleteCnfWidget.routeName,
                                queryParameters: {
                                  'reason': serializeParam(
                                    'This app is not working properly',
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            },
                          ),
                        ),
                        Divider(
                          height: 1.0,
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).lineColor,
                        ),
                        wrapWithModel(
                          model: _model.navBtn03Model5,
                          updateCallback: () => safeSetState(() {}),
                          child: NavBtn03Widget(
                            title: 'Other',
                            navigateAction: () async {
                              logFirebaseEvent(
                                  'ACCOUNT_DELETE_Container_0typahej_CALLBA');
                              logFirebaseEvent('NavBtn_03_navigate_to');

                              context.pushNamed(
                                AccountDeleteCnfWidget.routeName,
                                queryParameters: {
                                  'reason': serializeParam(
                                    'Other',
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]
                .divide(SizedBox(height: 16.0))
                .addToStart(SizedBox(height: 16.0))
                .addToEnd(SizedBox(height: 24.0)),
          ),
        ),
      ),
    );
  }
}
