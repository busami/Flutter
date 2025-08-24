import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/profile/component/nav_btns/nav_btn_09/nav_btn09_widget.dart';
import '/index.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'support_section_model.dart';
export 'support_section_model.dart';

class SupportSectionWidget extends StatefulWidget {
  const SupportSectionWidget({super.key});

  @override
  State<SupportSectionWidget> createState() => _SupportSectionWidgetState();
}

class _SupportSectionWidgetState extends State<SupportSectionWidget> {
  late SupportSectionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SupportSectionModel());

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
                    'janpch5l' /* Support */,
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
                          'SUPPORT_SECTION_Container_5dd1shc4_ON_TA');
                      logFirebaseEvent('NavBtn_09_navigate_to');

                      context.pushNamed(HelpCenterWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.navBtn09Model1,
                      updateCallback: () => safeSetState(() {}),
                      child: NavBtn09Widget(
                        title: 'Help center',
                        subTitle: 'See FAQ and contact support',
                        btnActive: false,
                        icon: Icon(
                          FFIcons.kmessage,
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
                          'SUPPORT_SECTION_Container_76l7fwaj_ON_TA');
                      logFirebaseEvent('NavBtn_09_navigate_to');

                      context.pushNamed(SupportCallRequestWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.navBtn09Model2,
                      updateCallback: () => safeSetState(() {}),
                      child: NavBtn09Widget(
                        title: 'Call request',
                        subTitle: 'Initiate call request',
                        btnActive: false,
                        icon: Icon(
                          FFIcons.kphoneCalling,
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
                          'SUPPORT_SECTION_Container_264lshyo_ON_TA');
                      logFirebaseEvent('NavBtn_09_navigate_to');

                      context.pushNamed(SupportHomeWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.navBtn09Model3,
                      updateCallback: () => safeSetState(() {}),
                      child: NavBtn09Widget(
                        title: 'Support home',
                        subTitle: 'General view of support',
                        btnActive: false,
                        icon: Icon(
                          FFIcons.khelp,
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
                          'SUPPORT_SECTION_Container_gguw51en_ON_TA');
                      logFirebaseEvent('NavBtn_09_navigate_to');

                      context.pushNamed(TicketDetailsWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.navBtn09Model4,
                      updateCallback: () => safeSetState(() {}),
                      child: NavBtn09Widget(
                        title: 'Ticket details',
                        subTitle: 'See raised ticket details',
                        btnActive: false,
                        icon: Icon(
                          FFIcons.knotes,
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
                          'SUPPORT_SECTION_Container_ja1q7xz8_ON_TA');
                      logFirebaseEvent('NavBtn_09_navigate_to');

                      context.pushNamed(TicketsWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.navBtn09Model5,
                      updateCallback: () => safeSetState(() {}),
                      child: NavBtn09Widget(
                        title: 'Tickets',
                        subTitle: 'See all tickets',
                        btnActive: false,
                        icon: Icon(
                          FFIcons.kmessage,
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
