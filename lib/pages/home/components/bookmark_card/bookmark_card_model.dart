import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/bookmark_button_02/bookmark_button02_widget.dart';
import 'bookmark_card_widget.dart' show BookmarkCardWidget;
import 'package:flutter/material.dart';

class BookmarkCardModel extends FlutterFlowModel<BookmarkCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for BookmarkButton_02 component.
  late BookmarkButton02Model bookmarkButton02Model;

  @override
  void initState(BuildContext context) {
    bookmarkButton02Model = createModel(context, () => BookmarkButton02Model());
  }

  @override
  void dispose() {
    bookmarkButton02Model.dispose();
  }
}
