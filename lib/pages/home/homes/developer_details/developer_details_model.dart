import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'developer_details_widget.dart' show DeveloperDetailsWidget;
import 'package:flutter/material.dart';

class DeveloperDetailsModel extends FlutterFlowModel<DeveloperDetailsWidget> {
  ///  Local state fields for this page.

  String gender = 'Male';

  String active = 'NA';

  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
