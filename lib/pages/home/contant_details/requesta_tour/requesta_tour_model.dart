import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/date_card/date_card_widget.dart';
import '/pages/home/components/tour_slector/tour_slector_widget.dart';
import '/index.dart';
import 'requesta_tour_widget.dart' show RequestaTourWidget;
import 'package:flutter/material.dart';

class RequestaTourModel extends FlutterFlowModel<RequestaTourWidget> {
  ///  Local state fields for this page.

  String selector = 'NA';

  String timeSelector = 'Anytime';

  ///  State fields for stateful widgets in this page.

  // Model for DateCard component.
  late DateCardModel dateCardModel1;
  // Model for DateCard component.
  late DateCardModel dateCardModel2;
  // Model for DateCard component.
  late DateCardModel dateCardModel3;
  // Model for DateCard component.
  late DateCardModel dateCardModel4;
  // Model for DateCard component.
  late DateCardModel dateCardModel5;
  // Model for DateCard component.
  late DateCardModel dateCardModel6;
  // Model for DateCard component.
  late DateCardModel dateCardModel7;
  // Model for DateCard component.
  late DateCardModel dateCardModel8;
  // Model for DateCard component.
  late DateCardModel dateCardModel9;
  // Model for TourSlector component.
  late TourSlectorModel tourSlectorModel1;
  // Model for TourSlector component.
  late TourSlectorModel tourSlectorModel2;
  // Model for TourSlector component.
  late TourSlectorModel tourSlectorModel3;
  // Model for TourSlector component.
  late TourSlectorModel tourSlectorModel4;
  // Model for TourSlector component.
  late TourSlectorModel tourSlectorModel5;

  @override
  void initState(BuildContext context) {
    dateCardModel1 = createModel(context, () => DateCardModel());
    dateCardModel2 = createModel(context, () => DateCardModel());
    dateCardModel3 = createModel(context, () => DateCardModel());
    dateCardModel4 = createModel(context, () => DateCardModel());
    dateCardModel5 = createModel(context, () => DateCardModel());
    dateCardModel6 = createModel(context, () => DateCardModel());
    dateCardModel7 = createModel(context, () => DateCardModel());
    dateCardModel8 = createModel(context, () => DateCardModel());
    dateCardModel9 = createModel(context, () => DateCardModel());
    tourSlectorModel1 = createModel(context, () => TourSlectorModel());
    tourSlectorModel2 = createModel(context, () => TourSlectorModel());
    tourSlectorModel3 = createModel(context, () => TourSlectorModel());
    tourSlectorModel4 = createModel(context, () => TourSlectorModel());
    tourSlectorModel5 = createModel(context, () => TourSlectorModel());
  }

  @override
  void dispose() {
    dateCardModel1.dispose();
    dateCardModel2.dispose();
    dateCardModel3.dispose();
    dateCardModel4.dispose();
    dateCardModel5.dispose();
    dateCardModel6.dispose();
    dateCardModel7.dispose();
    dateCardModel8.dispose();
    dateCardModel9.dispose();
    tourSlectorModel1.dispose();
    tourSlectorModel2.dispose();
    tourSlectorModel3.dispose();
    tourSlectorModel4.dispose();
    tourSlectorModel5.dispose();
  }
}
