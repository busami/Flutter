import '/flutter_flow/flutter_flow_util.dart';
import '/profile/component/nav_btns/nav_btn_08/nav_btn08_widget.dart';
import 'more_option_widget.dart' show MoreOptionWidget;
import 'package:flutter/material.dart';

class MoreOptionModel extends FlutterFlowModel<MoreOptionWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for NavBtn_08 component.
  late NavBtn08Model navBtn08Model1;
  // Model for NavBtn_08 component.
  late NavBtn08Model navBtn08Model2;
  // Model for NavBtn_08 component.
  late NavBtn08Model navBtn08Model3;
  // Model for NavBtn_08 component.
  late NavBtn08Model navBtn08Model4;
  // Model for NavBtn_08 component.
  late NavBtn08Model navBtn08Model5;

  @override
  void initState(BuildContext context) {
    navBtn08Model1 = createModel(context, () => NavBtn08Model());
    navBtn08Model2 = createModel(context, () => NavBtn08Model());
    navBtn08Model3 = createModel(context, () => NavBtn08Model());
    navBtn08Model4 = createModel(context, () => NavBtn08Model());
    navBtn08Model5 = createModel(context, () => NavBtn08Model());
  }

  @override
  void dispose() {
    navBtn08Model1.dispose();
    navBtn08Model2.dispose();
    navBtn08Model3.dispose();
    navBtn08Model4.dispose();
    navBtn08Model5.dispose();
  }
}
