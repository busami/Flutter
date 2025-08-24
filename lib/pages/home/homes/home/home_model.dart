import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/home/components/cities_card/cities_card_widget.dart';
import '/pages/home/components/company_card/company_card_widget.dart';
import '/pages/home/components/nearby_card/nearby_card_widget.dart';
import '/pages/home/components/property_card_02/property_card02_widget.dart';
import '/pages/home/components/property_category_card/property_category_card_widget.dart';
import '/profile/component/nav_bar/nav_bar_widget.dart';
import '/index.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  String choiceChips = 'All';

  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController1;
  int carouselCurrentIndex1 = 1;

  // Model for PropertyCategoryCard component.
  late PropertyCategoryCardModel propertyCategoryCardModel1;
  // Model for PropertyCategoryCard component.
  late PropertyCategoryCardModel propertyCategoryCardModel2;
  // Model for PropertyCategoryCard component.
  late PropertyCategoryCardModel propertyCategoryCardModel3;
  // Model for PropertyCategoryCard component.
  late PropertyCategoryCardModel propertyCategoryCardModel4;
  // Model for PropertyCategoryCard component.
  late PropertyCategoryCardModel propertyCategoryCardModel5;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController2;
  int carouselCurrentIndex2 = 1;

  // Models for PropertyCard_02 dynamic component.
  late FlutterFlowDynamicModels<PropertyCard02Model> propertyCard02Models;
  // Models for CompanyCard dynamic component.
  late FlutterFlowDynamicModels<CompanyCardModel> companyCardModels;
  // Models for CitiesCard.
  late FlutterFlowDynamicModels<CitiesCardModel> citiesCardModels;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Models for NearbyCard dynamic component.
  late FlutterFlowDynamicModels<NearbyCardModel> nearbyCardModels;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    propertyCategoryCardModel1 =
        createModel(context, () => PropertyCategoryCardModel());
    propertyCategoryCardModel2 =
        createModel(context, () => PropertyCategoryCardModel());
    propertyCategoryCardModel3 =
        createModel(context, () => PropertyCategoryCardModel());
    propertyCategoryCardModel4 =
        createModel(context, () => PropertyCategoryCardModel());
    propertyCategoryCardModel5 =
        createModel(context, () => PropertyCategoryCardModel());
    propertyCard02Models =
        FlutterFlowDynamicModels(() => PropertyCard02Model());
    companyCardModels = FlutterFlowDynamicModels(() => CompanyCardModel());
    citiesCardModels = FlutterFlowDynamicModels(() => CitiesCardModel());
    nearbyCardModels = FlutterFlowDynamicModels(() => NearbyCardModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    propertyCategoryCardModel1.dispose();
    propertyCategoryCardModel2.dispose();
    propertyCategoryCardModel3.dispose();
    propertyCategoryCardModel4.dispose();
    propertyCategoryCardModel5.dispose();
    propertyCard02Models.dispose();
    companyCardModels.dispose();
    citiesCardModels.dispose();
    nearbyCardModels.dispose();
    navBarModel.dispose();
  }
}
