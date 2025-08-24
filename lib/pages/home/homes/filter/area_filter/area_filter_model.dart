import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'area_filter_widget.dart' show AreaFilterWidget;
import 'package:flutter/material.dart';

class AreaFilterModel extends FlutterFlowModel<AreaFilterWidget> {
  ///  Local state fields for this component.

  String selector = 'Everyone';

  ///  State fields for stateful widgets in this component.

  // State field(s) for Slider widget.
  double? sliderValue;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
