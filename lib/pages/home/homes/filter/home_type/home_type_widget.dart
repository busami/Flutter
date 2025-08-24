import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/home/homes/filter/filter_option_card/filter_option_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_type_model.dart';
export 'home_type_model.dart';

class HomeTypeWidget extends StatefulWidget {
  const HomeTypeWidget({super.key});

  @override
  State<HomeTypeWidget> createState() => _HomeTypeWidgetState();
}

class _HomeTypeWidgetState extends State<HomeTypeWidget> {
  late HomeTypeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeTypeModel());

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
              color: FlutterFlowTheme.of(context).secondaryBackground,
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
                            'xc31oo34' /* Home Type */,
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
                                'HOME_TYPE_COMP_Icon_uoeq6xl7_ON_TAP');
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
                          title: 'Houses',
                          active: _model.selector,
                          action: (title) async {
                            logFirebaseEvent(
                                'HOME_TYPE_Container_6p116tkw_CALLBACK');
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
                          title: 'Townhomes',
                          active: _model.selector,
                          action: (title) async {
                            logFirebaseEvent(
                                'HOME_TYPE_Container_t972pgkd_CALLBACK');
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
                          title: 'Apartments',
                          active: _model.selector,
                          action: (title) async {
                            logFirebaseEvent(
                                'HOME_TYPE_Container_gn3xd1qp_CALLBACK');
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
                          title: 'Lots/Land',
                          active: _model.selector,
                          action: (title) async {
                            logFirebaseEvent(
                                'HOME_TYPE_Container_ufiq3nfu_CALLBACK');
                            logFirebaseEvent(
                                'FilterOptionCard_update_component_state');
                            _model.selector = title;
                            safeSetState(() {});
                          },
                        ),
                      ),
                      wrapWithModel(
                        model: _model.filterOptionCardModel5,
                        updateCallback: () => safeSetState(() {}),
                        child: FilterOptionCardWidget(
                          title: 'Maufactured',
                          active: _model.selector,
                          action: (title) async {
                            logFirebaseEvent(
                                'HOME_TYPE_Container_op0kzckb_CALLBACK');
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
                            logFirebaseEvent('HOME_TYPE_COMP_APPLY_BTN_ON_TAP');
                            logFirebaseEvent('Button_close_dialog_drawer_etc');
                            Navigator.pop(context);
                          },
                          text: FFLocalizations.of(context).getText(
                            'm75xmdi5' /* Apply */,
                          ),
                          options: FFButtonOptions(
                            height: 44.0,
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
                ].divide(SizedBox(height: 24.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
