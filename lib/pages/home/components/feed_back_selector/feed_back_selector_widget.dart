import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'feed_back_selector_model.dart';
export 'feed_back_selector_model.dart';

class FeedBackSelectorWidget extends StatefulWidget {
  const FeedBackSelectorWidget({
    super.key,
    required this.title,
    required this.active,
    required this.action,
  });

  final String? title;
  final String? active;
  final Future Function(String title)? action;

  @override
  State<FeedBackSelectorWidget> createState() => _FeedBackSelectorWidgetState();
}

class _FeedBackSelectorWidgetState extends State<FeedBackSelectorWidget> {
  late FeedBackSelectorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeedBackSelectorModel());

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
        logFirebaseEvent('FEED_BACK_SELECTOR_Container_rhxrtii9_ON');
        logFirebaseEvent('Container_execute_callback');
        await widget.action?.call(
          widget.title!,
        );
      },
      child: Container(
        width: 100.0,
        height: 36.0,
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            widget.title == widget.active
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).quaternary,
            FlutterFlowTheme.of(context).quaternary,
          ),
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
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
                    widget.title == widget.active
                        ? FlutterFlowTheme.of(context).info
                        : FlutterFlowTheme.of(context).primaryText,
                    FlutterFlowTheme.of(context).primaryText,
                  ),
                  fontSize: 12.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
        ),
      ),
    );
  }
}
