import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/profile/component/menu_card_02/menu_card02_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'about_the_app_model.dart';
export 'about_the_app_model.dart';

class AboutTheAppWidget extends StatefulWidget {
  const AboutTheAppWidget({super.key});

  static String routeName = 'AboutTheApp';
  static String routePath = '/aboutTheApp';

  @override
  State<AboutTheAppWidget> createState() => _AboutTheAppWidgetState();
}

class _AboutTheAppWidgetState extends State<AboutTheAppWidget> {
  late AboutTheAppModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutTheAppModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'AboutTheApp'});
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
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: EdgeInsets.all(8.0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24.0,
              ),
              onPressed: () async {
                logFirebaseEvent('ABOUT_THE_APP_arrow_back_rounded_ICN_ON_');
                logFirebaseEvent('IconButton_navigate_back');
                context.pop();
              },
            ),
          ),
          title: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'm0bn9s7q' /* About Homexa */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.cairo(
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    fontSize: 18.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.transparent,
                  size: 0.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.network(
                              valueOrDefault<String>(
                                FFAppState().AppDetails.logo,
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/b2tq6p8r2mmc/Homexa_Logo.svg',
                              ),
                              width: 80.0,
                              height: 80.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  FFAppState().AppDetails.title,
                                  'Homexa',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.cairo(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 22.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  '7y0qtzu9' /* Virssion: 1.02.35 Live */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.cairo(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
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
                            ].divide(SizedBox(height: 6.0)),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                      Divider(
                        height: 1.0,
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                    ].divide(SizedBox(height: 24.0)),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'ABOUT_THE_APP_Container_6labwmnb_ON_TAP');
                          logFirebaseEvent('MenuCard_02_navigate_to');

                          context.pushNamed(AboutUsWidget.routeName);
                        },
                        child: wrapWithModel(
                          model: _model.menuCard02Model1,
                          updateCallback: () => safeSetState(() {}),
                          child: MenuCard02Widget(
                            title: 'About us',
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'ABOUT_THE_APP_Container_77sddixs_ON_TAP');
                          logFirebaseEvent('MenuCard_02_navigate_to');

                          context.pushNamed(HelpCenterWidget.routeName);
                        },
                        child: wrapWithModel(
                          model: _model.menuCard02Model2,
                          updateCallback: () => safeSetState(() {}),
                          child: MenuCard02Widget(
                            title: 'Help Center',
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'ABOUT_THE_APP_Container_v3b956ho_ON_TAP');
                          logFirebaseEvent('MenuCard_02_navigate_to');

                          context.pushNamed(TermsConditionsWidget.routeName);
                        },
                        child: wrapWithModel(
                          model: _model.menuCard02Model3,
                          updateCallback: () => safeSetState(() {}),
                          child: MenuCard02Widget(
                            title: 'Terms & Conditions',
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'ABOUT_THE_APP_Container_nzicyja8_ON_TAP');
                          logFirebaseEvent('MenuCard_02_navigate_to');

                          context.pushNamed(PrivacyPolicyWidget.routeName);
                        },
                        child: wrapWithModel(
                          model: _model.menuCard02Model4,
                          updateCallback: () => safeSetState(() {}),
                          child: MenuCard02Widget(
                            title: 'Privacy Policy',
                          ),
                        ),
                      ),
                      wrapWithModel(
                        model: _model.menuCard02Model5,
                        updateCallback: () => safeSetState(() {}),
                        child: MenuCard02Widget(
                          title: 'Job Vacancy',
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'ABOUT_THE_APP_Container_ymzdptp9_ON_TAP');
                          logFirebaseEvent('MenuCard_02_navigate_to');

                          context.pushNamed(PrivacyPolicyWidget.routeName);
                        },
                        child: wrapWithModel(
                          model: _model.menuCard02Model6,
                          updateCallback: () => safeSetState(() {}),
                          child: MenuCard02Widget(
                            title: 'Contact us',
                          ),
                        ),
                      ),
                      wrapWithModel(
                        model: _model.menuCard02Model7,
                        updateCallback: () => safeSetState(() {}),
                        child: MenuCard02Widget(
                          title: 'Partner',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.menuCard02Model8,
                        updateCallback: () => safeSetState(() {}),
                        child: MenuCard02Widget(
                          title: 'Accessibility',
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'ABOUT_THE_APP_Container_w6rpyeth_ON_TAP');
                          logFirebaseEvent('MenuCard_02_navigate_to');

                          context.pushNamed(FeedbackWidget.routeName);
                        },
                        child: wrapWithModel(
                          model: _model.menuCard02Model9,
                          updateCallback: () => safeSetState(() {}),
                          child: MenuCard02Widget(
                            title: 'Feedback',
                          ),
                        ),
                      ),
                      wrapWithModel(
                        model: _model.menuCard02Model10,
                        updateCallback: () => safeSetState(() {}),
                        child: MenuCard02Widget(
                          title: 'Rate us',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.menuCard02Model11,
                        updateCallback: () => safeSetState(() {}),
                        child: MenuCard02Widget(
                          title: 'Visit Our Website',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.menuCard02Model12,
                        updateCallback: () => safeSetState(() {}),
                        child: MenuCard02Widget(
                          title: 'Follow us on Social Media',
                        ),
                      ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                ),
              ]
                  .divide(SizedBox(height: 16.0))
                  .addToStart(SizedBox(height: 8.0))
                  .addToEnd(SizedBox(height: 24.0)),
            ),
          ),
        ),
      ),
    );
  }
}
