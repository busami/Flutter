import '/flutter_flow/flutter_flow_util.dart';
import '/profile/component/nav_btns/nav_btn_09/nav_btn09_widget.dart';
import '/profile/component/nav_btns/nav_btn_10/nav_btn10_widget.dart';
import '/index.dart';
import 'security_widget.dart' show SecurityWidget;
import 'package:flutter/material.dart';

class SecurityModel extends FlutterFlowModel<SecurityWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavBtn_09 component.
  late NavBtn09Model navBtn09Model1;
  // Model for NavBtn_09 component.
  late NavBtn09Model navBtn09Model2;
  // Model for NavBtn_10 component.
  late NavBtn10Model navBtn10Model1;
  // Model for NavBtn_10 component.
  late NavBtn10Model navBtn10Model2;
  // Model for NavBtn_10 component.
  late NavBtn10Model navBtn10Model3;
  // Model for NavBtn_10 component.
  late NavBtn10Model navBtn10Model4;
  // Model for NavBtn_09 component.
  late NavBtn09Model navBtn09Model3;

  @override
  void initState(BuildContext context) {
    navBtn09Model1 = createModel(context, () => NavBtn09Model());
    navBtn09Model2 = createModel(context, () => NavBtn09Model());
    navBtn10Model1 = createModel(context, () => NavBtn10Model());
    navBtn10Model2 = createModel(context, () => NavBtn10Model());
    navBtn10Model3 = createModel(context, () => NavBtn10Model());
    navBtn10Model4 = createModel(context, () => NavBtn10Model());
    navBtn09Model3 = createModel(context, () => NavBtn09Model());
  }

  @override
  void dispose() {
    navBtn09Model1.dispose();
    navBtn09Model2.dispose();
    navBtn10Model1.dispose();
    navBtn10Model2.dispose();
    navBtn10Model3.dispose();
    navBtn10Model4.dispose();
    navBtn09Model3.dispose();
  }
}
