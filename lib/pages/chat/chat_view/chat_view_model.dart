import '/flutter_flow/flutter_flow_util.dart';
import '/pages/explore/components/send_button/send_button_widget.dart';
import 'chat_view_widget.dart' show ChatViewWidget;
import 'package:flutter/material.dart';

class ChatViewModel extends FlutterFlowModel<ChatViewWidget> {
  ///  Local state fields for this page.

  String tabSelector = 'Chats';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for SendButton component.
  late SendButtonModel sendButtonModel;

  @override
  void initState(BuildContext context) {
    sendButtonModel = createModel(context, () => SendButtonModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    sendButtonModel.dispose();
  }
}
