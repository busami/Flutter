import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/profile/component/nav_btns/nav_btn_09/nav_btn09_widget.dart';
import '/index.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'account_section_model.dart';
export 'account_section_model.dart';

class AccountSectionWidget extends StatefulWidget {
  const AccountSectionWidget({super.key});

  @override
  State<AccountSectionWidget> createState() => _AccountSectionWidgetState();
}

class _AccountSectionWidgetState extends State<AccountSectionWidget> {
  late AccountSectionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccountSectionModel());

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
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
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
                    'itezh5dx' /* Account */,
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
                          'ACCOUNT_SECTION_Container_ms4039co_ON_TA');
                      logFirebaseEvent('NavBtn_09_navigate_to');

                      context.pushNamed(AboutTheAppWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.navBtn09Model1,
                      updateCallback: () => safeSetState(() {}),
                      child: NavBtn09Widget(
                        title: 'About',
                        subTitle: 'View about app',
                        btnActive: false,
                        icon: Icon(
                          FFIcons.kinfoCircle,
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
                          'ACCOUNT_SECTION_Container_ggti1zrf_ON_TA');
                      logFirebaseEvent('NavBtn_09_navigate_to');

                      context.pushNamed(AboutUsWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.navBtn09Model2,
                      updateCallback: () => safeSetState(() {}),
                      child: NavBtn09Widget(
                        title: 'About us',
                        subTitle: 'View about details',
                        btnActive: false,
                        icon: Icon(
                          FFIcons.kinfoHexagon,
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
                          'ACCOUNT_SECTION_Container_fh879xia_ON_TA');
                      logFirebaseEvent('NavBtn_09_navigate_to');

                      context.pushNamed(AccountDeleteWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.navBtn09Model3,
                      updateCallback: () => safeSetState(() {}),
                      child: NavBtn09Widget(
                        title: 'Account delete',
                        subTitle: 'View account details',
                        btnActive: false,
                        icon: Icon(
                          FFIcons.kuserX,
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
                          'ACCOUNT_SECTION_Container_afyflne7_ON_TA');
                      logFirebaseEvent('NavBtn_09_navigate_to');

                      context.pushNamed(AccountPrivacyWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.navBtn09Model4,
                      updateCallback: () => safeSetState(() {}),
                      child: NavBtn09Widget(
                        title: 'Account privacy',
                        subTitle: 'View all orders',
                        btnActive: false,
                        icon: Icon(
                          FFIcons.kuserCog,
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
                          'ACCOUNT_SECTION_Container_1u698pq3_ON_TA');
                      logFirebaseEvent('NavBtn_09_navigate_to');

                      context.pushNamed(FeedbackWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.navBtn09Model5,
                      updateCallback: () => safeSetState(() {}),
                      child: NavBtn09Widget(
                        title: 'Feedback',
                        subTitle: 'View feedback details',
                        btnActive: false,
                        icon: Icon(
                          FFIcons.ktextRecognition,
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
                          'ACCOUNT_SECTION_Container_47fol1pz_ON_TA');
                      logFirebaseEvent('NavBtn_09_navigate_to');

                      context.pushNamed(InviteFriendsWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.navBtn09Model6,
                      updateCallback: () => safeSetState(() {}),
                      child: NavBtn09Widget(
                        title: 'Invite friends',
                        subTitle: 'Invite or refer friends',
                        btnActive: false,
                        icon: Icon(
                          FFIcons.kusersPlus,
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
                          'ACCOUNT_SECTION_Container_sfre9zxz_ON_TA');
                      logFirebaseEvent('NavBtn_09_navigate_to');

                      context.pushNamed(NotificationWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.navBtn09Model7,
                      updateCallback: () => safeSetState(() {}),
                      child: NavBtn09Widget(
                        title: 'Notifications',
                        subTitle: 'View all notifications',
                        btnActive: false,
                        icon: Icon(
                          FFIcons.kbell,
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
                          'ACCOUNT_SECTION_Container_66soun7l_ON_TA');
                      logFirebaseEvent('NavBtn_09_navigate_to');

                      context.pushNamed(ReferralWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.navBtn09Model8,
                      updateCallback: () => safeSetState(() {}),
                      child: NavBtn09Widget(
                        title: 'Referral',
                        subTitle: 'View referral page',
                        btnActive: false,
                        icon: Icon(
                          FFIcons.kgift,
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
                          'ACCOUNT_SECTION_Container_climza9d_ON_TA');
                      logFirebaseEvent('NavBtn_09_navigate_to');

                      context.pushNamed(PrivacyPolicyWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.navBtn09Model9,
                      updateCallback: () => safeSetState(() {}),
                      child: NavBtn09Widget(
                        title: 'Privacy',
                        subTitle: 'View privacy page',
                        btnActive: false,
                        icon: Icon(
                          FFIcons.kshieldCog,
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
                          'ACCOUNT_SECTION_Container_rsk7q82z_ON_TA');
                      logFirebaseEvent('NavBtn_09_navigate_to');

                      context.pushNamed(TermsConditionsWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.navBtn09Model10,
                      updateCallback: () => safeSetState(() {}),
                      child: NavBtn09Widget(
                        title: 'Term & conditions',
                        subTitle: 'View terms page',
                        btnActive: false,
                        icon: Icon(
                          FFIcons.kshieldCheck,
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
