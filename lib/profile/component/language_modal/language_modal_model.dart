import '/flutter_flow/flutter_flow_util.dart';
import '/profile/component/language_option/language_option_widget.dart';
import 'language_modal_widget.dart' show LanguageModalWidget;
import 'package:flutter/material.dart';

class LanguageModalModel extends FlutterFlowModel<LanguageModalWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for LanguageOption dynamic component.
  late FlutterFlowDynamicModels<LanguageOptionModel> languageOptionModels;

  @override
  void initState(BuildContext context) {
    languageOptionModels =
        FlutterFlowDynamicModels(() => LanguageOptionModel());
  }

  @override
  void dispose() {
    languageOptionModels.dispose();
  }
}
