import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/home/components/date_card/date_card_widget.dart';
import '/pages/home/components/tour_slector/tour_slector_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'requesta_tour_model.dart';
export 'requesta_tour_model.dart';

class RequestaTourWidget extends StatefulWidget {
  const RequestaTourWidget({super.key});

  static String routeName = 'RequestaTour';
  static String routePath = '/requestatour';

  @override
  State<RequestaTourWidget> createState() => _RequestaTourWidgetState();
}

class _RequestaTourWidgetState extends State<RequestaTourWidget>
    with TickerProviderStateMixin {
  late RequestaTourModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RequestaTourModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'RequestaTour'});
    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
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
                logFirebaseEvent('REQUESTA_TOUR_PAGE_arrow_back_ICN_ON_TAP');
                logFirebaseEvent('IconButton_navigate_back');
                context.safePop();
              },
            ),
          ),
          title: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'nilajgtt' /* Request a tour */,
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
                size: 22.0,
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '6qddvs94' /* Let us know when you're availa... */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.cairo(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                  lineHeight: 1.5,
                                ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '8sy25wqq' /* Select your desired date */,
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
                                          fontSize: 15.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    wrapWithModel(
                                      model: _model.dateCardModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: DateCardWidget(
                                        date: '7',
                                        day: 'Mon',
                                        active: _model.selector,
                                        action: (title) async {
                                          logFirebaseEvent(
                                              'REQUESTA_TOUR_Container_2sqjpj77_CALLBAC');
                                          logFirebaseEvent(
                                              'DateCard_update_page_state');
                                          _model.selector = title;
                                          safeSetState(() {});
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.dateCardModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: DateCardWidget(
                                        date: '8',
                                        day: 'Tue',
                                        active: _model.selector,
                                        action: (title) async {
                                          logFirebaseEvent(
                                              'REQUESTA_TOUR_Container_8dld91gi_CALLBAC');
                                          logFirebaseEvent(
                                              'DateCard_update_page_state');
                                          _model.selector = title;
                                          safeSetState(() {});
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.dateCardModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: DateCardWidget(
                                        date: '9',
                                        day: 'Wed',
                                        active: _model.selector,
                                        action: (title) async {
                                          logFirebaseEvent(
                                              'REQUESTA_TOUR_Container_rtfisodw_CALLBAC');
                                          logFirebaseEvent(
                                              'DateCard_update_page_state');
                                          _model.selector = title;
                                          safeSetState(() {});
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.dateCardModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: DateCardWidget(
                                        date: '10',
                                        day: 'Thu',
                                        active: _model.selector,
                                        action: (title) async {
                                          logFirebaseEvent(
                                              'REQUESTA_TOUR_Container_0puxji8t_CALLBAC');
                                          logFirebaseEvent(
                                              'DateCard_update_page_state');
                                          _model.selector = title;
                                          safeSetState(() {});
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.dateCardModel5,
                                      updateCallback: () => safeSetState(() {}),
                                      child: DateCardWidget(
                                        date: '11',
                                        day: 'Fri',
                                        active: _model.selector,
                                        action: (title) async {
                                          logFirebaseEvent(
                                              'REQUESTA_TOUR_Container_5w6ounz8_CALLBAC');
                                          logFirebaseEvent(
                                              'DateCard_update_page_state');
                                          _model.selector = title;
                                          safeSetState(() {});
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.dateCardModel6,
                                      updateCallback: () => safeSetState(() {}),
                                      child: DateCardWidget(
                                        date: '12',
                                        day: 'Sat',
                                        active: _model.selector,
                                        action: (title) async {
                                          logFirebaseEvent(
                                              'REQUESTA_TOUR_Container_2tmyr2kr_CALLBAC');
                                          logFirebaseEvent(
                                              'DateCard_update_page_state');
                                          _model.selector = title;
                                          safeSetState(() {});
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.dateCardModel7,
                                      updateCallback: () => safeSetState(() {}),
                                      child: DateCardWidget(
                                        date: '13',
                                        day: 'Sun',
                                        active: _model.selector,
                                        action: (title) async {
                                          logFirebaseEvent(
                                              'REQUESTA_TOUR_Container_2mdb1phm_CALLBAC');
                                          logFirebaseEvent(
                                              'DateCard_update_page_state');
                                          _model.selector = title;
                                          safeSetState(() {});
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.dateCardModel8,
                                      updateCallback: () => safeSetState(() {}),
                                      child: DateCardWidget(
                                        date: '14',
                                        day: 'Mon',
                                        active: _model.selector,
                                        action: (title) async {
                                          logFirebaseEvent(
                                              'REQUESTA_TOUR_Container_f45kj3ai_CALLBAC');
                                          logFirebaseEvent(
                                              'DateCard_update_page_state');
                                          _model.selector = title;
                                          safeSetState(() {});
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.dateCardModel9,
                                      updateCallback: () => safeSetState(() {}),
                                      child: DateCardWidget(
                                        date: '15',
                                        day: 'Tue',
                                        active: _model.selector,
                                        action: (title) async {
                                          logFirebaseEvent(
                                              'REQUESTA_TOUR_Container_au3abobk_CALLBAC');
                                          logFirebaseEvent(
                                              'DateCard_update_page_state');
                                          _model.selector = title;
                                          safeSetState(() {});
                                        },
                                      ),
                                    ),
                                  ]
                                      .divide(SizedBox(width: 8.0))
                                      .addToStart(SizedBox(width: 12.0))
                                      .addToEnd(SizedBox(width: 12.0)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '8bw5bhiy' /* Select the timeslots you're av... */,
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
                                          fontSize: 15.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  wrapWithModel(
                                    model: _model.tourSlectorModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: TourSlectorWidget(
                                      title: 'Anytime',
                                      active: _model.timeSelector,
                                      action: (title) async {
                                        logFirebaseEvent(
                                            'REQUESTA_TOUR_Container_52f8idrs_CALLBAC');
                                        logFirebaseEvent(
                                            'TourSlector_update_page_state');
                                        _model.timeSelector = title;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: wrapWithModel(
                                          model: _model.tourSlectorModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: TourSlectorWidget(
                                            title: '09:00-12:00',
                                            active: _model.timeSelector,
                                            action: (title) async {
                                              logFirebaseEvent(
                                                  'REQUESTA_TOUR_Container_uf85hdgf_CALLBAC');
                                              logFirebaseEvent(
                                                  'TourSlector_update_page_state');
                                              _model.timeSelector = title;
                                              safeSetState(() {});
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: wrapWithModel(
                                          model: _model.tourSlectorModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: TourSlectorWidget(
                                            title: '12:00-14:00',
                                            active: _model.timeSelector,
                                            action: (title) async {
                                              logFirebaseEvent(
                                                  'REQUESTA_TOUR_Container_uklnmh54_CALLBAC');
                                              logFirebaseEvent(
                                                  'TourSlector_update_page_state');
                                              _model.timeSelector = title;
                                              safeSetState(() {});
                                            },
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 12.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: wrapWithModel(
                                          model: _model.tourSlectorModel4,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: TourSlectorWidget(
                                            title: '14:00-17:00',
                                            active: _model.timeSelector,
                                            action: (title) async {
                                              logFirebaseEvent(
                                                  'REQUESTA_TOUR_Container_rdefy4e3_CALLBAC');
                                              logFirebaseEvent(
                                                  'TourSlector_update_page_state');
                                              _model.timeSelector = title;
                                              safeSetState(() {});
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: wrapWithModel(
                                          model: _model.tourSlectorModel5,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: TourSlectorWidget(
                                            title: '17:00-20:00',
                                            active: _model.timeSelector,
                                            action: (title) async {
                                              logFirebaseEvent(
                                                  'REQUESTA_TOUR_Container_eaxu8t5l_CALLBAC');
                                              logFirebaseEvent(
                                                  'TourSlector_update_page_state');
                                              _model.timeSelector = title;
                                              safeSetState(() {});
                                            },
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 12.0)),
                                  ),
                                ].divide(SizedBox(height: 12.0)),
                              ),
                            ].divide(SizedBox(height: 20.0)),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'y1t33e0d' /* Time in El Paso County (GMT-7,... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.cairo(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                      lineHeight: 1.5,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ].divide(SizedBox(height: 24.0)),
                    ),
                  ]
                      .addToStart(SizedBox(height: 24.0))
                      .addToEnd(SizedBox(height: 24.0)),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10.0,
                    color: Color(0x19000000),
                    offset: Offset(
                      0.0,
                      -4.0,
                    ),
                    spreadRadius: 2.0,
                  )
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 20.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'REQUESTA_TOUR_PAGE_CONTINUE_BTN_ON_TAP');
                        logFirebaseEvent('Button_navigate_to');

                        context.pushNamed(RequestaTour02Widget.routeName);
                      },
                      text: FFLocalizations.of(context).getText(
                        'lcv3e1u7' /* Continue */,
                      ),
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 44.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  font: GoogleFonts.cairo(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
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
                ],
              ),
            ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
          ],
        ),
      ),
    );
  }
}
