import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'price_filter_widget.dart' show PriceFilterWidget;
import 'package:flutter/material.dart';

class PriceFilterModel extends FlutterFlowModel<PriceFilterWidget> {
  ///  Local state fields for this component.

  String selector = 'In the next 3 days';

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
