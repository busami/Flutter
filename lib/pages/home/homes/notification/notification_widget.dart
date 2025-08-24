import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/profile/component/notification_card/notification_card_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'notification_model.dart';
export 'notification_model.dart';

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({super.key});

  static String routeName = 'Notification';
  static String routePath = '/notification';

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  late NotificationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Notification'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('NOTIFICATION_Notification_ON_INIT_STATE');
      logFirebaseEvent('Notification_update_app_state');
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: EdgeInsets.all(8.0),
            child: FlutterFlowIconButton(
              borderRadius: 50.0,
              buttonSize: 40.0,
              fillColor: Colors.transparent,
              icon: Icon(
                FFIcons.karrowLeft,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 20.0,
              ),
              onPressed: () async {
                logFirebaseEvent('NOTIFICATION_PAGE_arrowLeft_ICN_ON_TAP');
                logFirebaseEvent('IconButton_navigate_back');
                context.safePop();
              },
            ),
          ),
          title: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'btj8l9x7' /* Notifications */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.cairo(
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
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
              padding: EdgeInsets.all(8.0),
              child: FlutterFlowIconButton(
                borderRadius: 50.0,
                buttonSize: 40.0,
                fillColor: Colors.transparent,
                icon: Icon(
                  FFIcons.kdotsVertical,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 20.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('NOTIFICATION_dotsVertical_ICN_ON_TAP');
                  logFirebaseEvent('IconButton_navigate_to');

                  context.pushNamed(NotificationSettingWidget.routeName);
                },
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'wwxtlkcp' /* Today */,
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
                              Text(
                                FFLocalizations.of(context).getText(
                                  'goqhfwcc' /* Mark all as read */,
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
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ],
                          ),
                          wrapWithModel(
                            model: _model.notificationCardModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: NotificationCardWidget(
                              icon: Icon(
                                FFIcons.khome,
                                color: FlutterFlowTheme.of(context).error,
                                size: 20.0,
                              ),
                              title: 'New Listings Alert!🏡 ',
                              subTitle:
                                  'Fresh properties just hit the market! Explore the latest homes in your favorite locations before they’re gone.',
                              seen: false,
                              timestamp: random_data.randomDate(),
                              bg: Color(0x2AFF5963),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.notificationCardModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: NotificationCardWidget(
                              icon: Icon(
                                FFIcons.kpin,
                                color: FlutterFlowTheme.of(context).blue,
                                size: 20.0,
                              ),
                              title: 'Nearby Properties for You!📍 ',
                              subTitle:
                                  'Discover amazing homes near your current location. Your dream home might be just around the corner!',
                              seen: false,
                              timestamp: random_data.randomDate(),
                              bg: Color(0x283381FF),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.notificationCardModel3,
                            updateCallback: () => safeSetState(() {}),
                            child: NotificationCardWidget(
                              icon: Icon(
                                FFIcons.ktrendingDown,
                                color: FlutterFlowTheme.of(context).success,
                                size: 20.0,
                              ),
                              title: 'Price Drop Alert!🔥 ',
                              subTitle:
                                  'A property you liked just got more affordable! Check out the new price and make your move before someone else does.',
                              seen: false,
                              timestamp: random_data.randomDate(),
                              bg: Color(0x2A0CAF60),
                            ),
                          ),
                        ].divide(SizedBox(height: 10.0)),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  '0j4fu629' /* Yesterday */,
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
                              Text(
                                FFLocalizations.of(context).getText(
                                  '8uxsgc57' /* Mark all as read */,
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
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ],
                          ),
                          wrapWithModel(
                            model: _model.notificationCardModel4,
                            updateCallback: () => safeSetState(() {}),
                            child: NotificationCardWidget(
                              icon: Icon(
                                FFIcons.kmail,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 20.0,
                              ),
                              title: 'Open House Invitation!📢 ',
                              subTitle:
                                  'Join us for an exclusive open house this weekend. Get a closer look at stunning properties and find your perfect home.',
                              seen: true,
                              timestamp: random_data.randomDate(),
                              bg: Color(0x2B29DDFF),
                            ),
                          ),
                        ].divide(SizedBox(height: 10.0)),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'jj8qr67m' /* All notifications */,
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
                              Text(
                                FFLocalizations.of(context).getText(
                                  'p42s6jnv' /* Mark all as read */,
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
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ],
                          ),
                          wrapWithModel(
                            model: _model.notificationCardModel5,
                            updateCallback: () => safeSetState(() {}),
                            child: NotificationCardWidget(
                              icon: Icon(
                                FFIcons.kdollar,
                                color: FlutterFlowTheme.of(context).purple,
                                size: 20.0,
                              ),
                              title: 'Mortgage Rate Update!💰 ',
                              subTitle:
                                  'Interest rates have changed! See how this impacts your home loan and get the best deal on your future home.',
                              seen: true,
                              timestamp: random_data.randomDate(),
                              bg: Color(0x297D25F3),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.notificationCardModel6,
                            updateCallback: () => safeSetState(() {}),
                            child: NotificationCardWidget(
                              icon: Icon(
                                FFIcons.kclockX,
                                color: FlutterFlowTheme.of(context).hoverColor,
                                size: 20.0,
                              ),
                              title: 'Appointment Cancelled!',
                              subTitle:
                                  'You have successfully canceled your appointment with Alan Watson on December 24, 2024, at 1:00 PM. 80% of the funds will be refunded to your account.',
                              seen: true,
                              timestamp: random_data.randomDate(),
                              bg: Color(0x2849B490),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.notificationCardModel7,
                            updateCallback: () => safeSetState(() {}),
                            child: NotificationCardWidget(
                              icon: Icon(
                                Icons.auto_awesome_sharp,
                                color: FlutterFlowTheme.of(context).blue,
                                size: 20.0,
                              ),
                              title: 'Property Recommendation',
                              subTitle:
                                  'Based on your preferences, we recommend 123 Sunset Blvd.',
                              seen: true,
                              timestamp: random_data.randomDate(),
                              bg: Color(0x283381FF),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.notificationCardModel8,
                            updateCallback: () => safeSetState(() {}),
                            child: NotificationCardWidget(
                              icon: Icon(
                                FFIcons.kcalendar,
                                color: FlutterFlowTheme.of(context).success,
                                size: 20.0,
                              ),
                              title: 'Schedule Changed',
                              subTitle:
                                  'Don\'t forget your appointment at \"Groomer\'s Place\" on December 24, 2024, at 3:00 PM. We\'re looking forward to seeing you!',
                              seen: true,
                              timestamp: random_data.randomDate(),
                              bg: Color(0x2A0CAF60),
                            ),
                          ),
                        ].divide(SizedBox(height: 10.0)),
                      ),
                    ].divide(SizedBox(height: 20.0)),
                  ),
                ),
              ].divide(SizedBox(height: 16.0)).addToEnd(SizedBox(height: 80.0)),
            ),
          ),
        ),
      ),
    );
  }
}
