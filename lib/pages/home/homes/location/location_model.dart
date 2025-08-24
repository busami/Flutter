import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/location_card/location_card_widget.dart';
import 'location_widget.dart' show LocationWidget;
import 'package:flutter/material.dart';

class LocationModel extends FlutterFlowModel<LocationWidget> {
  ///  Local state fields for this page.

  String gender = 'Male';

  String active = 'NA';

  String day = '30';

  String time = 'NA';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for LocationCard component.
  late LocationCardModel locationCardModel1;
  // Model for LocationCard component.
  late LocationCardModel locationCardModel2;
  // Model for LocationCard component.
  late LocationCardModel locationCardModel3;
  // Model for LocationCard component.
  late LocationCardModel locationCardModel4;
  // Model for LocationCard component.
  late LocationCardModel locationCardModel5;
  // Model for LocationCard component.
  late LocationCardModel locationCardModel6;
  // Model for LocationCard component.
  late LocationCardModel locationCardModel7;

  @override
  void initState(BuildContext context) {
    locationCardModel1 = createModel(context, () => LocationCardModel());
    locationCardModel2 = createModel(context, () => LocationCardModel());
    locationCardModel3 = createModel(context, () => LocationCardModel());
    locationCardModel4 = createModel(context, () => LocationCardModel());
    locationCardModel5 = createModel(context, () => LocationCardModel());
    locationCardModel6 = createModel(context, () => LocationCardModel());
    locationCardModel7 = createModel(context, () => LocationCardModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    locationCardModel1.dispose();
    locationCardModel2.dispose();
    locationCardModel3.dispose();
    locationCardModel4.dispose();
    locationCardModel5.dispose();
    locationCardModel6.dispose();
    locationCardModel7.dispose();
  }
}
