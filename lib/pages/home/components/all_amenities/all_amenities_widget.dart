import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/home/components/amenities_card/amenities_card_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'all_amenities_model.dart';
export 'all_amenities_model.dart';

class AllAmenitiesWidget extends StatefulWidget {
  const AllAmenitiesWidget({
    super.key,
    required this.image,
    required this.title,
  });

  final String? image;
  final String? title;

  @override
  State<AllAmenitiesWidget> createState() => _AllAmenitiesWidgetState();
}

class _AllAmenitiesWidgetState extends State<AllAmenitiesWidget> {
  late AllAmenitiesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllAmenitiesModel());

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
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12.0),
            bottomRight: Radius.circular(12.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
          child: Container(
            width: double.infinity,
            height: 660.0,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12.0),
                bottomRight: Radius.circular(12.0),
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    valueOrDefault<String>(
                      widget.image,
                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/lmuutypudrlt/Imafvdgffe.png',
                    ),
                    width: double.infinity,
                    height: 120.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 90.0, 0.0, 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 200.0,
                          color: Colors.black,
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                          spreadRadius: 60.0,
                        )
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Container(
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 200.0,
                              color: Colors.black,
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                              spreadRadius: 40.0,
                            )
                          ],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '1pe1ky2i' /* Amenities */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.cairo(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            wrapWithModel(
                                              model: _model.amenitiesCardModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: AmenitiesCardWidget(
                                                title: 'Amphitheater',
                                                icon: Icon(
                                                  FFIcons.kabacus,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.amenitiesCardModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: AmenitiesCardWidget(
                                                title: 'Cricket pitch',
                                                icon: Icon(
                                                  FFIcons.kcricket,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.amenitiesCardModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: AmenitiesCardWidget(
                                                title: 'Gazebo',
                                                icon: Icon(
                                                  FFIcons.kcategory2,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.amenitiesCardModel4,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: AmenitiesCardWidget(
                                                title: 'Swimming Pool',
                                                icon: Icon(
                                                  FFIcons.kswimming,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.amenitiesCardModel5,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: AmenitiesCardWidget(
                                                title:
                                                    'Landscaping & Tree Planting',
                                                icon: Icon(
                                                  FFIcons.ktree,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.amenitiesCardModel6,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: AmenitiesCardWidget(
                                                title: 'Tabble Tannis',
                                                icon: Icon(
                                                  FFIcons.ktablets,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.amenitiesCardModel7,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: AmenitiesCardWidget(
                                                title: 'Free Fighting System',
                                                icon: Icon(
                                                  FFIcons.kantenna,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.amenitiesCardModel8,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: AmenitiesCardWidget(
                                                title: 'Free Fighting System',
                                                icon: Icon(
                                                  FFIcons.kantenna,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.amenitiesCardModel9,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: AmenitiesCardWidget(
                                                title: 'Gymnasium',
                                                icon: Icon(
                                                  FFIcons.kdumbbell,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.amenitiesCardModel10,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: AmenitiesCardWidget(
                                                title: 'Amphitheater',
                                                icon: Icon(
                                                  FFIcons.kabacus,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.amenitiesCardModel11,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: AmenitiesCardWidget(
                                                title: 'Cricket pitch',
                                                icon: Icon(
                                                  FFIcons.kcricket,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.amenitiesCardModel12,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: AmenitiesCardWidget(
                                                title: 'Gazebo',
                                                icon: Icon(
                                                  FFIcons.kcategory2,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.amenitiesCardModel13,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: AmenitiesCardWidget(
                                                title: 'Swimming Pool',
                                                icon: Icon(
                                                  FFIcons.kswimming,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.amenitiesCardModel14,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: AmenitiesCardWidget(
                                                title:
                                                    'Landscaping & Tree Planting',
                                                icon: Icon(
                                                  FFIcons.ktree,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.amenitiesCardModel15,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: AmenitiesCardWidget(
                                                title: 'Tabble Tannis',
                                                icon: Icon(
                                                  FFIcons.ktablets,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.amenitiesCardModel16,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: AmenitiesCardWidget(
                                                title: 'Gymnasium',
                                                icon: Icon(
                                                  FFIcons.kdumbbell,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 10.0)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 16.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'ALL_AMENITIES_COMP_VIEW_PHONE_BTN_ON_TAP');
                                        logFirebaseEvent(
                                            'Button_close_dialog_drawer_etc');
                                        Navigator.pop(context);
                                        logFirebaseEvent('Button_navigate_to');

                                        context.pushNamed(
                                            ConntactAgentWidget.routeName);
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        '497j0nkr' /* View Phone */,
                                      ),
                                      options: FFButtonOptions(
                                        width: 120.0,
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0x33567FED),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              font: GoogleFonts.cairo(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                        elevation: 0.0,
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                      ),
                                    ),
                                    Expanded(
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'ALL_AMENITIES_CONTACT_DEVELOPER_BTN_ON_T');
                                          logFirebaseEvent(
                                              'Button_close_dialog_drawer_etc');
                                          Navigator.pop(context);
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          '28fpofjs' /* Contact Developer */,
                                        ),
                                        options: FFButtonOptions(
                                          width: 200.0,
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts.cairo(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                          elevation: 0.0,
                                          borderRadius:
                                              BorderRadius.circular(6.0),
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 12.0)),
                                ),
                              ),
                            ].divide(SizedBox(height: 12.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 26.0, 12.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget.title,
                          'Azure Rathalos',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.cairo(
                                fontWeight: FontWeight.normal,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).info,
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'vrntup6y' /* by Unique Dreame Builders */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.cairo(
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: Color(0xFFC5CCD6),
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'yt2bhvcs' /* 880,000  USD */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.cairo(
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).info,
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ].divide(SizedBox(height: 4.0)),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(1.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 12.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'ALL_AMENITIES_COMP_Icon_qx0tdwzb_ON_TAP');
                        logFirebaseEvent('Icon_close_dialog_drawer_etc');
                        Navigator.pop(context);
                      },
                      child: Icon(
                        FFIcons.kx,
                        color: FlutterFlowTheme.of(context).info,
                        size: 24.0,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Container(
                      width: 24.0,
                      height: 4.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
