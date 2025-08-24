import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/chat/components/chat_title/chat_title_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'search_contacts_model.dart';
export 'search_contacts_model.dart';

class SearchContactsWidget extends StatefulWidget {
  const SearchContactsWidget({super.key});

  static String routeName = 'SearchContacts';
  static String routePath = '/searchContacts';

  @override
  State<SearchContactsWidget> createState() => _SearchContactsWidgetState();
}

class _SearchContactsWidgetState extends State<SearchContactsWidget>
    with TickerProviderStateMixin {
  late SearchContactsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchContactsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'SearchContacts'});
    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'chatTitleOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'chatTitleOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 40.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'chatTitleOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 80.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'chatTitleOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 120.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'chatTitleOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 160.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'chatTitleOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'chatTitleOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 240.0.ms,
            duration: 300.0.ms,
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
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: 66.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 12.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowIconButton(
                      borderRadius: 50.0,
                      buttonSize: 40.0,
                      fillColor: Colors.transparent,
                      icon: Icon(
                        Icons.arrow_back,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'SEARCH_CONTACTS_arrow_back_ICN_ON_TAP');
                        logFirebaseEvent('IconButton_navigate_back');
                        context.safePop();
                      },
                    ),
                    Expanded(
                      child: Container(
                        width: 200.0,
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
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                            hintText: FFLocalizations.of(context).getText(
                              'xf3wuemm' /* Search Contacts */,
                            ),
                            hintStyle: FlutterFlowTheme.of(context)
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
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
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
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 18.0, 12.0, 18.0),
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
                                    fontSize: 13.0,
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
                  ].divide(SizedBox(width: 10.0)),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          wrapWithModel(
                            model: _model.chatTitleModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: ChatTitleWidget(
                              avatar:
                                  'https://images.unsplash.com/photo-1646198008289-9cdae21fd445?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                              userName: 'Amelia Eve',
                              lastMessage: 'I went there yesterday',
                              seen: false,
                              totalUnseenMessage: 16,
                              lastMessageTime: random_data.randomDate(),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['chatTitleOnPageLoadAnimation1']!),
                          wrapWithModel(
                            model: _model.chatTitleModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: ChatTitleWidget(
                              avatar:
                                  'https://images.unsplash.com/photo-1639149888905-fb39731f2e6c?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                              userName: 'Rohan Sarkar',
                              lastMessage: 'Talk to you soon!',
                              seen: false,
                              totalUnseenMessage: 8,
                              lastMessageTime: random_data.randomDate(),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['chatTitleOnPageLoadAnimation2']!),
                          wrapWithModel(
                            model: _model.chatTitleModel3,
                            updateCallback: () => safeSetState(() {}),
                            child: ChatTitleWidget(
                              avatar:
                                  'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                              userName: 'Alice Johnso',
                              lastMessage: 'Hey, are we still on for...',
                              seen: false,
                              totalUnseenMessage: 4,
                              lastMessageTime: random_data.randomDate(),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['chatTitleOnPageLoadAnimation3']!),
                          wrapWithModel(
                            model: _model.chatTitleModel4,
                            updateCallback: () => safeSetState(() {}),
                            child: ChatTitleWidget(
                              avatar:
                                  'https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3',
                              userName: 'Bob Smith',
                              lastMessage: 'Thanks for the update!',
                              seen: false,
                              totalUnseenMessage: 2,
                              lastMessageTime: random_data.randomDate(),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['chatTitleOnPageLoadAnimation4']!),
                          wrapWithModel(
                            model: _model.chatTitleModel5,
                            updateCallback: () => safeSetState(() {}),
                            child: ChatTitleWidget(
                              avatar:
                                  'https://images.unsplash.com/photo-1517841905240-472988babdf9?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3',
                              userName: 'Clara Davis',
                              lastMessage: 'Can you share the files?',
                              seen: true,
                              totalUnseenMessage: 0,
                              lastMessageTime: random_data.randomDate(),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['chatTitleOnPageLoadAnimation5']!),
                          wrapWithModel(
                            model: _model.chatTitleModel6,
                            updateCallback: () => safeSetState(() {}),
                            child: ChatTitleWidget(
                              avatar:
                                  'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3',
                              userName: 'Daniel Lee\t',
                              lastMessage: 'Got it, I\'ll check now.',
                              seen: true,
                              totalUnseenMessage: 0,
                              lastMessageTime: random_data.randomDate(),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['chatTitleOnPageLoadAnimation6']!),
                          wrapWithModel(
                            model: _model.chatTitleModel7,
                            updateCallback: () => safeSetState(() {}),
                            child: ChatTitleWidget(
                              avatar:
                                  'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3',
                              userName: 'Emma Wilson',
                              lastMessage: 'Let\'s schedule a meeting.',
                              seen: true,
                              totalUnseenMessage: 0,
                              lastMessageTime: random_data.randomDate(),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['chatTitleOnPageLoadAnimation7']!),
                          wrapWithModel(
                            model: _model.chatTitleModel8,
                            updateCallback: () => safeSetState(() {}),
                            child: ChatTitleWidget(
                              avatar:
                                  'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3',
                              userName: 'Frank Miller',
                              lastMessage: 'Sure, no problem at all.',
                              seen: true,
                              totalUnseenMessage: 0,
                              lastMessageTime: random_data.randomDate(),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.chatTitleModel9,
                            updateCallback: () => safeSetState(() {}),
                            child: ChatTitleWidget(
                              avatar:
                                  'https://images.unsplash.com/photo-1544005313-94ddf0286df2?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3',
                              userName: 'Grace Martinez',
                              lastMessage: 'Can we reschedule?',
                              seen: true,
                              totalUnseenMessage: 0,
                              lastMessageTime: random_data.randomDate(),
                            ),
                          ),
                        ].divide(SizedBox(height: 10.0)),
                      ),
                    ),
                  ]
                      .addToStart(SizedBox(height: 12.0))
                      .addToEnd(SizedBox(height: 24.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
