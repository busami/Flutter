import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/amenites_card/amenites_card_widget.dart';
import '/pages/home/components/chart_card/chart_card_widget.dart';
import '/pages/home/components/nearby_facilities_card/nearby_facilities_card_widget.dart';
import '/pages/home/components/similar_properties/similar_properties_widget.dart';
import '/index.dart';
import 'property_details_widget.dart' show PropertyDetailsWidget;
import 'package:flutter/material.dart';

class PropertyDetailsModel extends FlutterFlowModel<PropertyDetailsWidget> {
  ///  Local state fields for this page.

  String choiceChips = 'All';

  bool save = false;

  String selectTab = 'About Us';

  int? currentIndex = 0;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Model for NearbyFacilitiesCard component.
  late NearbyFacilitiesCardModel nearbyFacilitiesCardModel1;
  // Model for NearbyFacilitiesCard component.
  late NearbyFacilitiesCardModel nearbyFacilitiesCardModel2;
  // Model for NearbyFacilitiesCard component.
  late NearbyFacilitiesCardModel nearbyFacilitiesCardModel3;
  // Model for NearbyFacilitiesCard component.
  late NearbyFacilitiesCardModel nearbyFacilitiesCardModel4;
  // Model for AmenitesCard component.
  late AmenitesCardModel amenitesCardModel1;
  // Model for AmenitesCard component.
  late AmenitesCardModel amenitesCardModel2;
  // Model for AmenitesCard component.
  late AmenitesCardModel amenitesCardModel3;
  // Model for AmenitesCard component.
  late AmenitesCardModel amenitesCardModel4;
  // Model for AmenitesCard component.
  late AmenitesCardModel amenitesCardModel5;
  // Model for AmenitesCard component.
  late AmenitesCardModel amenitesCardModel6;
  // Model for ChartCard component.
  late ChartCardModel chartCardModel;
  // Models for SimilarProperties dynamic component.
  late FlutterFlowDynamicModels<SimilarPropertiesModel> similarPropertiesModels;

  @override
  void initState(BuildContext context) {
    textControllerValidator = _textControllerValidator;
    nearbyFacilitiesCardModel1 =
        createModel(context, () => NearbyFacilitiesCardModel());
    nearbyFacilitiesCardModel2 =
        createModel(context, () => NearbyFacilitiesCardModel());
    nearbyFacilitiesCardModel3 =
        createModel(context, () => NearbyFacilitiesCardModel());
    nearbyFacilitiesCardModel4 =
        createModel(context, () => NearbyFacilitiesCardModel());
    amenitesCardModel1 = createModel(context, () => AmenitesCardModel());
    amenitesCardModel2 = createModel(context, () => AmenitesCardModel());
    amenitesCardModel3 = createModel(context, () => AmenitesCardModel());
    amenitesCardModel4 = createModel(context, () => AmenitesCardModel());
    amenitesCardModel5 = createModel(context, () => AmenitesCardModel());
    amenitesCardModel6 = createModel(context, () => AmenitesCardModel());
    chartCardModel = createModel(context, () => ChartCardModel());
    similarPropertiesModels =
        FlutterFlowDynamicModels(() => SimilarPropertiesModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    nearbyFacilitiesCardModel1.dispose();
    nearbyFacilitiesCardModel2.dispose();
    nearbyFacilitiesCardModel3.dispose();
    nearbyFacilitiesCardModel4.dispose();
    amenitesCardModel1.dispose();
    amenitesCardModel2.dispose();
    amenitesCardModel3.dispose();
    amenitesCardModel4.dispose();
    amenitesCardModel5.dispose();
    amenitesCardModel6.dispose();
    chartCardModel.dispose();
    similarPropertiesModels.dispose();
  }
}
