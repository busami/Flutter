import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/home/components/cities_card/cities_card_widget.dart';
import '/pages/home/components/nearby_card/nearby_card_widget.dart';
import '/pages/home/components/popular_property_card/popular_property_card_widget.dart';
import '/pages/home/components/property_category_card/property_category_card_widget.dart';
import '/profile/component/nav_bar/nav_bar_widget.dart';
import '/index.dart';
import 'home02_widget.dart' show Home02Widget;
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class Home02Model extends FlutterFlowModel<Home02Widget> {
  ///  Local state fields for this page.

  String choiceChips = 'All';

  ///  State fields for stateful widgets in this page.

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
  // State field(s) for SwipeableStack widget.
  late CardSwiperController swipeableStackController;
  // Models for PopularPropertyCard dynamic component.
  late FlutterFlowDynamicModels<PopularPropertyCardModel>
      popularPropertyCardModels;
  // Models for CitiesCard dynamic component.
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
    swipeableStackController = CardSwiperController();
    popularPropertyCardModels =
        FlutterFlowDynamicModels(() => PopularPropertyCardModel());
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
    popularPropertyCardModels.dispose();
    citiesCardModels.dispose();
    nearbyCardModels.dispose();
    navBarModel.dispose();
  }
}
