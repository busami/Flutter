import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/homes/filter/filter_option_card/filter_option_card_widget.dart';
import 'speciality_widget.dart' show SpecialityWidget;
import 'package:flutter/material.dart';

class SpecialityModel extends FlutterFlowModel<SpecialityWidget> {
  ///  Local state fields for this component.

  String selector = 'Everyone';

  ///  State fields for stateful widgets in this component.

  // Model for FilterOptionCard component.
  late FilterOptionCardModel filterOptionCardModel1;
  // Model for FilterOptionCard component.
  late FilterOptionCardModel filterOptionCardModel2;
  // Model for FilterOptionCard component.
  late FilterOptionCardModel filterOptionCardModel3;
  // Model for FilterOptionCard component.
  late FilterOptionCardModel filterOptionCardModel4;
  // Model for FilterOptionCard component.
  late FilterOptionCardModel filterOptionCardModel5;

  @override
  void initState(BuildContext context) {
    filterOptionCardModel1 =
        createModel(context, () => FilterOptionCardModel());
    filterOptionCardModel2 =
        createModel(context, () => FilterOptionCardModel());
    filterOptionCardModel3 =
        createModel(context, () => FilterOptionCardModel());
    filterOptionCardModel4 =
        createModel(context, () => FilterOptionCardModel());
    filterOptionCardModel5 =
        createModel(context, () => FilterOptionCardModel());
  }

  @override
  void dispose() {
    filterOptionCardModel1.dispose();
    filterOptionCardModel2.dispose();
    filterOptionCardModel3.dispose();
    filterOptionCardModel4.dispose();
    filterOptionCardModel5.dispose();
  }
}
