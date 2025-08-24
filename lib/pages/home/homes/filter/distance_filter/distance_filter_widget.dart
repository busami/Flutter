import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/home/homes/filter/filter_option_card/filter_option_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'distance_filter_model.dart';
export 'distance_filter_model.dart';

class DistanceFilterWidget extends StatefulWidget {
  const DistanceFilterWidget({super.key});

  @override
  State<DistanceFilterWidget> createState() => _DistanceFilterWidgetState();
}

class _DistanceFilterWidgetState extends State<DistanceFilterWidget> {
  late DistanceFilterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DistanceFilterModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(14.0, 14.0, 14.0, 14.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'suqp98v7' /* Availability */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.cairo(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'DISTANCE_FILTER_Icon_yb64632w_ON_TAP');
                            logFirebaseEvent('Icon_close_dialog_drawer_etc');
                            Navigator.pop(context);
                          },
                          child: Icon(
                            FFIcons.kx,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      wrapWithModel(
                        model: _model.filterOptionCardModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: FilterOptionCardWidget(
                          title: 'Less Then 1 km',
                          active: _model.selector,
                          action: (title) async {
                            logFirebaseEvent(
                                'DISTANCE_FILTER_Container_41yk4oz0_CALLB');
                            logFirebaseEvent(
                                'FilterOptionCard_update_component_state');
                            _model.selector = title;
                            safeSetState(() {});
                          },
                        ),
                      ),
                      wrapWithModel(
                        model: _model.filterOptionCardModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: FilterOptionCardWidget(
                          title: '1 to 5 km',
                          active: _model.selector,
                          action: (title) async {
                            logFirebaseEvent(
                                'DISTANCE_FILTER_Container_iy1gksoo_CALLB');
                            logFirebaseEvent(
                                'FilterOptionCard_update_component_state');
                            _model.selector = title;
                            safeSetState(() {});
                          },
                        ),
                      ),
                      wrapWithModel(
                        model: _model.filterOptionCardModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: FilterOptionCardWidget(
                          title: '5 to 10 km',
                          active: _model.selector,
                          action: (title) async {
                            logFirebaseEvent(
                                'DISTANCE_FILTER_Container_qa7dq7qj_CALLB');
                            logFirebaseEvent(
                                'FilterOptionCard_update_component_state');
                            _model.selector = title;
                            safeSetState(() {});
                          },
                        ),
                      ),
                      wrapWithModel(
                        model: _model.filterOptionCardModel4,
                        updateCallback: () => safeSetState(() {}),
                        child: FilterOptionCardWidget(
                          title: 'More then 10 km',
                          active: _model.selector,
                          action: (title) async {
                            logFirebaseEvent(
                                'DISTANCE_FILTER_Container_s43z1xdm_CALLB');
                            logFirebaseEvent(
                                'FilterOptionCard_update_component_state');
                            _model.selector = title;
                            safeSetState(() {});
                          },
                        ),
                      ),
                    ].divide(SizedBox(height: 10.0)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'DISTANCE_FILTER_COMP_CANCEL_BTN_ON_TAP');
                            logFirebaseEvent('Button_close_dialog_drawer_etc');
                            Navigator.pop(context);
                          },
                          text: FFLocalizations.of(context).getText(
                            '69moek7z' /* Cancel */,
                          ),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0x32CF814D),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.cairo(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      Expanded(
                        child: FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'DISTANCE_FILTER_COMP_CONFITM_BTN_ON_TAP');
                            logFirebaseEvent('Button_close_dialog_drawer_etc');
                            Navigator.pop(context);
                          },
                          text: FFLocalizations.of(context).getText(
                            'lwokc3xf' /* Confitm */,
                          ),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.cairo(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).info,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ].divide(SizedBox(width: 10.0)),
                  ),
                ].divide(SizedBox(height: 20.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
