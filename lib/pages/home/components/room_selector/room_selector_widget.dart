import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'room_selector_model.dart';
export 'room_selector_model.dart';

class RoomSelectorWidget extends StatefulWidget {
  const RoomSelectorWidget({
    super.key,
    required this.title,
  });

  final String? title;

  @override
  State<RoomSelectorWidget> createState() => _RoomSelectorWidgetState();
}

class _RoomSelectorWidgetState extends State<RoomSelectorWidget> {
  late RoomSelectorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RoomSelectorModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        logFirebaseEvent('ROOM_SELECTOR_Container_pv74p8yz_ON_TAP');
        logFirebaseEvent('Container_update_component_state');
        _model.active = !_model.active;
        safeSetState(() {});
      },
      child: Container(
        width: 100.0,
        height: 32.0,
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            _model.active ? Color(0x4D567FED) : Colors.transparent,
            Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(
            color: valueOrDefault<Color>(
              _model.active
                  ? FlutterFlowTheme.of(context).primary
                  : FlutterFlowTheme.of(context).alternate,
              FlutterFlowTheme.of(context).alternate,
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 16.0,
                height: 16.0,
                decoration: BoxDecoration(
                  color: valueOrDefault<Color>(
                    _model.active
                        ? FlutterFlowTheme.of(context).primary
                        : Colors.transparent,
                    Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(4.0),
                  border: Border.all(
                    color: valueOrDefault<Color>(
                      _model.active
                          ? FlutterFlowTheme.of(context).primary
                          : FlutterFlowTheme.of(context).alternate,
                      FlutterFlowTheme.of(context).alternate,
                    ),
                  ),
                ),
                child: Icon(
                  FFIcons.kcheck,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  size: 12.0,
                ),
              ),
              Text(
                valueOrDefault<String>(
                  widget.title,
                  'NA',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.cairo(
                        fontWeight: FontWeight.w500,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      color: valueOrDefault<Color>(
                        _model.active
                            ? FlutterFlowTheme.of(context).primary
                            : FlutterFlowTheme.of(context).primaryText,
                        FlutterFlowTheme.of(context).primaryText,
                      ),
                      fontSize: 13.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
              ),
            ].divide(SizedBox(width: 6.0)),
          ),
        ),
      ),
    );
  }
}
