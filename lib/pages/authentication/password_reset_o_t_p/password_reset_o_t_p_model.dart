import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'password_reset_o_t_p_widget.dart' show PasswordResetOTPWidget;
import 'package:flutter/material.dart';

class PasswordResetOTPModel extends FlutterFlowModel<PasswordResetOTPWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}
