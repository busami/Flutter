import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'selector02_model.dart';
export 'selector02_model.dart';

class Selector02Widget extends StatefulWidget {
  const Selector02Widget({
    super.key,
    required this.title,
    required this.active,
    required this.action,
    required this.width,
  });

  final String? title;
  final String? active;
  final Future Function(String title)? action;
  final double? width;

  @override
  State<Selector02Widget> createState() => _Selector02WidgetState();
}

class _Selector02WidgetState extends State<Selector02Widget> {
  late Selector02Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Selector02Model());

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
        logFirebaseEvent('SELECTOR_02_Container_w1xlfcoy_ON_TAP');
        logFirebaseEvent('Container_execute_callback');
        await widget.action?.call(
          widget.title!,
        );
      },
      child: Container(
        decoration: BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
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
                      widget.title == widget.active
                          ? FlutterFlowTheme.of(context).info
                          : FlutterFlowTheme.of(context).secondaryText,
                      FlutterFlowTheme.of(context).secondaryText,
                    ),
                    fontSize: 12.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            Container(
              width: widget.width,
              height: 2.0,
              decoration: BoxDecoration(
                color: valueOrDefault<Color>(
                  widget.title == widget.active
                      ? FlutterFlowTheme.of(context).info
                      : Colors.transparent,
                  Colors.transparent,
                ),
              ),
            ),
          ].divide(SizedBox(height: 13.0)),
        ),
      ),
    );
  }
}
