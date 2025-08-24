import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/listening/components/bookings_more_options/bookings_more_options_widget.dart';
import '/pages/listening/components/chartcard_02/chartcard02_widget.dart';
import '/pages/listening/components/properties_card/properties_card_widget.dart';
import '/pages/listening/components/selector_06/selector06_widget.dart';
import '/profile/component/nav_bar/nav_bar_widget.dart';
import '/index.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'listings_model.dart';
export 'listings_model.dart';

class ListingsWidget extends StatefulWidget {
  const ListingsWidget({super.key});

  static String routeName = 'Listings';
  static String routePath = '/listings';

  @override
  State<ListingsWidget> createState() => _ListingsWidgetState();
}

class _ListingsWidgetState extends State<ListingsWidget>
    with TickerProviderStateMixin {
  late ListingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListingsModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Listings'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('LISTINGS_PAGE_Listings_ON_INIT_STATE');
      logFirebaseEvent('Listings_update_app_state');
      FFAppState().pageSelector = 'Bookings';
      safeSetState(() {});
    });

    animationsMap.addAll({
      'columnOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, 40.0),
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
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                FFLocalizations.of(context).getText(
                  'e3z5mzk9' /* All Properties */,
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
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
              child: FlutterFlowIconButton(
                borderRadius: 50.0,
                buttonSize: 40.0,
                icon: Icon(
                  FFIcons.ksearch,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 20.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('LISTINGS_PAGE_search_ICN_ON_TAP');
                  logFirebaseEvent('IconButton_navigate_to');

                  context.pushNamed(SearchBookigsWidget.routeName);
                },
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 8.0, 8.0),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 50.0,
                buttonSize: 40.0,
                icon: Icon(
                  FFIcons.kdotsVertical,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 20.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('LISTINGS_PAGE_dotsVertical_ICN_ON_TAP');
                  logFirebaseEvent('IconButton_bottom_sheet');
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Color(0x40000000),
                    context: context,
                    builder: (context) {
                      return GestureDetector(
                        onTap: () {
                          FocusScope.of(context).unfocus();
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        child: Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: BookingsMoreOptionsWidget(),
                        ),
                      );
                    },
                  ).then((value) => safeSetState(() {}));
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.chartcard02Model,
                    updateCallback: () => safeSetState(() {}),
                    child: Chartcard02Widget(),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 20.0, 12.0, 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            '0mc3csaq' /* My Properties */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.cairo(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
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
                        FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'LISTINGS_PAGE_ADD_PROPERTY_BTN_ON_TAP');
                            logFirebaseEvent('Button_navigate_to');

                            context.pushNamed(AddPropertyWidget.routeName);
                          },
                          text: FFLocalizations.of(context).getText(
                            't2h782o8' /* Add Property */,
                          ),
                          icon: Icon(
                            FFIcons.kplusCircle,
                            size: 14.0,
                          ),
                          options: FFButtonOptions(
                            height: 30.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.cairo(
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  StickyHeader(
                    overlapHeaders: false,
                    header: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: wrapWithModel(
                                  model: _model.selector06Model1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: Selector06Widget(
                                    title: 'Published',
                                    active: _model.tabSelector,
                                    action: (title) async {
                                      logFirebaseEvent(
                                          'LISTINGS_Container_bbgskj3u_CALLBACK');
                                      logFirebaseEvent(
                                          'Selector_06_update_page_state');
                                      _model.tabSelector = title;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                child: wrapWithModel(
                                  model: _model.selector06Model2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: Selector06Widget(
                                    title: 'Pending',
                                    active: _model.tabSelector,
                                    action: (title) async {
                                      logFirebaseEvent(
                                          'LISTINGS_Container_d9syafck_CALLBACK');
                                      logFirebaseEvent(
                                          'Selector_06_update_page_state');
                                      _model.tabSelector = title;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    content: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Builder(
                            builder: (context) {
                              if (_model.tabSelector == 'Pending') {
                                return Builder(
                                  builder: (context) {
                                    final publishedListing =
                                        FFAppState().PropertyList.toList();

                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children:
                                          List.generate(publishedListing.length,
                                              (publishedListingIndex) {
                                        final publishedListingItem =
                                            publishedListing[
                                                publishedListingIndex];
                                        return wrapWithModel(
                                          model: _model.propertiesCardModels1
                                              .getModel(
                                            publishedListingIndex.toString(),
                                            publishedListingIndex,
                                          ),
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: PropertiesCardWidget(
                                            key: Key(
                                              'Keyjzx_${publishedListingIndex.toString()}',
                                            ),
                                            date: 'Created:  Sun 03/02/2025',
                                            status: 'Pending',
                                            color: FlutterFlowTheme.of(context)
                                                .warning,
                                            image: publishedListingItem.image,
                                            title: publishedListingItem.title,
                                            location:
                                                '3537 Newton Street Saint Cloud, MN ',
                                            views: '325',
                                            calls: '12',
                                            ffavorittes: '85',
                                            message: '9',
                                            bg: Color(0x30F9CF58),
                                          ),
                                        );
                                      }).divide(SizedBox(height: 12.0)),
                                    ).animateOnPageLoad(animationsMap[
                                        'columnOnPageLoadAnimation1']!);
                                  },
                                );
                              } else {
                                return Builder(
                                  builder: (context) {
                                    final publishedListing =
                                        FFAppState().PropertyList.toList();

                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children:
                                          List.generate(publishedListing.length,
                                              (publishedListingIndex) {
                                        final publishedListingItem =
                                            publishedListing[
                                                publishedListingIndex];
                                        return wrapWithModel(
                                          model: _model.propertiesCardModels2
                                              .getModel(
                                            publishedListingIndex.toString(),
                                            publishedListingIndex,
                                          ),
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: PropertiesCardWidget(
                                            key: Key(
                                              'Key06b_${publishedListingIndex.toString()}',
                                            ),
                                            date: 'Created:  Sun 03/02/2025',
                                            status: 'Active',
                                            color: FlutterFlowTheme.of(context)
                                                .success,
                                            image: publishedListingItem.image,
                                            title: publishedListingItem.title,
                                            location:
                                                '3537 Newton Street Saint Cloud, MN ',
                                            views: '325',
                                            calls: '12',
                                            ffavorittes: '85',
                                            message: '9',
                                            bg: Color(0x3316C16E),
                                          ),
                                        );
                                      }).divide(SizedBox(height: 12.0)),
                                    ).animateOnPageLoad(animationsMap[
                                        'columnOnPageLoadAnimation2']!);
                                  },
                                );
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ].addToEnd(SizedBox(height: 80.0)),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: wrapWithModel(
                model: _model.navBarModel,
                updateCallback: () => safeSetState(() {}),
                child: NavBarWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
