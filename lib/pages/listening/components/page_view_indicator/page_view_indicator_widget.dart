import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'page_view_indicator_model.dart';
export 'page_view_indicator_model.dart';

class PageViewIndicatorWidget extends StatefulWidget {
  const PageViewIndicatorWidget({
    super.key,
    required this.active,
    required this.action,
  });

  final bool? active;
  final Future Function()? action;

  @override
  State<PageViewIndicatorWidget> createState() =>
      _PageViewIndicatorWidgetState();
}

class _PageViewIndicatorWidgetState extends State<PageViewIndicatorWidget> {
  late PageViewIndicatorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageViewIndicatorModel());

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
        logFirebaseEvent('VIEW_INDICATOR_Container_zurlr1yh_ON_TAP');
        logFirebaseEvent('Container_execute_callback');
        await widget.action?.call();
      },
      child: Container(
        width: 100.0,
        height: 6.0,
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            widget.active!
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).alternate,
            FlutterFlowTheme.of(context).alternate,
          ),
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
    );
  }
}
