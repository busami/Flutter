import '/flutter_flow/flutter_flow_util.dart';
import '/pages/explore/components/lagent_card/lagent_card_widget.dart';
import 'realtors_widget.dart' show RealtorsWidget;
import 'package:flutter/material.dart';

class RealtorsModel extends FlutterFlowModel<RealtorsWidget> {
  ///  Local state fields for this page.

  String tabSelector = 'Upcoming';

  String selectedSort = 'NA';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Models for LagentCard dynamic component.
  late FlutterFlowDynamicModels<LagentCardModel> lagentCardModels;

  @override
  void initState(BuildContext context) {
    lagentCardModels = FlutterFlowDynamicModels(() => LagentCardModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    lagentCardModels.dispose();
  }
}
