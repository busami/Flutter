import '/flutter_flow/flutter_flow_util.dart';
import '/profile/component/nav_btns/nav_btn_08/nav_btn08_widget.dart';
import 'chats_more_options_widget.dart' show ChatsMoreOptionsWidget;
import 'package:flutter/material.dart';

class ChatsMoreOptionsModel extends FlutterFlowModel<ChatsMoreOptionsWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for NavBtn_08 component.
  late NavBtn08Model navBtn08Model1;
  // Model for NavBtn_08 component.
  late NavBtn08Model navBtn08Model2;
  // Model for NavBtn_08 component.
  late NavBtn08Model navBtn08Model3;

  @override
  void initState(BuildContext context) {
    navBtn08Model1 = createModel(context, () => NavBtn08Model());
    navBtn08Model2 = createModel(context, () => NavBtn08Model());
    navBtn08Model3 = createModel(context, () => NavBtn08Model());
  }

  @override
  void dispose() {
    navBtn08Model1.dispose();
    navBtn08Model2.dispose();
    navBtn08Model3.dispose();
  }
}
