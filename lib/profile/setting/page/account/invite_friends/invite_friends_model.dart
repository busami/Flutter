import '/flutter_flow/flutter_flow_util.dart';
import '/profile/component/contact_card/contact_card_widget.dart';
import 'invite_friends_widget.dart' show InviteFriendsWidget;
import 'package:flutter/material.dart';

class InviteFriendsModel extends FlutterFlowModel<InviteFriendsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Models for ContactCard dynamic component.
  late FlutterFlowDynamicModels<ContactCardModel> contactCardModels;

  @override
  void initState(BuildContext context) {
    contactCardModels = FlutterFlowDynamicModels(() => ContactCardModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    contactCardModels.dispose();
  }
}
