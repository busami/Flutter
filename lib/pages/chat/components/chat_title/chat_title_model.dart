import '/flutter_flow/flutter_flow_util.dart';
import '/profile/component/avatar_chat/avatar_chat_widget.dart';
import 'chat_title_widget.dart' show ChatTitleWidget;
import 'package:flutter/material.dart';

class ChatTitleModel extends FlutterFlowModel<ChatTitleWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for AvatarChat component.
  late AvatarChatModel avatarChatModel;

  @override
  void initState(BuildContext context) {
    avatarChatModel = createModel(context, () => AvatarChatModel());
  }

  @override
  void dispose() {
    avatarChatModel.dispose();
  }
}
