import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nav_btn_model.dart';
export 'nav_btn_model.dart';

class NavBtnWidget extends StatefulWidget {
  const NavBtnWidget({
    super.key,
    required this.icon,
    required this.icon2,
    required this.title,
  });

  final Widget? icon;
  final Widget? icon2;
  final String? title;

  @override
  State<NavBtnWidget> createState() => _NavBtnWidgetState();
}

class _NavBtnWidgetState extends State<NavBtnWidget> {
  late NavBtnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBtnModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50.0,
            height: 28.0,
            decoration: BoxDecoration(
              color: valueOrDefault<Color>(
                FFAppState().pageSelector == widget.title
                    ? valueOrDefault<Color>(
                        functions.colorOpacity(
                            FlutterFlowTheme.of(context).primary, 14),
                        Color(0x23CF814D),
                      )
                    : Colors.transparent,
                Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Builder(
                builder: (context) {
                  if (FFAppState().pageSelector == widget.title) {
                    return widget.icon!;
                  } else {
                    return widget.icon2!;
                  }
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                0.0,
                valueOrDefault<double>(
                  FFAppState().pageSelector == widget.title ? 2.0 : 0.0,
                  0.0,
                ),
                0.0,
                0.0),
            child: Text(
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
                      FFAppState().pageSelector == widget.title
                          ? FlutterFlowTheme.of(context).primary
                          : FlutterFlowTheme.of(context).secondaryText,
                      FlutterFlowTheme.of(context).secondaryText,
                    ),
                    fontSize: 11.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
          ),
        ].divide(SizedBox(height: 4.0)),
      ),
    );
  }
}
