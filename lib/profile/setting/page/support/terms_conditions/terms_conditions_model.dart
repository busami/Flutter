import '/flutter_flow/flutter_flow_util.dart';
import '/profile/component/number_text/number_text_widget.dart';
import 'terms_conditions_widget.dart' show TermsConditionsWidget;
import 'package:flutter/material.dart';

class TermsConditionsModel extends FlutterFlowModel<TermsConditionsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NumberText component.
  late NumberTextModel numberTextModel1;
  // Model for NumberText component.
  late NumberTextModel numberTextModel2;
  // Model for NumberText component.
  late NumberTextModel numberTextModel3;
  // Model for NumberText component.
  late NumberTextModel numberTextModel4;
  // Model for NumberText component.
  late NumberTextModel numberTextModel5;
  // Model for NumberText component.
  late NumberTextModel numberTextModel6;
  // Model for NumberText component.
  late NumberTextModel numberTextModel7;

  @override
  void initState(BuildContext context) {
    numberTextModel1 = createModel(context, () => NumberTextModel());
    numberTextModel2 = createModel(context, () => NumberTextModel());
    numberTextModel3 = createModel(context, () => NumberTextModel());
    numberTextModel4 = createModel(context, () => NumberTextModel());
    numberTextModel5 = createModel(context, () => NumberTextModel());
    numberTextModel6 = createModel(context, () => NumberTextModel());
    numberTextModel7 = createModel(context, () => NumberTextModel());
  }

  @override
  void dispose() {
    numberTextModel1.dispose();
    numberTextModel2.dispose();
    numberTextModel3.dispose();
    numberTextModel4.dispose();
    numberTextModel5.dispose();
    numberTextModel6.dispose();
    numberTextModel7.dispose();
  }
}
