import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'nav_btn04_model.dart';
export 'nav_btn04_model.dart';

class NavBtn04Widget extends StatefulWidget {
  const NavBtn04Widget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.btnActive,
    required this.icon,
  });

  final String? title;
  final String? subTitle;
  final bool? btnActive;
  final Widget? icon;

  @override
  State<NavBtn04Widget> createState() => _NavBtn04WidgetState();
}

class _NavBtn04WidgetState extends State<NavBtn04Widget> {
  late NavBtn04Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBtn04Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 64.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 42.0,
            height: 42.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: BorderRadius.circular(8.0),
              shape: BoxShape.rectangle,
            ),
            child: widget.icon!,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.title,
                    'NA',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.cairo(
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
                Text(
                  valueOrDefault<String>(
                    widget.subTitle,
                    'NA',
                  ),
                  maxLines: 0,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.cairo(
                          fontWeight: FontWeight.normal,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ].divide(SizedBox(height: 2.0)),
            ),
          ),
          Container(
            width: 42.0,
            height: 24.0,
            child: custom_widgets.CustomSwitch(
              width: 42.0,
              height: 24.0,
              initialValue: widget.btnActive!,
              activeTrackColor: FlutterFlowTheme.of(context).primary,
              inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
              activeThumbColor: FlutterFlowTheme.of(context).primaryBackground,
              inactiveThumbColor:
                  FlutterFlowTheme.of(context).primaryBackground,
              thumbSize: 20,
              thumbPadding: 2,
              trackRadius: 24,
              toggleOn: () async {},
              toggleOff: () async {},
            ),
          ),
        ]
            .divide(SizedBox(width: 12.0))
            .addToStart(SizedBox(width: 12.0))
            .addToEnd(SizedBox(width: 12.0)),
      ),
    );
  }
}
