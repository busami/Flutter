import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/company_cards/company_cards_widget.dart';
import '/index.dart';
import 'all_developers_widget.dart' show AllDevelopersWidget;
import 'package:flutter/material.dart';

class AllDevelopersModel extends FlutterFlowModel<AllDevelopersWidget> {
  ///  Local state fields for this page.

  String gender = 'Male';

  String active = 'NA';

  ///  State fields for stateful widgets in this page.

  // Models for CompanyCards dynamic component.
  late FlutterFlowDynamicModels<CompanyCardsModel> companyCardsModels;

  @override
  void initState(BuildContext context) {
    companyCardsModels = FlutterFlowDynamicModels(() => CompanyCardsModel());
  }

  @override
  void dispose() {
    companyCardsModels.dispose();
  }
}
