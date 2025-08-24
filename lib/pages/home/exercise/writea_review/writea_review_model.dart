import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/feed_back_selector/feed_back_selector_widget.dart';
import 'writea_review_widget.dart' show WriteaReviewWidget;
import 'package:flutter/material.dart';

class WriteaReviewModel extends FlutterFlowModel<WriteaReviewWidget> {
  ///  Local state fields for this page.

  String choiceChips = 'All';

  bool save = false;

  String selectTab = 'About Us';

  ///  State fields for stateful widgets in this page.

  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // Model for FeedBackSelector component.
  late FeedBackSelectorModel feedBackSelectorModel1;
  // Model for FeedBackSelector component.
  late FeedBackSelectorModel feedBackSelectorModel2;
  // Model for FeedBackSelector component.
  late FeedBackSelectorModel feedBackSelectorModel3;
  // Model for FeedBackSelector component.
  late FeedBackSelectorModel feedBackSelectorModel4;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    feedBackSelectorModel1 =
        createModel(context, () => FeedBackSelectorModel());
    feedBackSelectorModel2 =
        createModel(context, () => FeedBackSelectorModel());
    feedBackSelectorModel3 =
        createModel(context, () => FeedBackSelectorModel());
    feedBackSelectorModel4 =
        createModel(context, () => FeedBackSelectorModel());
  }

  @override
  void dispose() {
    feedBackSelectorModel1.dispose();
    feedBackSelectorModel2.dispose();
    feedBackSelectorModel3.dispose();
    feedBackSelectorModel4.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
