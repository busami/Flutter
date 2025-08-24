import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/homes/filter/sortby_card/sortby_card_widget.dart';
import 'sortby_modal_widget.dart' show SortbyModalWidget;
import 'package:flutter/material.dart';

class SortbyModalModel extends FlutterFlowModel<SortbyModalWidget> {
  ///  Local state fields for this component.

  String selector = 'NA';

  ///  State fields for stateful widgets in this component.

  // Model for SortbyCard component.
  late SortbyCardModel sortbyCardModel1;
  // Model for SortbyCard component.
  late SortbyCardModel sortbyCardModel2;
  // Model for SortbyCard component.
  late SortbyCardModel sortbyCardModel3;
  // Model for SortbyCard component.
  late SortbyCardModel sortbyCardModel4;
  // Model for SortbyCard component.
  late SortbyCardModel sortbyCardModel5;
  // Model for SortbyCard component.
  late SortbyCardModel sortbyCardModel6;

  @override
  void initState(BuildContext context) {
    sortbyCardModel1 = createModel(context, () => SortbyCardModel());
    sortbyCardModel2 = createModel(context, () => SortbyCardModel());
    sortbyCardModel3 = createModel(context, () => SortbyCardModel());
    sortbyCardModel4 = createModel(context, () => SortbyCardModel());
    sortbyCardModel5 = createModel(context, () => SortbyCardModel());
    sortbyCardModel6 = createModel(context, () => SortbyCardModel());
  }

  @override
  void dispose() {
    sortbyCardModel1.dispose();
    sortbyCardModel2.dispose();
    sortbyCardModel3.dispose();
    sortbyCardModel4.dispose();
    sortbyCardModel5.dispose();
    sortbyCardModel6.dispose();
  }
}
