import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/home/components/bookmark_card/bookmark_card_widget.dart';
import 'my_bookmarks_widget.dart' show MyBookmarksWidget;
import 'package:flutter/material.dart';

class MyBookmarksModel extends FlutterFlowModel<MyBookmarksWidget> {
  ///  Local state fields for this page.

  String gender = 'Male';

  String active = 'NA';

  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Models for BookmarkCard dynamic component.
  late FlutterFlowDynamicModels<BookmarkCardModel> bookmarkCardModels;

  @override
  void initState(BuildContext context) {
    bookmarkCardModels = FlutterFlowDynamicModels(() => BookmarkCardModel());
  }

  @override
  void dispose() {
    bookmarkCardModels.dispose();
  }
}
