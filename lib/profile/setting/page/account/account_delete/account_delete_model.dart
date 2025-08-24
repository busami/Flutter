import '/flutter_flow/flutter_flow_util.dart';
import '/profile/component/nav_btns/nav_btn_03/nav_btn03_widget.dart';
import '/index.dart';
import 'account_delete_widget.dart' show AccountDeleteWidget;
import 'package:flutter/material.dart';

class AccountDeleteModel extends FlutterFlowModel<AccountDeleteWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavBtn_03 component.
  late NavBtn03Model navBtn03Model1;
  // Model for NavBtn_03 component.
  late NavBtn03Model navBtn03Model2;
  // Model for NavBtn_03 component.
  late NavBtn03Model navBtn03Model3;
  // Model for NavBtn_03 component.
  late NavBtn03Model navBtn03Model4;
  // Model for NavBtn_03 component.
  late NavBtn03Model navBtn03Model5;

  @override
  void initState(BuildContext context) {
    navBtn03Model1 = createModel(context, () => NavBtn03Model());
    navBtn03Model2 = createModel(context, () => NavBtn03Model());
    navBtn03Model3 = createModel(context, () => NavBtn03Model());
    navBtn03Model4 = createModel(context, () => NavBtn03Model());
    navBtn03Model5 = createModel(context, () => NavBtn03Model());
  }

  @override
  void dispose() {
    navBtn03Model1.dispose();
    navBtn03Model2.dispose();
    navBtn03Model3.dispose();
    navBtn03Model4.dispose();
    navBtn03Model5.dispose();
  }
}
