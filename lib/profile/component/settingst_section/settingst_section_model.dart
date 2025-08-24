import '/flutter_flow/flutter_flow_util.dart';
import '/profile/component/nav_btns/nav_btn_09/nav_btn09_widget.dart';
import 'settingst_section_widget.dart' show SettingstSectionWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class SettingstSectionModel extends FlutterFlowModel<SettingstSectionWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // Model for NavBtn_09 component.
  late NavBtn09Model navBtn09Model1;
  // Model for NavBtn_09 component.
  late NavBtn09Model navBtn09Model2;
  // Model for NavBtn_09 component.
  late NavBtn09Model navBtn09Model3;
  // Model for NavBtn_09 component.
  late NavBtn09Model navBtn09Model4;
  // Model for NavBtn_09 component.
  late NavBtn09Model navBtn09Model5;
  // Model for NavBtn_09 component.
  late NavBtn09Model navBtn09Model6;

  @override
  void initState(BuildContext context) {
    navBtn09Model1 = createModel(context, () => NavBtn09Model());
    navBtn09Model2 = createModel(context, () => NavBtn09Model());
    navBtn09Model3 = createModel(context, () => NavBtn09Model());
    navBtn09Model4 = createModel(context, () => NavBtn09Model());
    navBtn09Model5 = createModel(context, () => NavBtn09Model());
    navBtn09Model6 = createModel(context, () => NavBtn09Model());
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    navBtn09Model1.dispose();
    navBtn09Model2.dispose();
    navBtn09Model3.dispose();
    navBtn09Model4.dispose();
    navBtn09Model5.dispose();
    navBtn09Model6.dispose();
  }
}
