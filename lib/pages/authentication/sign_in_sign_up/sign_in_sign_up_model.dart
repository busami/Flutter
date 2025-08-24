import '/flutter_flow/flutter_flow_util.dart';
import '/pages/authentication/components/option_card/option_card_widget.dart';
import '/index.dart';
import 'sign_in_sign_up_widget.dart' show SignInSignUpWidget;
import 'package:flutter/material.dart';

class SignInSignUpModel extends FlutterFlowModel<SignInSignUpWidget> {
  ///  Local state fields for this page.

  String authMethod = 'Sign In';

  ///  State fields for stateful widgets in this page.

  // Model for OptionCard component.
  late OptionCardModel optionCardModel1;
  // Model for OptionCard component.
  late OptionCardModel optionCardModel2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;

  @override
  void initState(BuildContext context) {
    optionCardModel1 = createModel(context, () => OptionCardModel());
    optionCardModel2 = createModel(context, () => OptionCardModel());
    passwordVisibility1 = false;
    passwordVisibility2 = false;
  }

  @override
  void dispose() {
    optionCardModel1.dispose();
    optionCardModel2.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();
  }
}
