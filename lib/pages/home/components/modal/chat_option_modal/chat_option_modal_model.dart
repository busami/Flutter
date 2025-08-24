import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/option_card_02/option_card02_widget.dart';
import 'chat_option_modal_widget.dart' show ChatOptionModalWidget;
import 'package:flutter/material.dart';

class ChatOptionModalModel extends FlutterFlowModel<ChatOptionModalWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for OptionCard_02 component.
  late OptionCard02Model optionCard02Model1;
  // Model for OptionCard_02 component.
  late OptionCard02Model optionCard02Model2;
  // Model for OptionCard_02 component.
  late OptionCard02Model optionCard02Model3;
  // Model for OptionCard_02 component.
  late OptionCard02Model optionCard02Model4;
  // Model for OptionCard_02 component.
  late OptionCard02Model optionCard02Model5;

  @override
  void initState(BuildContext context) {
    optionCard02Model1 = createModel(context, () => OptionCard02Model());
    optionCard02Model2 = createModel(context, () => OptionCard02Model());
    optionCard02Model3 = createModel(context, () => OptionCard02Model());
    optionCard02Model4 = createModel(context, () => OptionCard02Model());
    optionCard02Model5 = createModel(context, () => OptionCard02Model());
  }

  @override
  void dispose() {
    optionCard02Model1.dispose();
    optionCard02Model2.dispose();
    optionCard02Model3.dispose();
    optionCard02Model4.dispose();
    optionCard02Model5.dispose();
  }
}
