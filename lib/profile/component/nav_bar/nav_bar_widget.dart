import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/profile/component/nav_btn/nav_btn_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'nav_bar_model.dart';
export 'nav_bar_model.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({super.key});

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  late NavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66.0,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(0.0),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 4.0,
                sigmaY: 4.0,
              ),
              child: Container(
                width: double.infinity,
                height: 66.0,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 66.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'NAV_BAR_COMP_Container_9d70dan8_ON_TAP');
                            logFirebaseEvent('NavBtn_navigate_to');

                            context.pushNamed(
                              HomeWidget.routeName,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                ),
                              },
                            );
                          },
                          child: wrapWithModel(
                            model: _model.navBtnModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: NavBtnWidget(
                              icon: Icon(
                                FFIcons.khome,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 22.0,
                              ),
                              icon2: Icon(
                                FFIcons.khome,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 22.0,
                              ),
                              title: 'Home',
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'NAV_BAR_COMP_Container_icat6l3j_ON_TAP');
                            logFirebaseEvent('NavBtn_navigate_to');

                            context.pushNamed(
                              ExploreWidget.routeName,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                ),
                              },
                            );
                          },
                          child: wrapWithModel(
                            model: _model.navBtnModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: NavBtnWidget(
                              icon: Icon(
                                FFIcons.kcompass,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 22.0,
                              ),
                              icon2: Icon(
                                FFIcons.kcompass,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 22.0,
                              ),
                              title: 'Explore',
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'NAV_BAR_COMP_Container_beqgjmmc_ON_TAP');
                            logFirebaseEvent('NavBtn_navigate_to');

                            context.pushNamed(
                              ListingsWidget.routeName,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                ),
                              },
                            );
                          },
                          child: wrapWithModel(
                            model: _model.navBtnModel3,
                            updateCallback: () => safeSetState(() {}),
                            child: NavBtnWidget(
                              icon: Icon(
                                FFIcons.kbuildingCommunity,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 22.0,
                              ),
                              icon2: Icon(
                                FFIcons.kbuildingCommunity,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 22.0,
                              ),
                              title: 'My Property',
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'NAV_BAR_COMP_Container_nnv4bsc7_ON_TAP');
                            logFirebaseEvent('NavBtn_navigate_to');

                            context.pushNamed(
                              ChatWidget.routeName,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                ),
                              },
                            );
                          },
                          child: wrapWithModel(
                            model: _model.navBtnModel4,
                            updateCallback: () => safeSetState(() {}),
                            child: NavBtnWidget(
                              icon: Icon(
                                FFIcons.kmessage,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 22.0,
                              ),
                              icon2: Icon(
                                FFIcons.kmessage,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 22.0,
                              ),
                              title: 'Message',
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'NAV_BAR_COMP_Container_a3tldb75_ON_TAP');
                            logFirebaseEvent('NavBtn_navigate_to');

                            context.pushNamed(
                              ProfileWidget.routeName,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                ),
                              },
                            );
                          },
                          child: wrapWithModel(
                            model: _model.navBtnModel5,
                            updateCallback: () => safeSetState(() {}),
                            child: NavBtnWidget(
                              icon: Icon(
                                FFIcons.kuser,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 22.0,
                              ),
                              icon2: Icon(
                                FFIcons.kuser,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 22.0,
                              ),
                              title: 'Profile',
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
    );
  }
}
