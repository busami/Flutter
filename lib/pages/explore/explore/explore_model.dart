import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/explore/components/agent_card/agent_card_widget.dart';
import '/pages/explore/components/real_estate_guides_card/real_estate_guides_card_widget.dart';
import '/pages/explore/components/recommendation_card/recommendation_card_widget.dart';
import '/profile/component/nav_bar/nav_bar_widget.dart';
import '/index.dart';
import 'explore_widget.dart' show ExploreWidget;
import 'package:flutter/material.dart';

class ExploreModel extends FlutterFlowModel<ExploreWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Models for RecommendationCard dynamic component.
  late FlutterFlowDynamicModels<RecommendationCardModel>
      recommendationCardModels;
  // Models for AgentCard dynamic component.
  late FlutterFlowDynamicModels<AgentCardModel> agentCardModels;
  // Model for RealEstateGuidesCard component.
  late RealEstateGuidesCardModel realEstateGuidesCardModel1;
  // Model for RealEstateGuidesCard component.
  late RealEstateGuidesCardModel realEstateGuidesCardModel2;
  // Model for RealEstateGuidesCard component.
  late RealEstateGuidesCardModel realEstateGuidesCardModel3;
  // Model for RealEstateGuidesCard component.
  late RealEstateGuidesCardModel realEstateGuidesCardModel4;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    recommendationCardModels =
        FlutterFlowDynamicModels(() => RecommendationCardModel());
    agentCardModels = FlutterFlowDynamicModels(() => AgentCardModel());
    realEstateGuidesCardModel1 =
        createModel(context, () => RealEstateGuidesCardModel());
    realEstateGuidesCardModel2 =
        createModel(context, () => RealEstateGuidesCardModel());
    realEstateGuidesCardModel3 =
        createModel(context, () => RealEstateGuidesCardModel());
    realEstateGuidesCardModel4 =
        createModel(context, () => RealEstateGuidesCardModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    recommendationCardModels.dispose();
    agentCardModels.dispose();
    realEstateGuidesCardModel1.dispose();
    realEstateGuidesCardModel2.dispose();
    realEstateGuidesCardModel3.dispose();
    realEstateGuidesCardModel4.dispose();
    navBarModel.dispose();
  }
}
