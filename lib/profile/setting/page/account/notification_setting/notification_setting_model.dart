import '/flutter_flow/flutter_flow_util.dart';
import '/profile/component/nav_btn_04/nav_btn04_widget.dart';
import 'notification_setting_widget.dart' show NotificationSettingWidget;
import 'package:flutter/material.dart';

class NotificationSettingModel
    extends FlutterFlowModel<NotificationSettingWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavBtn_04 component.
  late NavBtn04Model navBtn04Model1;
  // Model for NavBtn_04 component.
  late NavBtn04Model navBtn04Model2;
  // Model for NavBtn_04 component.
  late NavBtn04Model navBtn04Model3;
  // Model for NavBtn_04 component.
  late NavBtn04Model navBtn04Model4;
  // Model for NavBtn_04 component.
  late NavBtn04Model navBtn04Model5;
  // Model for NavBtn_04 component.
  late NavBtn04Model navBtn04Model6;

  @override
  void initState(BuildContext context) {
    navBtn04Model1 = createModel(context, () => NavBtn04Model());
    navBtn04Model2 = createModel(context, () => NavBtn04Model());
    navBtn04Model3 = createModel(context, () => NavBtn04Model());
    navBtn04Model4 = createModel(context, () => NavBtn04Model());
    navBtn04Model5 = createModel(context, () => NavBtn04Model());
    navBtn04Model6 = createModel(context, () => NavBtn04Model());
  }

  @override
  void dispose() {
    navBtn04Model1.dispose();
    navBtn04Model2.dispose();
    navBtn04Model3.dispose();
    navBtn04Model4.dispose();
    navBtn04Model5.dispose();
    navBtn04Model6.dispose();
  }
}
