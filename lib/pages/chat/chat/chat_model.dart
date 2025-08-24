import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/chat/components/chat_title/chat_title_widget.dart';
import '/pages/chat/components/tab_selector/tab_selector_widget.dart';
import '/profile/component/nav_bar/nav_bar_widget.dart';
import '/index.dart';
import 'chat_widget.dart' show ChatWidget;
import 'package:flutter/material.dart';

class ChatModel extends FlutterFlowModel<ChatWidget> {
  ///  Local state fields for this page.

  String tabSelector = 'As buyer';

  ///  State fields for stateful widgets in this page.

  // Model for TabSelector component.
  late TabSelectorModel tabSelectorModel1;
  // Model for TabSelector component.
  late TabSelectorModel tabSelectorModel2;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for ChatTitle component.
  late ChatTitleModel chatTitleModel1;
  // Model for ChatTitle component.
  late ChatTitleModel chatTitleModel2;
  // Model for ChatTitle component.
  late ChatTitleModel chatTitleModel3;
  // Model for ChatTitle component.
  late ChatTitleModel chatTitleModel4;
  // Model for ChatTitle component.
  late ChatTitleModel chatTitleModel5;
  // Model for ChatTitle component.
  late ChatTitleModel chatTitleModel6;
  // Model for ChatTitle component.
  late ChatTitleModel chatTitleModel7;
  // Model for ChatTitle component.
  late ChatTitleModel chatTitleModel8;
  // Model for ChatTitle component.
  late ChatTitleModel chatTitleModel9;
  // Model for ChatTitle component.
  late ChatTitleModel chatTitleModel10;
  // Model for ChatTitle component.
  late ChatTitleModel chatTitleModel11;
  // Model for ChatTitle component.
  late ChatTitleModel chatTitleModel12;
  // Model for ChatTitle component.
  late ChatTitleModel chatTitleModel13;
  // Model for ChatTitle component.
  late ChatTitleModel chatTitleModel14;
  // Model for ChatTitle component.
  late ChatTitleModel chatTitleModel15;
  // Model for ChatTitle component.
  late ChatTitleModel chatTitleModel16;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    tabSelectorModel1 = createModel(context, () => TabSelectorModel());
    tabSelectorModel2 = createModel(context, () => TabSelectorModel());
    chatTitleModel1 = createModel(context, () => ChatTitleModel());
    chatTitleModel2 = createModel(context, () => ChatTitleModel());
    chatTitleModel3 = createModel(context, () => ChatTitleModel());
    chatTitleModel4 = createModel(context, () => ChatTitleModel());
    chatTitleModel5 = createModel(context, () => ChatTitleModel());
    chatTitleModel6 = createModel(context, () => ChatTitleModel());
    chatTitleModel7 = createModel(context, () => ChatTitleModel());
    chatTitleModel8 = createModel(context, () => ChatTitleModel());
    chatTitleModel9 = createModel(context, () => ChatTitleModel());
    chatTitleModel10 = createModel(context, () => ChatTitleModel());
    chatTitleModel11 = createModel(context, () => ChatTitleModel());
    chatTitleModel12 = createModel(context, () => ChatTitleModel());
    chatTitleModel13 = createModel(context, () => ChatTitleModel());
    chatTitleModel14 = createModel(context, () => ChatTitleModel());
    chatTitleModel15 = createModel(context, () => ChatTitleModel());
    chatTitleModel16 = createModel(context, () => ChatTitleModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    tabSelectorModel1.dispose();
    tabSelectorModel2.dispose();
    chatTitleModel1.dispose();
    chatTitleModel2.dispose();
    chatTitleModel3.dispose();
    chatTitleModel4.dispose();
    chatTitleModel5.dispose();
    chatTitleModel6.dispose();
    chatTitleModel7.dispose();
    chatTitleModel8.dispose();
    chatTitleModel9.dispose();
    chatTitleModel10.dispose();
    chatTitleModel11.dispose();
    chatTitleModel12.dispose();
    chatTitleModel13.dispose();
    chatTitleModel14.dispose();
    chatTitleModel15.dispose();
    chatTitleModel16.dispose();
    navBarModel.dispose();
  }
}
