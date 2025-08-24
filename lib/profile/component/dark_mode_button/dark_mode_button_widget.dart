import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'dark_mode_button_model.dart';
export 'dark_mode_button_model.dart';

class DarkModeButtonWidget extends StatefulWidget {
  const DarkModeButtonWidget({
    super.key,
    required this.active,
    required this.switchAction,
  });

  final bool? active;
  final Future Function()? switchAction;

  @override
  State<DarkModeButtonWidget> createState() => _DarkModeButtonWidgetState();
}

class _DarkModeButtonWidgetState extends State<DarkModeButtonWidget> {
  late DarkModeButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DarkModeButtonModel());

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
        logFirebaseEvent('DARK_MODE_BUTTON_Container_c7zgmnae_ON_T');
        logFirebaseEvent('Container_execute_callback');
        await widget.switchAction?.call();
      },
      child: Container(
        width: 44.0,
        height: 26.0,
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            widget.active!
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).alternate,
            FlutterFlowTheme.of(context).alternate,
          ),
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(3.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(
                      valueOrDefault<double>(
                        widget.active! ? 1.0 : -1.0,
                        -1.0,
                      ),
                      0.0),
                  child: Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
