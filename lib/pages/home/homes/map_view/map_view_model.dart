import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/filter_card/filter_card_widget.dart';
import '/pages/home/components/map_search_properties/map_search_properties_widget.dart';
import '/index.dart';
import 'map_view_widget.dart' show MapViewWidget;
import 'package:flutter/material.dart';

class MapViewModel extends FlutterFlowModel<MapViewWidget> {
  ///  Local state fields for this page.

  String gender = 'Male';

  String active = 'NA';

  String day = '30';

  String time = 'NA';

  bool listView = false;

  ///  State fields for stateful widgets in this page.

  // Model for FilterCard component.
  late FilterCardModel filterCardModel1;
  // Model for FilterCard component.
  late FilterCardModel filterCardModel2;
  // Model for FilterCard component.
  late FilterCardModel filterCardModel3;
  // Model for FilterCard component.
  late FilterCardModel filterCardModel4;
  // Model for FilterCard component.
  late FilterCardModel filterCardModel5;
  // Model for FilterCard component.
  late FilterCardModel filterCardModel6;
  // Model for FilterCard component.
  late FilterCardModel filterCardModel7;
  // Models for MapSearchProperties dynamic component.
  late FlutterFlowDynamicModels<MapSearchPropertiesModel>
      mapSearchPropertiesModels;

  @override
  void initState(BuildContext context) {
    filterCardModel1 = createModel(context, () => FilterCardModel());
    filterCardModel2 = createModel(context, () => FilterCardModel());
    filterCardModel3 = createModel(context, () => FilterCardModel());
    filterCardModel4 = createModel(context, () => FilterCardModel());
    filterCardModel5 = createModel(context, () => FilterCardModel());
    filterCardModel6 = createModel(context, () => FilterCardModel());
    filterCardModel7 = createModel(context, () => FilterCardModel());
    mapSearchPropertiesModels =
        FlutterFlowDynamicModels(() => MapSearchPropertiesModel());
  }

  @override
  void dispose() {
    filterCardModel1.dispose();
    filterCardModel2.dispose();
    filterCardModel3.dispose();
    filterCardModel4.dispose();
    filterCardModel5.dispose();
    filterCardModel6.dispose();
    filterCardModel7.dispose();
    mapSearchPropertiesModels.dispose();
  }
}
