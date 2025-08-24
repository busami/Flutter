import '/flutter_flow/flutter_flow_util.dart';
import '/pages/explore/components/lagent_card/lagent_card_widget.dart';
import '/index.dart';
import 'all_agents_widget.dart' show AllAgentsWidget;
import 'package:flutter/material.dart';

class AllAgentsModel extends FlutterFlowModel<AllAgentsWidget> {
  ///  Local state fields for this page.

  String gender = 'Male';

  String active = 'NA';

  ///  State fields for stateful widgets in this page.

  // Models for LagentCard dynamic component.
  late FlutterFlowDynamicModels<LagentCardModel> lagentCardModels;

  @override
  void initState(BuildContext context) {
    lagentCardModels = FlutterFlowDynamicModels(() => LagentCardModel());
  }

  @override
  void dispose() {
    lagentCardModels.dispose();
  }
}
