import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/bookmark_button/bookmark_button_widget.dart';
import 'explore_card_widget.dart' show ExploreCardWidget;
import 'package:flutter/material.dart';

class ExploreCardModel extends FlutterFlowModel<ExploreCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for BookmarkButton component.
  late BookmarkButtonModel bookmarkButtonModel;

  @override
  void initState(BuildContext context) {
    bookmarkButtonModel = createModel(context, () => BookmarkButtonModel());
  }

  @override
  void dispose() {
    bookmarkButtonModel.dispose();
  }
}
