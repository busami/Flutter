import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/profile/component/nav_btns/nav_btn_09/nav_btn09_widget.dart';
import '/index.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'authentication_section_model.dart';
export 'authentication_section_model.dart';

class AuthenticationSectionWidget extends StatefulWidget {
  const AuthenticationSectionWidget({super.key});

  @override
  State<AuthenticationSectionWidget> createState() =>
      _AuthenticationSectionWidgetState();
}

class _AuthenticationSectionWidgetState
    extends State<AuthenticationSectionWidget> {
  late AuthenticationSectionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AuthenticationSectionModel());

    _model.expandableExpandableController =
        ExpandableController(initialExpanded: false);
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Container(
          width: double.infinity,
          color: Color(0x00000000),
          child: ExpandableNotifier(
            controller: _model.expandableExpandableController,
            child: ExpandablePanel(
              header: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '2jmryitt' /* Authentication */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.cairo(
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ),
              collapsed: Container(
                width: 0.0,
                height: 0.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  shape: BoxShape.circle,
                ),
              ),
              expanded: ListView(
                padding: EdgeInsets.zero,
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'AUTHENTICATION_SECTION_Container_9gbbkqp');
                      logFirebaseEvent('NavBtn_09_navigate_to');

                      context.pushNamed(SignInSignUpWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.navBtn09Model1,
                      updateCallback: () => safeSetState(() {}),
                      child: NavBtn09Widget(
                        title: 'Login',
                        subTitle: 'User authentication screen',
                        btnActive: false,
                        icon: Icon(
                          FFIcons.klogIn,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 18.0,
                        ),
                      ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.navBtn09Model2,
                    updateCallback: () => safeSetState(() {}),
                    child: NavBtn09Widget(
                      title: 'Register',
                      subTitle: 'Reset password screen',
                      btnActive: false,
                      icon: Icon(
                        FFIcons.klockX,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 18.0,
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
                          'AUTHENTICATION_SECTION_Container_79znprb');
                      logFirebaseEvent('NavBtn_09_navigate_to');

                      context.pushNamed(SignInMobileWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.navBtn09Model3,
                      updateCallback: () => safeSetState(() {}),
                      child: NavBtn09Widget(
                        title: 'Mobile Authentication',
                        subTitle: 'Reset password screen',
                        btnActive: false,
                        icon: Icon(
                          FFIcons.kdeviceMobile,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 18.0,
                        ),
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
                          'AUTHENTICATION_SECTION_Container_lj2de7f');
                      logFirebaseEvent('NavBtn_09_navigate_to');

                      context.pushNamed(PasswordChangeWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.navBtn09Model4,
                      updateCallback: () => safeSetState(() {}),
                      child: NavBtn09Widget(
                        title: 'Change password',
                        subTitle: 'Change password screen',
                        btnActive: false,
                        icon: Icon(
                          FFIcons.klock,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 18.0,
                        ),
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
                          'AUTHENTICATION_SECTION_Container_lm0x0uw');
                      logFirebaseEvent('NavBtn_09_navigate_to');

                      context.pushNamed(PasswordResetWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.navBtn09Model5,
                      updateCallback: () => safeSetState(() {}),
                      child: NavBtn09Widget(
                        title: 'Reset password',
                        subTitle: 'Reset password screen',
                        btnActive: false,
                        icon: Icon(
                          FFIcons.klockX,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 18.0,
                        ),
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
                          'AUTHENTICATION_SECTION_Container_u91k7bf');
                      logFirebaseEvent('NavBtn_09_navigate_to');

                      context.pushNamed(VerifyCodeWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.navBtn09Model6,
                      updateCallback: () => safeSetState(() {}),
                      child: NavBtn09Widget(
                        title: 'Verify OTP',
                        subTitle: 'Reset password screen',
                        btnActive: false,
                        icon: Icon(
                          FFIcons.kpasswordMobilePhone,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 18.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              theme: ExpandableThemeData(
                tapHeaderToExpand: true,
                tapBodyToExpand: false,
                tapBodyToCollapse: false,
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                hasIcon: true,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
