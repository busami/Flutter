import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/bookmark_button/bookmark_button_widget.dart';
import 'property_card_widget.dart' show PropertyCardWidget;
import 'package:flutter/material.dart';

class PropertyCardModel extends FlutterFlowModel<PropertyCardWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
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
