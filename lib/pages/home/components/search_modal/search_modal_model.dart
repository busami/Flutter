import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/search_card/search_card_widget.dart';
import '/pages/home/components/selector/selector_widget.dart';
import 'search_modal_widget.dart' show SearchModalWidget;
import 'package:flutter/material.dart';

class SearchModalModel extends FlutterFlowModel<SearchModalWidget> {
  ///  Local state fields for this component.

  String tabSelector = 'Buy';

  ///  State fields for stateful widgets in this component.

  // Model for Selector component.
  late SelectorModel selectorModel1;
  // Model for Selector component.
  late SelectorModel selectorModel2;
  // Model for Selector component.
  late SelectorModel selectorModel3;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for SearchCard component.
  late SearchCardModel searchCardModel1;
  // Model for SearchCard component.
  late SearchCardModel searchCardModel2;
  // Model for SearchCard component.
  late SearchCardModel searchCardModel3;
  // Model for SearchCard component.
  late SearchCardModel searchCardModel4;
  // Model for SearchCard component.
  late SearchCardModel searchCardModel5;
  // Model for SearchCard component.
  late SearchCardModel searchCardModel6;

  @override
  void initState(BuildContext context) {
    selectorModel1 = createModel(context, () => SelectorModel());
    selectorModel2 = createModel(context, () => SelectorModel());
    selectorModel3 = createModel(context, () => SelectorModel());
    searchCardModel1 = createModel(context, () => SearchCardModel());
    searchCardModel2 = createModel(context, () => SearchCardModel());
    searchCardModel3 = createModel(context, () => SearchCardModel());
    searchCardModel4 = createModel(context, () => SearchCardModel());
    searchCardModel5 = createModel(context, () => SearchCardModel());
    searchCardModel6 = createModel(context, () => SearchCardModel());
  }

  @override
  void dispose() {
    selectorModel1.dispose();
    selectorModel2.dispose();
    selectorModel3.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    searchCardModel1.dispose();
    searchCardModel2.dispose();
    searchCardModel3.dispose();
    searchCardModel4.dispose();
    searchCardModel5.dispose();
    searchCardModel6.dispose();
  }
}
