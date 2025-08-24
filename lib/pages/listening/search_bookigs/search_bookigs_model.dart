import '/flutter_flow/flutter_flow_util.dart';
import '/pages/listening/components/properties_card/properties_card_widget.dart';
import 'search_bookigs_widget.dart' show SearchBookigsWidget;
import 'package:flutter/material.dart';

class SearchBookigsModel extends FlutterFlowModel<SearchBookigsWidget> {
  ///  Local state fields for this page.

  String tabSelector = 'Chats';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Models for PropertiesCard dynamic component.
  late FlutterFlowDynamicModels<PropertiesCardModel> propertiesCardModels;

  @override
  void initState(BuildContext context) {
    propertiesCardModels =
        FlutterFlowDynamicModels(() => PropertiesCardModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    propertiesCardModels.dispose();
  }
}
