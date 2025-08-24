import '/flutter_flow/flutter_flow_util.dart';
import '/profile/component/nav_btns/nav_btn_09/nav_btn09_widget.dart';
import 'chat_section_widget.dart' show ChatSectionWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ChatSectionModel extends FlutterFlowModel<ChatSectionWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // Model for NavBtn_09 component.
  late NavBtn09Model navBtn09Model1;
  // Model for NavBtn_09 component.
  late NavBtn09Model navBtn09Model2;

  @override
  void initState(BuildContext context) {
    navBtn09Model1 = createModel(context, () => NavBtn09Model());
    navBtn09Model2 = createModel(context, () => NavBtn09Model());
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    navBtn09Model1.dispose();
    navBtn09Model2.dispose();
  }
}
