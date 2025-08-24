import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'number_text_model.dart';
export 'number_text_model.dart';

class NumberTextWidget extends StatefulWidget {
  const NumberTextWidget({
    super.key,
    required this.number,
    required this.title,
  });

  final String? number;
  final String? title;

  @override
  State<NumberTextWidget> createState() => _NumberTextWidgetState();
}

class _NumberTextWidgetState extends State<NumberTextWidget> {
  late NumberTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NumberTextModel());

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
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 7.0, 0.0, 0.0),
            child: Container(
              width: 4.0,
              height: 4.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryText,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Expanded(
            child: RichText(
              textScaler: MediaQuery.of(context).textScaler,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: valueOrDefault<String>(
                      widget.number,
                      'NA',
                    ),
                    style: TextStyle(),
                  ),
                  TextSpan(
                    text: FFLocalizations.of(context).getText(
                      'd2uoxaec' /*    */,
                    ),
                    style: GoogleFonts.montserrat(
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontWeight: FontWeight.normal,
                      fontSize: 11.0,
                    ),
                  ),
                  TextSpan(
                    text: valueOrDefault<String>(
                      widget.title,
                      'NA',
                    ),
                    style: GoogleFonts.montserrat(
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontWeight: FontWeight.normal,
                      fontSize: 11.0,
                      height: 1.5,
                    ),
                  )
                ],
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.cairo(
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      fontSize: 11.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      lineHeight: 1.5,
                    ),
              ),
            ),
          ),
        ].divide(SizedBox(width: 6.0)),
      ),
    );
  }
}
