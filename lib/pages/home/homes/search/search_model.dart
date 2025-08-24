import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/rcent_searches/rcent_searches_widget.dart';
import '/pages/home/components/selector_02/selector02_widget.dart';
import '/pages/home/components/selector_05/selector05_widget.dart';
import '/profile/component/nav_bar/nav_bar_widget.dart';
import '/index.dart';
import 'search_widget.dart' show SearchWidget;
import 'package:flutter/material.dart';

class SearchModel extends FlutterFlowModel<SearchWidget> {
  ///  Local state fields for this page.

  String slector = 'All';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for Selector_02 component.
  late Selector02Model selector02Model1;
  // Model for Selector_02 component.
  late Selector02Model selector02Model2;
  // Model for Selector_02 component.
  late Selector02Model selector02Model3;
  // Model for Selector_02 component.
  late Selector02Model selector02Model4;
  // Model for Selector_02 component.
  late Selector02Model selector02Model5;
  // Model for RcentSearches component.
  late RcentSearchesModel rcentSearchesModel1;
  // Model for RcentSearches component.
  late RcentSearchesModel rcentSearchesModel2;
  // Model for RcentSearches component.
  late RcentSearchesModel rcentSearchesModel3;
  // Model for RcentSearches component.
  late RcentSearchesModel rcentSearchesModel4;
  // Model for Selector_05 component.
  late Selector05Model selector05Model1;
  // Model for Selector_05 component.
  late Selector05Model selector05Model2;
  // Model for Selector_05 component.
  late Selector05Model selector05Model3;
  // Model for Selector_05 component.
  late Selector05Model selector05Model4;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    selector02Model1 = createModel(context, () => Selector02Model());
    selector02Model2 = createModel(context, () => Selector02Model());
    selector02Model3 = createModel(context, () => Selector02Model());
    selector02Model4 = createModel(context, () => Selector02Model());
    selector02Model5 = createModel(context, () => Selector02Model());
    rcentSearchesModel1 = createModel(context, () => RcentSearchesModel());
    rcentSearchesModel2 = createModel(context, () => RcentSearchesModel());
    rcentSearchesModel3 = createModel(context, () => RcentSearchesModel());
    rcentSearchesModel4 = createModel(context, () => RcentSearchesModel());
    selector05Model1 = createModel(context, () => Selector05Model());
    selector05Model2 = createModel(context, () => Selector05Model());
    selector05Model3 = createModel(context, () => Selector05Model());
    selector05Model4 = createModel(context, () => Selector05Model());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    selector02Model1.dispose();
    selector02Model2.dispose();
    selector02Model3.dispose();
    selector02Model4.dispose();
    selector02Model5.dispose();
    rcentSearchesModel1.dispose();
    rcentSearchesModel2.dispose();
    rcentSearchesModel3.dispose();
    rcentSearchesModel4.dispose();
    selector05Model1.dispose();
    selector05Model2.dispose();
    selector05Model3.dispose();
    selector05Model4.dispose();
    navBarModel.dispose();
  }
}
