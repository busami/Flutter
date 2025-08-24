import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/option_card_02/option_card02_widget.dart';
import '/pages/home/components/share_modal/share_modal_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'chat_info_modal_model.dart';
export 'chat_info_modal_model.dart';

class ChatInfoModalWidget extends StatefulWidget {
  const ChatInfoModalWidget({
    super.key,
    required this.avatar,
    required this.title,
  });

  final String? avatar;
  final String? title;

  @override
  State<ChatInfoModalWidget> createState() => _ChatInfoModalWidgetState();
}

class _ChatInfoModalWidgetState extends State<ChatInfoModalWidget>
    with TickerProviderStateMixin {
  late ChatInfoModalModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatInfoModalModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOutQuint,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.7, 0.7),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 8.0, 0.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 10.0,
              color: Color(0x23000000),
              offset: Offset(
                0.0,
                3.0,
              ),
              spreadRadius: 2.0,
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Container(
            width: 200.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Stack(
              alignment: AlignmentDirectional(1.0, -1.0),
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 4.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      wrapWithModel(
                        model: _model.optionCard02Model1,
                        updateCallback: () => safeSetState(() {}),
                        child: OptionCard02Widget(
                          icon: Icon(
                            FFIcons.kinfo,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 20.0,
                          ),
                          title: 'View Details',
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'CHAT_INFO_MODAL_Container_qqrc364p_ON_TA');
                          logFirebaseEvent(
                              'OptionCard_02_close_dialog_drawer_etc');
                          Navigator.pop(context);
                          logFirebaseEvent('OptionCard_02_bottom_sheet');
                          showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Color(0x65000000),
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: ShareModalWidget(),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
                        },
                        child: wrapWithModel(
                          model: _model.optionCard02Model2,
                          updateCallback: () => safeSetState(() {}),
                          child: OptionCard02Widget(
                            icon: Icon(
                              FFIcons.kshare,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 20.0,
                            ),
                            title: 'Share',
                          ),
                        ),
                      ),
                      Divider(
                        height: 1.0,
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'CHAT_INFO_MODAL_Container_wzgikzz3_ON_TA');
                          logFirebaseEvent(
                              'OptionCard_02_close_dialog_drawer_etc');
                          Navigator.pop(context);
                        },
                        child: wrapWithModel(
                          model: _model.optionCard02Model3,
                          updateCallback: () => safeSetState(() {}),
                          child: OptionCard02Widget(
                            icon: Icon(
                              FFIcons.kpencilMinus,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 20.0,
                            ),
                            title: 'Rename',
                          ),
                        ),
                      ),
                      wrapWithModel(
                        model: _model.optionCard02Model4,
                        updateCallback: () => safeSetState(() {}),
                        child: OptionCard02Widget(
                          icon: Icon(
                            FFIcons.karchive,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 20.0,
                          ),
                          title: 'Archived',
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'CHAT_INFO_MODAL_Container_ybxeaq5e_ON_TA');
                          logFirebaseEvent(
                              'OptionCard_02_close_dialog_drawer_etc');
                          Navigator.pop(context);
                        },
                        child: wrapWithModel(
                          model: _model.optionCard02Model5,
                          updateCallback: () => safeSetState(() {}),
                          child: OptionCard02Widget(
                            icon: Icon(
                              FFIcons.ktrash,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 20.0,
                            ),
                            title: 'Delete',
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
                              'CHAT_INFO_MODAL_Container_dv8ar8wo_ON_TA');
                          logFirebaseEvent(
                              'OptionCard_02_close_dialog_drawer_etc');
                          Navigator.pop(context);
                        },
                        child: wrapWithModel(
                          model: _model.optionCard02Model6,
                          updateCallback: () => safeSetState(() {}),
                          child: OptionCard02Widget(
                            icon: Icon(
                              FFIcons.kfolder,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 20.0,
                            ),
                            title: 'Move to project',
                          ),
                        ),
                      ),
                      Divider(
                        height: 1.0,
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'CHAT_INFO_MODAL_Container_xkkfm9c4_ON_TA');
                          logFirebaseEvent(
                              'OptionCard_02_close_dialog_drawer_etc');
                          Navigator.pop(context);
                        },
                        child: wrapWithModel(
                          model: _model.optionCard02Model7,
                          updateCallback: () => safeSetState(() {}),
                          child: OptionCard02Widget(
                            icon: Icon(
                              FFIcons.kcircleDashed,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 20.0,
                            ),
                            title: 'Temporary Chat',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 12.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderRadius: 8.0,
                    buttonSize: 34.0,
                    fillColor: Colors.transparent,
                    icon: Icon(
                      FFIcons.kx,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 18.0,
                    ),
                    onPressed: () async {
                      logFirebaseEvent('CHAT_INFO_MODAL_COMP_x_ICN_ON_TAP');
                      logFirebaseEvent('IconButton_close_dialog_drawer_etc');
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
