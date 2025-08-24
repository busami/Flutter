import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/explore/components/lagent_card/lagent_card_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'all_agents_model.dart';
export 'all_agents_model.dart';

class AllAgentsWidget extends StatefulWidget {
  const AllAgentsWidget({super.key});

  static String routeName = 'AllAgents';
  static String routePath = '/allAgents';

  @override
  State<AllAgentsWidget> createState() => _AllAgentsWidgetState();
}

class _AllAgentsWidgetState extends State<AllAgentsWidget>
    with TickerProviderStateMixin {
  late AllAgentsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllAgentsModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'AllAgents'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('ALL_AGENTS_PAGE_AllAgents_ON_INIT_STATE');
      logFirebaseEvent('AllAgents_update_app_state');
      FFAppState().pageSelector = 'Home';
      safeSetState(() {});
    });

    animationsMap.addAll({
      'gridViewOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, 62.0),
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
                size: 22.0,
              ),
              onPressed: () async {
                logFirebaseEvent('ALL_AGENTS_PAGE_arrowLeft_ICN_ON_TAP');
                logFirebaseEvent('IconButton_navigate_back');
                context.safePop();
              },
            ),
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'cbuhsll4' /* All Agents */,
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
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).alternate,
                borderRadius: 8.0,
                buttonSize: 36.0,
                fillColor: Colors.transparent,
                icon: Icon(
                  FFIcons.ksearch,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 18.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('ALL_AGENTS_PAGE_search_ICN_ON_TAP');
                  logFirebaseEvent('IconButton_navigate_to');

                  context.pushNamed(SearchWidget.routeName);
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
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final allAgent = FFAppState().Agent.toList();

                      return GridView.builder(
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12.0,
                          mainAxisSpacing: 12.0,
                          childAspectRatio: 0.86,
                        ),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: allAgent.length,
                        itemBuilder: (context, allAgentIndex) {
                          final allAgentItem = allAgent[allAgentIndex];
                          return wrapWithModel(
                            model: _model.lagentCardModels.getModel(
                              allAgentIndex.toString(),
                              allAgentIndex,
                            ),
                            updateCallback: () => safeSetState(() {}),
                            child: LagentCardWidget(
                              key: Key(
                                'Key9j5_${allAgentIndex.toString()}',
                              ),
                              image: allAgentItem.avatar,
                              title: allAgentItem.name,
                              exp: '4 year Exp',
                              properties: '554 Properties',
                            ),
                          );
                        },
                      ).animateOnPageLoad(
                          animationsMap['gridViewOnPageLoadAnimation']!);
                    },
                  ),
                ),
              ].addToStart(SizedBox(height: 12.0)),
            ),
          ),
        ),
      ),
    );
  }
}
