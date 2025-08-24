import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dashed_btn_model.dart';
export 'dashed_btn_model.dart';

class DashedBtnWidget extends StatefulWidget {
  const DashedBtnWidget({super.key});

  @override
  State<DashedBtnWidget> createState() => _DashedBtnWidgetState();
}

class _DashedBtnWidgetState extends State<DashedBtnWidget> {
  late DashedBtnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashedBtnModel());

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
      height: 44.0,
      decoration: BoxDecoration(),
      child: Container(
        width: double.infinity,
        child: Stack(
          alignment: AlignmentDirectional(0.0, 0.0),
          children: [
            SvgPicture.asset(
              'assets/images/dashed-border.svg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FFIcons.kplus,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 18.0,
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'ibak78nj' /* Add New Address */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.cairo(
                          fontWeight: FontWeight.w500,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).primary,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ].divide(SizedBox(width: 12.0)),
            ),
          ],
        ),
      ),
    );
  }
}
