import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/profile/component/nav_btns/nav_btn_08/nav_btn08_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'more_option_model.dart';
export 'more_option_model.dart';

class MoreOptionWidget extends StatefulWidget {
  const MoreOptionWidget({
    super.key,
    required this.image,
    required this.name,
  });

  final String? image;
  final String? name;

  @override
  State<MoreOptionWidget> createState() => _MoreOptionWidgetState();
}

class _MoreOptionWidgetState extends State<MoreOptionWidget> {
  late MoreOptionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MoreOptionModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12.0),
          bottomRight: Radius.circular(12.0),
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12.0),
              bottomRight: Radius.circular(12.0),
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 32.0,
                height: 4.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).alternate,
                  borderRadius: BorderRadius.circular(2.0),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('MORE_OPTION_Container_6b4pslqa_ON_TAP');
                  logFirebaseEvent('NavBtn_08_navigate_to');

                  context.pushNamed(
                    VideoCallWidget.routeName,
                    queryParameters: {
                      'image': serializeParam(
                        widget.image,
                        ParamType.String,
                      ),
                      'name': serializeParam(
                        widget.name,
                        ParamType.String,
                      ),
                    }.withoutNulls,
                  );
                },
                child: wrapWithModel(
                  model: _model.navBtn08Model1,
                  updateCallback: () => safeSetState(() {}),
                  child: NavBtn08Widget(
                    leadingIcon: Icon(
                      FFIcons.kvideo,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 20.0,
                    ),
                    title: 'Video Call',
                    textColor: FlutterFlowTheme.of(context).primaryText,
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('MORE_OPTION_Container_yebzk1dk_ON_TAP');
                  logFirebaseEvent('NavBtn_08_navigate_to');

                  context.pushNamed(
                    AudioCallWidget.routeName,
                    queryParameters: {
                      'image': serializeParam(
                        widget.image,
                        ParamType.String,
                      ),
                      'name': serializeParam(
                        widget.name,
                        ParamType.String,
                      ),
                    }.withoutNulls,
                  );
                },
                child: wrapWithModel(
                  model: _model.navBtn08Model2,
                  updateCallback: () => safeSetState(() {}),
                  child: NavBtn08Widget(
                    leadingIcon: Icon(
                      FFIcons.kphone,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 20.0,
                    ),
                    title: 'Audio Call',
                    textColor: FlutterFlowTheme.of(context).primaryText,
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('MORE_OPTION_Container_u04jab5s_ON_TAP');
                  logFirebaseEvent('NavBtn_08_close_dialog_drawer_etc');
                  Navigator.pop(context);
                },
                child: wrapWithModel(
                  model: _model.navBtn08Model3,
                  updateCallback: () => safeSetState(() {}),
                  child: NavBtn08Widget(
                    leadingIcon: Icon(
                      FFIcons.kinfo,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 20.0,
                    ),
                    title: 'View contact',
                    textColor: FlutterFlowTheme.of(context).primaryText,
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('MORE_OPTION_Container_wyyokih8_ON_TAP');
                  logFirebaseEvent('NavBtn_08_close_dialog_drawer_etc');
                  Navigator.pop(context);
                },
                child: wrapWithModel(
                  model: _model.navBtn08Model4,
                  updateCallback: () => safeSetState(() {}),
                  child: NavBtn08Widget(
                    leadingIcon: Icon(
                      FFIcons.ksparkles,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 20.0,
                    ),
                    title: 'Clear chat',
                    textColor: FlutterFlowTheme.of(context).primaryText,
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('MORE_OPTION_Container_99c1rbih_ON_TAP');
                  logFirebaseEvent('NavBtn_08_close_dialog_drawer_etc');
                  Navigator.pop(context);
                },
                child: wrapWithModel(
                  model: _model.navBtn08Model5,
                  updateCallback: () => safeSetState(() {}),
                  child: NavBtn08Widget(
                    leadingIcon: Icon(
                      FFIcons.kban,
                      color: FlutterFlowTheme.of(context).error,
                      size: 20.0,
                    ),
                    title: 'Block',
                    textColor: FlutterFlowTheme.of(context).error,
                  ),
                ),
              ),
            ].addToStart(SizedBox(height: 8.0)).addToEnd(SizedBox(height: 4.0)),
          ),
        ),
      ),
    );
  }
}
