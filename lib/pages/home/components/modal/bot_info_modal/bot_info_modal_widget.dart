import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/option_card_02/option_card02_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'bot_info_modal_model.dart';
export 'bot_info_modal_model.dart';

class BotInfoModalWidget extends StatefulWidget {
  const BotInfoModalWidget({
    super.key,
    required this.avatar,
    required this.title,
  });

  final String? avatar;
  final String? title;

  @override
  State<BotInfoModalWidget> createState() => _BotInfoModalWidgetState();
}

class _BotInfoModalWidgetState extends State<BotInfoModalWidget>
    with TickerProviderStateMixin {
  late BotInfoModalModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BotInfoModalModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
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
            width: 270.0,
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
                            FFIcons.kuserShare,
                            color: FlutterFlowTheme.of(context).tertiary,
                            size: 20.0,
                          ),
                          title: 'View bot',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.optionCard02Model2,
                        updateCallback: () => safeSetState(() {}),
                        child: OptionCard02Widget(
                          icon: Icon(
                            FFIcons.krepeat2,
                            color: FlutterFlowTheme.of(context).secondary,
                            size: 20.0,
                          ),
                          title: 'Save and start a new chat',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.optionCard02Model3,
                        updateCallback: () => safeSetState(() {}),
                        child: OptionCard02Widget(
                          icon: Icon(
                            FFIcons.khistory,
                            color: FlutterFlowTheme.of(context).success,
                            size: 20.0,
                          ),
                          title: 'View saved chats',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.optionCard02Model4,
                        updateCallback: () => safeSetState(() {}),
                        child: OptionCard02Widget(
                          icon: Icon(
                            FFIcons.ktrash,
                            color: FlutterFlowTheme.of(context).error,
                            size: 20.0,
                          ),
                          title: 'Delete chat',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.optionCard02Model5,
                        updateCallback: () => safeSetState(() {}),
                        child: OptionCard02Widget(
                          icon: Icon(
                            FFIcons.kinfoOctagon,
                            color: FlutterFlowTheme.of(context).blue,
                            size: 20.0,
                          ),
                          title: 'Report an issue',
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
                      logFirebaseEvent('BOT_INFO_MODAL_COMP_x_ICN_ON_TAP');
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
