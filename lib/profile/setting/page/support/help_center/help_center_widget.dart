import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/profile/component/f_a_q_card/f_a_q_card_widget.dart';
import '/profile/component/nav_btns/nav_btn_02/nav_btn02_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'help_center_model.dart';
export 'help_center_model.dart';

class HelpCenterWidget extends StatefulWidget {
  const HelpCenterWidget({super.key});

  static String routeName = 'HelpCenter';
  static String routePath = '/helpCenter';

  @override
  State<HelpCenterWidget> createState() => _HelpCenterWidgetState();
}

class _HelpCenterWidgetState extends State<HelpCenterWidget> {
  late HelpCenterModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HelpCenterModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'HelpCenter'});
    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            logFirebaseEvent('HELP_CENTER_FloatingActionButton_5scowy6');
            logFirebaseEvent('FloatingActionButton_navigate_to');

            context.pushNamed(SupportHomeWidget.routeName);
          },
          backgroundColor: FlutterFlowTheme.of(context).primary,
          elevation: 8.0,
          child: Icon(
            FFIcons.kheadset,
            color: FlutterFlowTheme.of(context).info,
            size: 24.0,
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 54.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
            onPressed: () async {
              logFirebaseEvent('HELP_CENTER_arrow_back_rounded_ICN_ON_TA');
              logFirebaseEvent('IconButton_navigate_back');
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              '3z2bap5h' /* Help Center */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.cairo(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        child: TextFormField(
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          autofocus: false,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: true,
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  font: GoogleFonts.cairo(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                            hintText: FFLocalizations.of(context).getText(
                              'qaecf4qf' /* Search */,
                            ),
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  font: GoogleFonts.cairo(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 18.0, 6.0, 18.0),
                            prefixIcon: Icon(
                              FFIcons.ksearch,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 20.0,
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.cairo(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                          cursorColor: FlutterFlowTheme.of(context).primaryText,
                          validator: _model.textControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'HELP_CENTER_Container_8tj6d86g_ON_TAP');
                                    logFirebaseEvent(
                                        'Container_update_page_state');
                                    _model.selectedTab = 'FAQ';
                                    safeSetState(() {});
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(6.0),
                                    child: Container(
                                      width: 100.0,
                                      height: 42.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '7axyot8g' /* FAQ */,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.cairo(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 2.0,
                                            decoration: BoxDecoration(
                                              color: valueOrDefault<Color>(
                                                _model.selectedTab == 'FAQ'
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .primary
                                                    : Colors.transparent,
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(0.0),
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'HELP_CENTER_Container_9v0mlj5l_ON_TAP');
                                    logFirebaseEvent(
                                        'Container_update_page_state');
                                    _model.selectedTab = 'Contact Us';
                                    safeSetState(() {});
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(6.0),
                                    child: Container(
                                      width: 100.0,
                                      height: 42.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '17bqvi51' /* Contact Us */,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.cairo(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 2.0,
                                            decoration: BoxDecoration(
                                              color: valueOrDefault<Color>(
                                                _model.selectedTab ==
                                                        'Contact Us'
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .primary
                                                    : Colors.transparent,
                                                Colors.transparent,
                                              ),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(0.0),
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 12.0)),
                          ),
                        ],
                      ),
                    ),
                  ].divide(SizedBox(height: 12.0)),
                ),
                Builder(
                  builder: (context) {
                    if (_model.selectedTab == 'Contact Us') {
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'HELP_CENTER_Container_pd7moi0i_ON_TAP');
                                logFirebaseEvent('NavBtn_02_navigate_to');

                                context.pushNamed(SupportHomeWidget.routeName);
                              },
                              child: wrapWithModel(
                                model: _model.navBtn02Model1,
                                updateCallback: () => safeSetState(() {}),
                                child: NavBtn02Widget(
                                  icon: Icon(
                                    FFIcons.kheadset,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 20.0,
                                  ),
                                  title: 'Customer Service',
                                ),
                              ),
                            ),
                            wrapWithModel(
                              model: _model.navBtn02Model2,
                              updateCallback: () => safeSetState(() {}),
                              child: NavBtn02Widget(
                                icon: Icon(
                                  FFIcons.kbrandWhatsapp,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 20.0,
                                ),
                                title: 'WhatsApp',
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'HELP_CENTER_Container_arhy1ki8_ON_TAP');
                                logFirebaseEvent('NavBtn_02_launch_u_r_l');
                                await launchURL('https://appgenz.com/');
                              },
                              child: wrapWithModel(
                                model: _model.navBtn02Model3,
                                updateCallback: () => safeSetState(() {}),
                                child: NavBtn02Widget(
                                  icon: Icon(
                                    FFIcons.kworld,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 20.0,
                                  ),
                                  title: 'Website',
                                ),
                              ),
                            ),
                            wrapWithModel(
                              model: _model.navBtn02Model4,
                              updateCallback: () => safeSetState(() {}),
                              child: NavBtn02Widget(
                                icon: Icon(
                                  FFIcons.kfacebook,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 20.0,
                                ),
                                title: 'Facebook',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.navBtn02Model5,
                              updateCallback: () => safeSetState(() {}),
                              child: NavBtn02Widget(
                                icon: Icon(
                                  FFIcons.ktwitter,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 20.0,
                                ),
                                title: 'Twitter',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.navBtn02Model6,
                              updateCallback: () => safeSetState(() {}),
                              child: NavBtn02Widget(
                                icon: Icon(
                                  FFIcons.kinstagram,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 20.0,
                                ),
                                title: 'Instagram',
                              ),
                            ),
                          ]
                              .divide(SizedBox(height: 12.0))
                              .addToStart(SizedBox(height: 16.0))
                              .addToEnd(SizedBox(height: 16.0)),
                        ),
                      );
                    } else {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: FlutterFlowChoiceChips(
                                    options: [
                                      ChipData(
                                          FFLocalizations.of(context).getText(
                                        'rizn6j2z' /* General */,
                                      )),
                                      ChipData(
                                          FFLocalizations.of(context).getText(
                                        'vib0e204' /* Account */,
                                      )),
                                      ChipData(
                                          FFLocalizations.of(context).getText(
                                        'vtfjty1i' /* Services */,
                                      )),
                                      ChipData(
                                          FFLocalizations.of(context).getText(
                                        'e30hdw0f' /* Payments */,
                                      ))
                                    ],
                                    onChanged: (val) => safeSetState(() =>
                                        _model.choiceChipsValue =
                                            val?.firstOrNull),
                                    selectedChipStyle: ChipStyle(
                                      backgroundColor:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.cairo(
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            fontSize: 13.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                      iconColor:
                                          FlutterFlowTheme.of(context).info,
                                      iconSize: 16.0,
                                      labelPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              12.0, 0.0, 12.0, 0.0),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    unselectedChipStyle: ChipStyle(
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.cairo(
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 13.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                      iconColor: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      iconSize: 16.0,
                                      labelPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              12.0, 0.0, 12.0, 0.0),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    chipSpacing: 8.0,
                                    rowSpacing: 8.0,
                                    multiselect: false,
                                    initialized:
                                        _model.choiceChipsValue != null,
                                    alignment: WrapAlignment.start,
                                    controller:
                                        _model.choiceChipsValueController ??=
                                            FormFieldController<List<String>>(
                                      [
                                        FFLocalizations.of(context).getText(
                                          '2v5q15lh' /* General */,
                                        )
                                      ],
                                    ),
                                    wrapped: true,
                                  ),
                                ),
                              ]
                                  .addToStart(SizedBox(width: 16.0))
                                  .addToEnd(SizedBox(width: 16.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.fAQCardModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FAQCardWidget(
                                    heading: 'What is Homexa?',
                                    text:
                                        'Homexa is a home service app that connects you to reliable professionals for maintenance and repair tasks, ensuring quality and convenience in every booking.',
                                    active: _model.faqsOpen,
                                    action: (title) async {
                                      logFirebaseEvent(
                                          'HELP_CENTER_Container_h0e9lkwy_CALLBACK');
                                      logFirebaseEvent(
                                          'FAQCard_update_page_state');
                                      _model.faqsOpen = title;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.fAQCardModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FAQCardWidget(
                                    heading: 'How Does Homexa Work?',
                                    text:
                                        'Homexa makes booking simple: select a service, choose a provider, pick a time, and confirm. Professionals come prepared to handle your needs.',
                                    active: _model.faqsOpen,
                                    action: (title) async {
                                      logFirebaseEvent(
                                          'HELP_CENTER_Container_54jbc0h4_CALLBACK');
                                      logFirebaseEvent(
                                          'FAQCard_update_page_state');
                                      _model.faqsOpen = title;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.fAQCardModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FAQCardWidget(
                                    heading: 'What Services Are Offered?',
                                    text:
                                        'Homexa covers plumbing, cleaning, electrical, painting, appliance repair, and more. Browse categories to find exactly what you need.',
                                    active: _model.faqsOpen,
                                    action: (title) async {
                                      logFirebaseEvent(
                                          'HELP_CENTER_Container_1mw80swg_CALLBACK');
                                      logFirebaseEvent(
                                          'FAQCard_update_page_state');
                                      _model.faqsOpen = title;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.fAQCardModel4,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FAQCardWidget(
                                    heading: 'Is Homexa in My Area?',
                                    text:
                                        'Homexa serves many cities. Open the app, enter your location, and check service availability in your neighborhood.',
                                    active: _model.faqsOpen,
                                    action: (title) async {
                                      logFirebaseEvent(
                                          'HELP_CENTER_Container_vdh4qx35_CALLBACK');
                                      logFirebaseEvent(
                                          'FAQCard_update_page_state');
                                      _model.faqsOpen = title;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.fAQCardModel5,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FAQCardWidget(
                                    heading: 'How to Book a Service?',
                                    text:
                                        'Open the app, select a service, pick a provider, choose your schedule, and confirm. It\'s that easy to get started.',
                                    active: _model.faqsOpen,
                                    action: (title) async {
                                      logFirebaseEvent(
                                          'HELP_CENTER_Container_1j2obk34_CALLBACK');
                                      logFirebaseEvent(
                                          'FAQCard_update_page_state');
                                      _model.faqsOpen = title;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.fAQCardModel6,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FAQCardWidget(
                                    heading: 'Are Providers Verified?',
                                    text:
                                        'Yes, Homexa verifies all professionals through background checks to ensure you receive trustworthy and high-quality services.',
                                    active: _model.faqsOpen,
                                    action: (title) async {
                                      logFirebaseEvent(
                                          'HELP_CENTER_Container_396h57by_CALLBACK');
                                      logFirebaseEvent(
                                          'FAQCard_update_page_state');
                                      _model.faqsOpen = title;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.fAQCardModel7,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FAQCardWidget(
                                    heading: 'What Payment Options Exist?',
                                    text:
                                        'Homexa supports cards, digital wallets, and in-app payments. Pay securely online after confirming your booking.',
                                    active: _model.faqsOpen,
                                    action: (title) async {
                                      logFirebaseEvent(
                                          'HELP_CENTER_Container_ncn1nkpe_CALLBACK');
                                      logFirebaseEvent(
                                          'FAQCard_update_page_state');
                                      _model.faqsOpen = title;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.fAQCardModel8,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FAQCardWidget(
                                    heading: 'How to Reschedule Bookings?',
                                    text:
                                        'Need changes? You can easily reschedule or cancel bookings within the app. Follow the prompts for hassle-free adjustments.',
                                    active: _model.faqsOpen,
                                    action: (title) async {
                                      logFirebaseEvent(
                                          'HELP_CENTER_Container_w2ggcdux_CALLBACK');
                                      logFirebaseEvent(
                                          'FAQCard_update_page_state');
                                      _model.faqsOpen = title;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.fAQCardModel9,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FAQCardWidget(
                                    heading: 'Contacting Customer Support',
                                    text:
                                        'Facing an issue? Reach our support team using the in-app chat feature or call directly for prompt assistance anytime.',
                                    active: _model.faqsOpen,
                                    action: (title) async {
                                      logFirebaseEvent(
                                          'HELP_CENTER_Container_9b1t7aqe_CALLBACK');
                                      logFirebaseEvent(
                                          'FAQCard_update_page_state');
                                      _model.faqsOpen = title;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.fAQCardModel10,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FAQCardWidget(
                                    heading: 'Does Homexa Offer Emergencies?',
                                    text:
                                        'Yes, 24/7 emergency services like plumbing and electrical repairs are available in select cities for urgent needs.',
                                    active: _model.faqsOpen,
                                    action: (title) async {
                                      logFirebaseEvent(
                                          'HELP_CENTER_Container_0jof3vnb_CALLBACK');
                                      logFirebaseEvent(
                                          'FAQCard_update_page_state');
                                      _model.faqsOpen = title;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.fAQCardModel11,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FAQCardWidget(
                                    heading: 'How Are Costs Determined?',
                                    text:
                                        'Homexa provides transparent pricing based on service type. View costs upfront before booking to avoid surprises.',
                                    active: _model.faqsOpen,
                                    action: (title) async {
                                      logFirebaseEvent(
                                          'HELP_CENTER_Container_5kfbfhnj_CALLBACK');
                                      logFirebaseEvent(
                                          'FAQCard_update_page_state');
                                      _model.faqsOpen = title;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.fAQCardModel12,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FAQCardWidget(
                                    heading: 'Is There a Service Warranty?',
                                    text:
                                        'Yes, many services include warranties. Review service details in the app to see applicable terms for your booking.',
                                    active: _model.faqsOpen,
                                    action: (title) async {
                                      logFirebaseEvent(
                                          'HELP_CENTER_Container_v7c5v2ky_CALLBACK');
                                      logFirebaseEvent(
                                          'FAQCard_update_page_state');
                                      _model.faqsOpen = title;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.fAQCardModel13,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FAQCardWidget(
                                    heading: 'Rating and Reviewing Providers',
                                    text:
                                        'Homexa uses a transparent pricing model, with costs determined by the type and complexity of the service. Detailed price breakdowns are shown before booking, so you know exactly what to expect. Some services may also include additional fees for materials or extended time, all of which are clearly communicated.',
                                    active: _model.faqsOpen,
                                    action: (title) async {
                                      logFirebaseEvent(
                                          'HELP_CENTER_Container_65148wbx_CALLBACK');
                                      logFirebaseEvent(
                                          'FAQCard_update_page_state');
                                      _model.faqsOpen = title;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.fAQCardModel14,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FAQCardWidget(
                                    heading: 'What If I’m Unsatisfied?',
                                    text:
                                        'Homexa provides a warranty period for most services to ensure customer satisfaction. If issues arise within the warranty period, Homexa will coordinate with the service provider for necessary adjustments or repairs. Warranty durations vary depending on the type of service booked.',
                                    active: _model.faqsOpen,
                                    action: (title) async {
                                      logFirebaseEvent(
                                          'HELP_CENTER_Container_ss84ylp5_CALLBACK');
                                      logFirebaseEvent(
                                          'FAQCard_update_page_state');
                                      _model.faqsOpen = title;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.fAQCardModel15,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FAQCardWidget(
                                    heading: 'Can I Tip Providers?',
                                    text:
                                        'After the completion of a service, Homexa allows you to rate and review the provider. Ratings help maintain high service standards, while your feedback aids others in making informed choices. To leave a review, navigate to the completed bookings section and follow the prompts.',
                                    active: _model.faqsOpen,
                                    action: (title) async {
                                      logFirebaseEvent(
                                          'HELP_CENTER_Container_9h2i1vc4_CALLBACK');
                                      logFirebaseEvent(
                                          'FAQCard_update_page_state');
                                      _model.faqsOpen = title;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.fAQCardModel16,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FAQCardWidget(
                                    heading: 'Updating Profile or Address',
                                    text:
                                        'If you’re unhappy with a service, Homexa’s support team is here to help. Contact customer support to report your concerns. Depending on the situation, you may be eligible for a refund or a rework. We prioritize customer satisfaction and work hard to resolve issues promptly.',
                                    active: _model.faqsOpen,
                                    action: (title) async {
                                      logFirebaseEvent(
                                          'HELP_CENTER_Container_tlhylohq_CALLBACK');
                                      logFirebaseEvent(
                                          'FAQCard_update_page_state');
                                      _model.faqsOpen = title;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.fAQCardModel17,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FAQCardWidget(
                                    heading: 'Does Homexa Have Referrals?',
                                    text:
                                        'Yes, Homexa allows you to tip providers as a token of appreciation for their hard work. After the service is completed, you’ll see an option to add a tip during the payment process. Tips are entirely optional and go directly to the provider.',
                                    active: _model.faqsOpen,
                                    action: (title) async {
                                      logFirebaseEvent(
                                          'HELP_CENTER_Container_cwptwzx1_CALLBACK');
                                      logFirebaseEvent(
                                          'FAQCard_update_page_state');
                                      _model.faqsOpen = title;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.fAQCardModel18,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FAQCardWidget(
                                    heading: 'Are Subscriptions Available?',
                                    text:
                                        'To update your profile or address, open the app and go to the “Settings” or “Account” section. Here, you can edit personal details like your name, phone number, email address, and saved locations. Keeping your profile updated ensures a smooth booking experience.',
                                    active: _model.faqsOpen,
                                    action: (title) async {
                                      logFirebaseEvent(
                                          'HELP_CENTER_Container_q6zqsiis_CALLBACK');
                                      logFirebaseEvent(
                                          'FAQCard_update_page_state');
                                      _model.faqsOpen = title;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.fAQCardModel19,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FAQCardWidget(
                                    heading: 'Joining as a Service Provider',
                                    text:
                                        'Yes, Homexa rewards you for sharing the app with friends and family. Use your unique referral code to invite others. When they complete their first booking, both you and the new user earn rewards that can be redeemed for discounts on future services.',
                                    active: _model.faqsOpen,
                                    action: (title) async {
                                      logFirebaseEvent(
                                          'HELP_CENTER_Container_1vhbmt6d_CALLBACK');
                                      logFirebaseEvent(
                                          'FAQCard_update_page_state');
                                      _model.faqsOpen = title;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                              ].divide(SizedBox(height: 10.0)),
                            ),
                          ),
                        ]
                            .divide(SizedBox(height: 16.0))
                            .addToStart(SizedBox(height: 16.0)),
                      );
                    }
                  },
                ),
              ]
                  .addToStart(SizedBox(height: 16.0))
                  .addToEnd(SizedBox(height: 24.0)),
            ),
          ),
        ),
      ),
    );
  }
}
