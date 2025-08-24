import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/text_card/text_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'fact_feature_model.dart';
export 'fact_feature_model.dart';

class FactFeatureWidget extends StatefulWidget {
  const FactFeatureWidget({super.key});

  static String routeName = 'FactFeature';
  static String routePath = '/factFeature';

  @override
  State<FactFeatureWidget> createState() => _FactFeatureWidgetState();
}

class _FactFeatureWidgetState extends State<FactFeatureWidget> {
  late FactFeatureModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FactFeatureModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'FactFeature'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('FACT_FEATURE_FactFeature_ON_INIT_STATE');
      logFirebaseEvent('FactFeature_update_app_state');
      FFAppState().pageSelector = 'Home';
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: EdgeInsets.all(8.0),
            child: FlutterFlowIconButton(
              borderRadius: 50.0,
              buttonSize: 40.0,
              fillColor: Colors.transparent,
              icon: Icon(
                Icons.arrow_back,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 22.0,
              ),
              onPressed: () async {
                logFirebaseEvent('FACT_FEATURE_PAGE_arrow_back_ICN_ON_TAP');
                logFirebaseEvent('IconButton_navigate_back');
                context.safePop();
              },
            ),
          ),
          title: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'i84e305g' /* Fact & Feature */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.cairo(
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 18.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 20.0, 0.0),
              child: Icon(
                FFIcons.kdotsCircleHorizontal,
                color: Colors.transparent,
                size: 24.0,
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              '9m4eektx' /* Bedrooms & bathrooms */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.cairo(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.textCardModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: TextCardWidget(
                                  title: 'Bedrooms: 6',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textCardModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: TextCardWidget(
                                  title: 'Bathrooms: 5',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textCardModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: TextCardWidget(
                                  title: 'Full bathrooms: 1',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textCardModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: TextCardWidget(
                                  title: '3/4 bathrooms: 3',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textCardModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: TextCardWidget(
                                  title: '1/2 bathrooms: 1',
                                ),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                        ].divide(SizedBox(height: 10.0)),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'zugs8a8s' /* Interior area */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.cairo(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.textCardModel6,
                                updateCallback: () => safeSetState(() {}),
                                child: TextCardWidget(
                                  title: 'Total structure area: 6,428',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textCardModel7,
                                updateCallback: () => safeSetState(() {}),
                                child: TextCardWidget(
                                  title:
                                      'Total interior livable area: 6,428 sqft',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textCardModel8,
                                updateCallback: () => safeSetState(() {}),
                                child: TextCardWidget(
                                  title: 'Finished area above ground: 3,629',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textCardModel9,
                                updateCallback: () => safeSetState(() {}),
                                child: TextCardWidget(
                                  title: 'Finished area below ground: 2,799',
                                ),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                        ].divide(SizedBox(height: 10.0)),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              '7bbhy6je' /* Features */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.cairo(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.textCardModel10,
                                updateCallback: () => safeSetState(() {}),
                                child: TextCardWidget(
                                  title:
                                      '6-Panel Doors, French Doors, Pantry, Secondary Suite w/in Home, Wet Bar',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textCardModel11,
                                updateCallback: () => safeSetState(() {}),
                                child: TextCardWidget(
                                  title: 'Flooring: Carpet, Tile, Wood',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textCardModel12,
                                updateCallback: () => safeSetState(() {}),
                                child: TextCardWidget(
                                  title:
                                      'Basement: Walk-Out Access, Partially Finished',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textCardModel13,
                                updateCallback: () => safeSetState(() {}),
                                child: TextCardWidget(
                                  title: 'Number of fireplaces: 3',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textCardModel14,
                                updateCallback: () => safeSetState(() {}),
                                child: TextCardWidget(
                                  title: 'Fireplace features: Gas, Three',
                                ),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                        ].divide(SizedBox(height: 10.0)),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'bh7m8xmu' /* Basement */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.cairo(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.textCardModel15,
                                updateCallback: () => safeSetState(() {}),
                                child: TextCardWidget(
                                  title: 'Area: 2799',
                                ),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                        ].divide(SizedBox(height: 10.0)),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'pt7g2lrt' /* Cooling */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.cairo(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.textCardModel16,
                                updateCallback: () => safeSetState(() {}),
                                child: TextCardWidget(
                                  title: 'Ceiling Fan(s), Central Air',
                                ),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                        ].divide(SizedBox(height: 10.0)),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'r3d1smdb' /* Parking */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.cairo(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.textCardModel17,
                                updateCallback: () => safeSetState(() {}),
                                child: TextCardWidget(
                                  title: 'Total spaces: 3',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textCardModel18,
                                updateCallback: () => safeSetState(() {}),
                                child: TextCardWidget(
                                  title:
                                      'Parking features: Attached, Heated Garage, Oversized, RV Access/Parking',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textCardModel19,
                                updateCallback: () => safeSetState(() {}),
                                child: TextCardWidget(
                                  title: 'Attached garage spaces: 3',
                                ),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                        ].divide(SizedBox(height: 10.0)),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              '77ku4sbn' /* Lot */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.cairo(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.textCardModel20,
                                updateCallback: () => safeSetState(() {}),
                                child: TextCardWidget(
                                  title: 'Size: 1.18 Acres',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textCardModel21,
                                updateCallback: () => safeSetState(() {}),
                                child: TextCardWidget(
                                  title:
                                      'Features: Level, Sloped, See Remarks, Landscaped',
                                ),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                        ].divide(SizedBox(height: 10.0)),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              '2olf2dv5' /* Type & style */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.cairo(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.textCardModel22,
                                updateCallback: () => safeSetState(() {}),
                                child: TextCardWidget(
                                  title: 'Home type: SingleFamily',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textCardModel23,
                                updateCallback: () => safeSetState(() {}),
                                child: TextCardWidget(
                                  title: 'Architectural style: Ranch',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textCardModel24,
                                updateCallback: () => safeSetState(() {}),
                                child: TextCardWidget(
                                  title:
                                      'Property subtype: Single Family\nResidence',
                                ),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                        ].divide(SizedBox(height: 10.0)),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'ostrv2iq' /* Condition */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.cairo(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.textCardModel25,
                                updateCallback: () => safeSetState(() {}),
                                child: TextCardWidget(
                                  title: 'Existing Home',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textCardModel26,
                                updateCallback: () => safeSetState(() {}),
                                child: TextCardWidget(
                                  title: 'New construction: No',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textCardModel27,
                                updateCallback: () => safeSetState(() {}),
                                child: TextCardWidget(
                                  title: 'Year built: 1980',
                                ),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                        ].divide(SizedBox(height: 10.0)),
                      ),
                    ].divide(SizedBox(height: 24.0)),
                  ),
                ),
              ].addToEnd(SizedBox(height: 24.0)),
            ),
          ),
        ),
      ),
    );
  }
}
