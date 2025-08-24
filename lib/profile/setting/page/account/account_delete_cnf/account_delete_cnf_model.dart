import '/flutter_flow/flutter_flow_util.dart';
import 'account_delete_cnf_widget.dart' show AccountDeleteCnfWidget;
import 'package:flutter/material.dart';

class AccountDeleteCnfModel extends FlutterFlowModel<AccountDeleteCnfWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
