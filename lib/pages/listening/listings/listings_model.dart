import '/flutter_flow/flutter_flow_util.dart';
import '/pages/listening/components/chartcard_02/chartcard02_widget.dart';
import '/pages/listening/components/properties_card/properties_card_widget.dart';
import '/pages/listening/components/selector_06/selector06_widget.dart';
import '/profile/component/nav_bar/nav_bar_widget.dart';
import '/index.dart';
import 'listings_widget.dart' show ListingsWidget;
import 'package:flutter/material.dart';

class ListingsModel extends FlutterFlowModel<ListingsWidget> {
  ///  Local state fields for this page.

  String tabSelector = 'My Property';

  ///  State fields for stateful widgets in this page.

  // Model for Chartcard_02 component.
  late Chartcard02Model chartcard02Model;
  // Model for Selector_06 component.
  late Selector06Model selector06Model1;
  // Model for Selector_06 component.
  late Selector06Model selector06Model2;
  // Models for PropertiesCard dynamic component.
  late FlutterFlowDynamicModels<PropertiesCardModel> propertiesCardModels1;
  // Models for PropertiesCard dynamic component.
  late FlutterFlowDynamicModels<PropertiesCardModel> propertiesCardModels2;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    chartcard02Model = createModel(context, () => Chartcard02Model());
    selector06Model1 = createModel(context, () => Selector06Model());
    selector06Model2 = createModel(context, () => Selector06Model());
    propertiesCardModels1 =
        FlutterFlowDynamicModels(() => PropertiesCardModel());
    propertiesCardModels2 =
        FlutterFlowDynamicModels(() => PropertiesCardModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    chartcard02Model.dispose();
    selector06Model1.dispose();
    selector06Model2.dispose();
    propertiesCardModels1.dispose();
    propertiesCardModels2.dispose();
    navBarModel.dispose();
  }
}
