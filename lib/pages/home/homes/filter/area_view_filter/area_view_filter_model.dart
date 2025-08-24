import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'area_view_filter_widget.dart' show AreaViewFilterWidget;
import 'package:flutter/material.dart';

class AreaViewFilterModel extends FlutterFlowModel<AreaViewFilterWidget> {
  ///  Local state fields for this component.

  String selector = 'Everyone';

  ///  State fields for stateful widgets in this component.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  List<String>? get choiceChipsValues => choiceChipsValueController?.value;
  set choiceChipsValues(List<String>? val) =>
      choiceChipsValueController?.value = val;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
