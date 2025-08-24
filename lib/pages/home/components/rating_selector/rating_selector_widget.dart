import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'rating_selector_model.dart';
export 'rating_selector_model.dart';

class RatingSelectorWidget extends StatefulWidget {
  const RatingSelectorWidget({
    super.key,
    required this.title,
  });

  final String? title;

  @override
  State<RatingSelectorWidget> createState() => _RatingSelectorWidgetState();
}

class _RatingSelectorWidgetState extends State<RatingSelectorWidget> {
  late RatingSelectorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RatingSelectorModel());

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
        logFirebaseEvent('RATING_SELECTOR_Container_ei27cru0_ON_TA');
        logFirebaseEvent('Container_update_component_state');
        _model.active = !_model.active;
        safeSetState(() {});
      },
      child: Container(
        width: 100.0,
        height: 32.0,
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            _model.active ? Color(0x4CF9CF58) : Colors.transparent,
            Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(
            color: valueOrDefault<Color>(
              _model.active
                  ? FlutterFlowTheme.of(context).warning
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
              Icon(
                FFIcons.kstar,
                color: FlutterFlowTheme.of(context).warning,
                size: 20.0,
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
                            ? FlutterFlowTheme.of(context).warning
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
