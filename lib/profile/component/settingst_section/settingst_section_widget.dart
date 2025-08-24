import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/profile/component/nav_btns/nav_btn_09/nav_btn09_widget.dart';
import '/index.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'settingst_section_model.dart';
export 'settingst_section_model.dart';

class SettingstSectionWidget extends StatefulWidget {
  const SettingstSectionWidget({super.key});

  @override
  State<SettingstSectionWidget> createState() => _SettingstSectionWidgetState();
}

class _SettingstSectionWidgetState extends State<SettingstSectionWidget> {
  late SettingstSectionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingstSectionModel());

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
                    'fm4xgp5l' /* Settings */,
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
                          'SETTINGST_SECTION_Container_g92sblpk_ON_');
                      logFirebaseEvent('NavBtn_09_navigate_to');

                      context.pushNamed(LanguagesWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.navBtn09Model1,
                      updateCallback: () => safeSetState(() {}),
                      child: NavBtn09Widget(
                        title: 'Language',
                        subTitle: 'View language setting',
                        btnActive: false,
                        icon: Icon(
                          FFIcons.klanguage,
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
                      title: 'Newsletter',
                      subTitle: 'View news letter setting',
                      btnActive: false,
                      icon: Icon(
                        FFIcons.knewspaper,
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
                          'SETTINGST_SECTION_Container_2zi56dx5_ON_');
                      logFirebaseEvent('NavBtn_09_navigate_to');

                      context.pushNamed(NotificationSettingWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.navBtn09Model3,
                      updateCallback: () => safeSetState(() {}),
                      child: NavBtn09Widget(
                        title: 'Notification',
                        subTitle: 'View notification settings',
                        btnActive: false,
                        icon: Icon(
                          FFIcons.kbellCog,
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
                          'SETTINGST_SECTION_Container_at6pqrcc_ON_');
                      logFirebaseEvent('NavBtn_09_navigate_to');

                      context.pushNamed(SecurityWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.navBtn09Model4,
                      updateCallback: () => safeSetState(() {}),
                      child: NavBtn09Widget(
                        title: 'Security',
                        subTitle: 'View security setting',
                        btnActive: false,
                        icon: Icon(
                          FFIcons.kshieldCog,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 18.0,
                        ),
                      ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.navBtn09Model5,
                    updateCallback: () => safeSetState(() {}),
                    child: NavBtn09Widget(
                      title: 'Settings',
                      subTitle: 'View general setting',
                      btnActive: false,
                      icon: Icon(
                        FFIcons.ksettingsCog,
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
                          'SETTINGST_SECTION_Container_lqwd25kk_ON_');
                      logFirebaseEvent('NavBtn_09_navigate_to');

                      context.pushNamed(TroubleshootingWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.navBtn09Model6,
                      updateCallback: () => safeSetState(() {}),
                      child: NavBtn09Widget(
                        title: 'Settings',
                        subTitle: 'View troubleshooting setting',
                        btnActive: false,
                        icon: Icon(
                          FFIcons.ktool,
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
