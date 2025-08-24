import '/flutter_flow/flutter_flow_util.dart';
import 'view_property_image_widget.dart' show ViewPropertyImageWidget;
import 'package:flutter/material.dart';

class ViewPropertyImageModel extends FlutterFlowModel<ViewPropertyImageWidget> {
  ///  Local state fields for this page.

  int currentpageIndex = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
