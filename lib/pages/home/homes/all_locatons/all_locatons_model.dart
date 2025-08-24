import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/popular_area_card/popular_area_card_widget.dart';
import '/index.dart';
import 'all_locatons_widget.dart' show AllLocatonsWidget;
import 'package:flutter/material.dart';

class AllLocatonsModel extends FlutterFlowModel<AllLocatonsWidget> {
  ///  Local state fields for this page.

  String gender = 'Male';

  String active = 'NA';

  ///  State fields for stateful widgets in this page.

  // Models for PopularAreaCard dynamic component.
  late FlutterFlowDynamicModels<PopularAreaCardModel> popularAreaCardModels;

  @override
  void initState(BuildContext context) {
    popularAreaCardModels =
        FlutterFlowDynamicModels(() => PopularAreaCardModel());
  }

  @override
  void dispose() {
    popularAreaCardModels.dispose();
  }
}
