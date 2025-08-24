import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/bookmark_button_03/bookmark_button03_widget.dart';
import 'similar_properties_widget.dart' show SimilarPropertiesWidget;
import 'package:flutter/material.dart';

class SimilarPropertiesModel extends FlutterFlowModel<SimilarPropertiesWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for BookmarkButton_03 component.
  late BookmarkButton03Model bookmarkButton03Model;

  @override
  void initState(BuildContext context) {
    bookmarkButton03Model = createModel(context, () => BookmarkButton03Model());
  }

  @override
  void dispose() {
    bookmarkButton03Model.dispose();
  }
}
