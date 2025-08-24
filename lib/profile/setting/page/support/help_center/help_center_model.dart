import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/profile/component/f_a_q_card/f_a_q_card_widget.dart';
import '/profile/component/nav_btns/nav_btn_02/nav_btn02_widget.dart';
import '/index.dart';
import 'help_center_widget.dart' show HelpCenterWidget;
import 'package:flutter/material.dart';

class HelpCenterModel extends FlutterFlowModel<HelpCenterWidget> {
  ///  Local state fields for this page.

  String selectedTab = 'FAQ';

  String faqsOpen = 'What Is Fixify?';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for NavBtn_02 component.
  late NavBtn02Model navBtn02Model1;
  // Model for NavBtn_02 component.
  late NavBtn02Model navBtn02Model2;
  // Model for NavBtn_02 component.
  late NavBtn02Model navBtn02Model3;
  // Model for NavBtn_02 component.
  late NavBtn02Model navBtn02Model4;
  // Model for NavBtn_02 component.
  late NavBtn02Model navBtn02Model5;
  // Model for NavBtn_02 component.
  late NavBtn02Model navBtn02Model6;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel1;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel2;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel3;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel4;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel5;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel6;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel7;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel8;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel9;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel10;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel11;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel12;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel13;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel14;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel15;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel16;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel17;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel18;
  // Model for FAQCard component.
  late FAQCardModel fAQCardModel19;

  @override
  void initState(BuildContext context) {
    navBtn02Model1 = createModel(context, () => NavBtn02Model());
    navBtn02Model2 = createModel(context, () => NavBtn02Model());
    navBtn02Model3 = createModel(context, () => NavBtn02Model());
    navBtn02Model4 = createModel(context, () => NavBtn02Model());
    navBtn02Model5 = createModel(context, () => NavBtn02Model());
    navBtn02Model6 = createModel(context, () => NavBtn02Model());
    fAQCardModel1 = createModel(context, () => FAQCardModel());
    fAQCardModel2 = createModel(context, () => FAQCardModel());
    fAQCardModel3 = createModel(context, () => FAQCardModel());
    fAQCardModel4 = createModel(context, () => FAQCardModel());
    fAQCardModel5 = createModel(context, () => FAQCardModel());
    fAQCardModel6 = createModel(context, () => FAQCardModel());
    fAQCardModel7 = createModel(context, () => FAQCardModel());
    fAQCardModel8 = createModel(context, () => FAQCardModel());
    fAQCardModel9 = createModel(context, () => FAQCardModel());
    fAQCardModel10 = createModel(context, () => FAQCardModel());
    fAQCardModel11 = createModel(context, () => FAQCardModel());
    fAQCardModel12 = createModel(context, () => FAQCardModel());
    fAQCardModel13 = createModel(context, () => FAQCardModel());
    fAQCardModel14 = createModel(context, () => FAQCardModel());
    fAQCardModel15 = createModel(context, () => FAQCardModel());
    fAQCardModel16 = createModel(context, () => FAQCardModel());
    fAQCardModel17 = createModel(context, () => FAQCardModel());
    fAQCardModel18 = createModel(context, () => FAQCardModel());
    fAQCardModel19 = createModel(context, () => FAQCardModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    navBtn02Model1.dispose();
    navBtn02Model2.dispose();
    navBtn02Model3.dispose();
    navBtn02Model4.dispose();
    navBtn02Model5.dispose();
    navBtn02Model6.dispose();
    fAQCardModel1.dispose();
    fAQCardModel2.dispose();
    fAQCardModel3.dispose();
    fAQCardModel4.dispose();
    fAQCardModel5.dispose();
    fAQCardModel6.dispose();
    fAQCardModel7.dispose();
    fAQCardModel8.dispose();
    fAQCardModel9.dispose();
    fAQCardModel10.dispose();
    fAQCardModel11.dispose();
    fAQCardModel12.dispose();
    fAQCardModel13.dispose();
    fAQCardModel14.dispose();
    fAQCardModel15.dispose();
    fAQCardModel16.dispose();
    fAQCardModel17.dispose();
    fAQCardModel18.dispose();
    fAQCardModel19.dispose();
  }
}
