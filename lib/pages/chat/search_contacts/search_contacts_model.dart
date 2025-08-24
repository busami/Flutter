import '/flutter_flow/flutter_flow_util.dart';
import '/pages/chat/components/chat_title/chat_title_widget.dart';
import 'search_contacts_widget.dart' show SearchContactsWidget;
import 'package:flutter/material.dart';

class SearchContactsModel extends FlutterFlowModel<SearchContactsWidget> {
  ///  Local state fields for this page.

  String tabSelector = 'Chats';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
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

  @override
  void initState(BuildContext context) {
    chatTitleModel1 = createModel(context, () => ChatTitleModel());
    chatTitleModel2 = createModel(context, () => ChatTitleModel());
    chatTitleModel3 = createModel(context, () => ChatTitleModel());
    chatTitleModel4 = createModel(context, () => ChatTitleModel());
    chatTitleModel5 = createModel(context, () => ChatTitleModel());
    chatTitleModel6 = createModel(context, () => ChatTitleModel());
    chatTitleModel7 = createModel(context, () => ChatTitleModel());
    chatTitleModel8 = createModel(context, () => ChatTitleModel());
    chatTitleModel9 = createModel(context, () => ChatTitleModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    chatTitleModel1.dispose();
    chatTitleModel2.dispose();
    chatTitleModel3.dispose();
    chatTitleModel4.dispose();
    chatTitleModel5.dispose();
    chatTitleModel6.dispose();
    chatTitleModel7.dispose();
    chatTitleModel8.dispose();
    chatTitleModel9.dispose();
  }
}
