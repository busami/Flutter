import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/filter_card/filter_card_widget.dart';
import '/pages/home/components/property_card/property_card_widget.dart';
import '/profile/component/nav_bar/nav_bar_widget.dart';
import '/index.dart';
import 'view_all_locations_based_widget.dart' show ViewAllLocationsBasedWidget;
import 'package:flutter/material.dart';

class ViewAllLocationsBasedModel
    extends FlutterFlowModel<ViewAllLocationsBasedWidget> {
  ///  Local state fields for this page.

  String tabSelector = 'Upcoming';

  String selectedSort = 'NA';

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
  // Models for PropertyCard dynamic component.
  late FlutterFlowDynamicModels<PropertyCardModel> propertyCardModels;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    filterCardModel1 = createModel(context, () => FilterCardModel());
    filterCardModel2 = createModel(context, () => FilterCardModel());
    filterCardModel3 = createModel(context, () => FilterCardModel());
    filterCardModel4 = createModel(context, () => FilterCardModel());
    filterCardModel5 = createModel(context, () => FilterCardModel());
    filterCardModel6 = createModel(context, () => FilterCardModel());
    filterCardModel7 = createModel(context, () => FilterCardModel());
    propertyCardModels = FlutterFlowDynamicModels(() => PropertyCardModel());
    navBarModel = createModel(context, () => NavBarModel());
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
    propertyCardModels.dispose();
    navBarModel.dispose();
  }
}
