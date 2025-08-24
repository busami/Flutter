import '/flutter_flow/flutter_flow_util.dart';
import '/profile/component/language_option/language_option_widget.dart';
import 'languages_widget.dart' show LanguagesWidget;
import 'package:flutter/material.dart';

class LanguagesModel extends FlutterFlowModel<LanguagesWidget> {
  ///  State fields for stateful widgets in this page.

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
