import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'indicator_model.dart';
export 'indicator_model.dart';

class IndicatorWidget extends StatefulWidget {
  const IndicatorWidget({
    super.key,
    required this.active,
    required this.action,
  });

  final bool? active;
  final Future Function()? action;

  @override
  State<IndicatorWidget> createState() => _IndicatorWidgetState();
}

class _IndicatorWidgetState extends State<IndicatorWidget> {
  late IndicatorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IndicatorModel());

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
        logFirebaseEvent('INDICATOR_COMP_Container_9r47g5b2_ON_TAP');
        logFirebaseEvent('Container_execute_callback');
        await widget.action?.call();
      },
      child: Container(
        width: valueOrDefault<double>(
          widget.active! ? 20.0 : 6.0,
          6.0,
        ),
        height: 6.0,
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            widget.active!
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).secondaryText,
            FlutterFlowTheme.of(context).secondaryText,
          ),
          borderRadius: BorderRadius.circular(50.0),
          shape: BoxShape.rectangle,
        ),
      ),
    );
  }
}
