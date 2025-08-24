import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/chat/components/chat_title/chat_title_widget.dart';
import '/pages/chat/components/chats_more_options/chats_more_options_widget.dart';
import '/pages/chat/components/tab_selector/tab_selector_widget.dart';
import '/profile/component/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chat_model.dart';
export 'chat_model.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({super.key});

  static String routeName = 'Chat';
  static String routePath = '/chat';

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> with TickerProviderStateMixin {
  late ChatModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Chat'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CHAT_PAGE_Chat_ON_INIT_STATE');
      logFirebaseEvent('Chat_update_app_state');
      FFAppState().pageSelector = 'Message';
      safeSetState(() {});
    });

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'chatTitleOnPageLoadAnimation1': AnimationInfo(
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
      'chatTitleOnPageLoadAnimation2': AnimationInfo(
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
      'chatTitleOnPageLoadAnimation3': AnimationInfo(
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
      'chatTitleOnPageLoadAnimation4': AnimationInfo(
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
      'chatTitleOnPageLoadAnimation5': AnimationInfo(
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
      'chatTitleOnPageLoadAnimation6': AnimationInfo(
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
      'chatTitleOnPageLoadAnimation7': AnimationInfo(
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
      'chatTitleOnPageLoadAnimation8': AnimationInfo(
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
      'chatTitleOnPageLoadAnimation9': AnimationInfo(
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
      'chatTitleOnPageLoadAnimation10': AnimationInfo(
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
      'chatTitleOnPageLoadAnimation11': AnimationInfo(
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
      'chatTitleOnPageLoadAnimation12': AnimationInfo(
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
                  '9oc9t72t' /* All Messages */,
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
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 8.0, 8.0),
              child: FlutterFlowIconButton(
                borderRadius: 50.0,
                buttonSize: 40.0,
                icon: Icon(
                  FFIcons.ksearch,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('CHAT_PAGE_search_ICN_ON_TAP');
                  logFirebaseEvent('IconButton_navigate_to');

                  context.pushNamed(SearchContactsWidget.routeName);
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
                  size: 24.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('CHAT_PAGE_dotsVertical_ICN_ON_TAP');
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
                          child: ChatsMoreOptionsWidget(),
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
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: wrapWithModel(
                                model: _model.tabSelectorModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: TabSelectorWidget(
                                  title: 'As buyer',
                                  active: _model.tabSelector,
                                  action: (title) async {
                                    logFirebaseEvent(
                                        'CHAT_PAGE_Container_ml1u7n3b_CALLBACK');
                                    logFirebaseEvent(
                                        'TabSelector_update_page_state');
                                    _model.tabSelector = title;
                                    safeSetState(() {});
                                  },
                                ),
                              ),
                            ),
                            Expanded(
                              child: wrapWithModel(
                                model: _model.tabSelectorModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: TabSelectorWidget(
                                  title: 'As seller',
                                  active: _model.tabSelector,
                                  action: (title) async {
                                    logFirebaseEvent(
                                        'CHAT_PAGE_Container_ffm8tb5g_CALLBACK');
                                    logFirebaseEvent(
                                        'TabSelector_update_page_state');
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
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'h2mupwbp' /* 108 Contects */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.cairo(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
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
                                      ),
                                ),
                                FlutterFlowDropDown<String>(
                                  controller: _model.dropDownValueController ??=
                                      FormFieldController<String>(
                                    _model.dropDownValue ??=
                                        FFLocalizations.of(context).getText(
                                      'kc6hb487' /* Latest */,
                                    ),
                                  ),
                                  options: [
                                    FFLocalizations.of(context).getText(
                                      'hvcetbn2' /* Latest */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '9fogw8js' /* Oldest */,
                                    )
                                  ],
                                  onChanged: (val) => safeSetState(
                                      () => _model.dropDownValue = val),
                                  height: 20.0,
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
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                  hintText: FFLocalizations.of(context).getText(
                                    'xh6z5mst' /* Select... */,
                                  ),
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 20.0,
                                  ),
                                  elevation: 2.0,
                                  borderColor: Colors.transparent,
                                  borderWidth: 0.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  hidesUnderline: true,
                                  isOverButton: false,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                              ],
                            ),
                          ),
                          Builder(
                            builder: (context) {
                              if (_model.tabSelector == 'As seller') {
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  child: ListView(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      wrapWithModel(
                                        model: _model.chatTitleModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ChatTitleWidget(
                                          avatar:
                                              'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                          userName: 'Alice Johnso',
                                          lastMessage:
                                              'Hey, are we still on for...',
                                          seen: false,
                                          totalUnseenMessage: 4,
                                          lastMessageTime:
                                              random_data.randomDate(),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'chatTitleOnPageLoadAnimation1']!),
                                      wrapWithModel(
                                        model: _model.chatTitleModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ChatTitleWidget(
                                          avatar:
                                              'https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3',
                                          userName: 'Bob Smith',
                                          lastMessage: 'Thanks for the update!',
                                          seen: false,
                                          totalUnseenMessage: 2,
                                          lastMessageTime:
                                              random_data.randomDate(),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'chatTitleOnPageLoadAnimation2']!),
                                      wrapWithModel(
                                        model: _model.chatTitleModel3,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ChatTitleWidget(
                                          avatar:
                                              'https://images.unsplash.com/photo-1517841905240-472988babdf9?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3',
                                          userName: 'Clara Davis',
                                          lastMessage:
                                              'Can you share the files?',
                                          seen: true,
                                          totalUnseenMessage: 0,
                                          lastMessageTime:
                                              random_data.randomDate(),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'chatTitleOnPageLoadAnimation3']!),
                                      wrapWithModel(
                                        model: _model.chatTitleModel4,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ChatTitleWidget(
                                          avatar:
                                              'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3',
                                          userName: 'Daniel Lee\t',
                                          lastMessage:
                                              'Got it, I\'ll check now.',
                                          seen: true,
                                          totalUnseenMessage: 0,
                                          lastMessageTime:
                                              random_data.randomDate(),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'chatTitleOnPageLoadAnimation4']!),
                                      wrapWithModel(
                                        model: _model.chatTitleModel5,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ChatTitleWidget(
                                          avatar:
                                              'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3',
                                          userName: 'Emma Wilson',
                                          lastMessage:
                                              'Let\'s schedule a meeting.',
                                          seen: true,
                                          totalUnseenMessage: 0,
                                          lastMessageTime:
                                              random_data.randomDate(),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'chatTitleOnPageLoadAnimation5']!),
                                      wrapWithModel(
                                        model: _model.chatTitleModel6,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ChatTitleWidget(
                                          avatar:
                                              'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3',
                                          userName: 'Frank Miller',
                                          lastMessage:
                                              'Sure, no problem at all.',
                                          seen: true,
                                          totalUnseenMessage: 0,
                                          lastMessageTime:
                                              random_data.randomDate(),
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.chatTitleModel7,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ChatTitleWidget(
                                          avatar:
                                              'https://images.unsplash.com/photo-1544005313-94ddf0286df2?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3',
                                          userName: 'Grace Martinez',
                                          lastMessage: 'Can we reschedule?',
                                          seen: true,
                                          totalUnseenMessage: 0,
                                          lastMessageTime:
                                              random_data.randomDate(),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 10.0)),
                                  ),
                                );
                              } else {
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  child: ListView(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      wrapWithModel(
                                        model: _model.chatTitleModel8,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ChatTitleWidget(
                                          avatar:
                                              'https://images.unsplash.com/photo-1646198008289-9cdae21fd445?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                          userName: 'Amelia Eve',
                                          lastMessage: 'I went there yesterday',
                                          seen: false,
                                          totalUnseenMessage: 16,
                                          lastMessageTime:
                                              random_data.randomDate(),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'chatTitleOnPageLoadAnimation6']!),
                                      wrapWithModel(
                                        model: _model.chatTitleModel9,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ChatTitleWidget(
                                          avatar:
                                              'https://images.unsplash.com/photo-1639149888905-fb39731f2e6c?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                          userName: 'Rohan Sarkar',
                                          lastMessage: 'Talk to you soon!',
                                          seen: false,
                                          totalUnseenMessage: 8,
                                          lastMessageTime:
                                              random_data.randomDate(),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'chatTitleOnPageLoadAnimation7']!),
                                      wrapWithModel(
                                        model: _model.chatTitleModel10,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ChatTitleWidget(
                                          avatar:
                                              'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                          userName: 'Alice Johnso',
                                          lastMessage:
                                              'Hey, are we still on for...',
                                          seen: false,
                                          totalUnseenMessage: 4,
                                          lastMessageTime:
                                              random_data.randomDate(),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'chatTitleOnPageLoadAnimation8']!),
                                      wrapWithModel(
                                        model: _model.chatTitleModel11,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ChatTitleWidget(
                                          avatar:
                                              'https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3',
                                          userName: 'Bob Smith',
                                          lastMessage: 'Thanks for the update!',
                                          seen: false,
                                          totalUnseenMessage: 2,
                                          lastMessageTime:
                                              random_data.randomDate(),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'chatTitleOnPageLoadAnimation9']!),
                                      wrapWithModel(
                                        model: _model.chatTitleModel12,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ChatTitleWidget(
                                          avatar:
                                              'https://images.unsplash.com/photo-1517841905240-472988babdf9?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3',
                                          userName: 'Clara Davis',
                                          lastMessage:
                                              'Can you share the files?',
                                          seen: true,
                                          totalUnseenMessage: 0,
                                          lastMessageTime:
                                              random_data.randomDate(),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'chatTitleOnPageLoadAnimation10']!),
                                      wrapWithModel(
                                        model: _model.chatTitleModel13,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ChatTitleWidget(
                                          avatar:
                                              'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3',
                                          userName: 'Daniel Lee\t',
                                          lastMessage:
                                              'Got it, I\'ll check now.',
                                          seen: true,
                                          totalUnseenMessage: 0,
                                          lastMessageTime:
                                              random_data.randomDate(),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'chatTitleOnPageLoadAnimation11']!),
                                      wrapWithModel(
                                        model: _model.chatTitleModel14,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ChatTitleWidget(
                                          avatar:
                                              'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3',
                                          userName: 'Emma Wilson',
                                          lastMessage:
                                              'Let\'s schedule a meeting.',
                                          seen: true,
                                          totalUnseenMessage: 0,
                                          lastMessageTime:
                                              random_data.randomDate(),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'chatTitleOnPageLoadAnimation12']!),
                                      wrapWithModel(
                                        model: _model.chatTitleModel15,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ChatTitleWidget(
                                          avatar:
                                              'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3',
                                          userName: 'Frank Miller',
                                          lastMessage:
                                              'Sure, no problem at all.',
                                          seen: true,
                                          totalUnseenMessage: 0,
                                          lastMessageTime:
                                              random_data.randomDate(),
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.chatTitleModel16,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ChatTitleWidget(
                                          avatar:
                                              'https://images.unsplash.com/photo-1544005313-94ddf0286df2?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3',
                                          userName: 'Grace Martinez',
                                          lastMessage: 'Can we reschedule?',
                                          seen: true,
                                          totalUnseenMessage: 0,
                                          lastMessageTime:
                                              random_data.randomDate(),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 10.0)),
                                  ),
                                );
                              }
                            },
                          ),
                        ]
                            .divide(SizedBox(height: 16.0))
                            .addToStart(SizedBox(height: 16.0))
                            .addToEnd(SizedBox(height: 24.0)),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['columnOnPageLoadAnimation']!),
                  ),
                ].addToStart(SizedBox(height: 12.0)),
              ),
            ),
            wrapWithModel(
              model: _model.navBarModel,
              updateCallback: () => safeSetState(() {}),
              child: NavBarWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
