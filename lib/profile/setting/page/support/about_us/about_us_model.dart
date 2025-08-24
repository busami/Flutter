import '/flutter_flow/flutter_flow_util.dart';
import '/profile/component/title_subtitle/title_subtitle_widget.dart';
import 'about_us_widget.dart' show AboutUsWidget;
import 'package:flutter/material.dart';

class AboutUsModel extends FlutterFlowModel<AboutUsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleSubtitle component.
  late TitleSubtitleModel titleSubtitleModel1;
  // Model for TitleSubtitle component.
  late TitleSubtitleModel titleSubtitleModel2;
  // Model for TitleSubtitle component.
  late TitleSubtitleModel titleSubtitleModel3;
  // Model for TitleSubtitle component.
  late TitleSubtitleModel titleSubtitleModel4;

  @override
  void initState(BuildContext context) {
    titleSubtitleModel1 = createModel(context, () => TitleSubtitleModel());
    titleSubtitleModel2 = createModel(context, () => TitleSubtitleModel());
    titleSubtitleModel3 = createModel(context, () => TitleSubtitleModel());
    titleSubtitleModel4 = createModel(context, () => TitleSubtitleModel());
  }

  @override
  void dispose() {
    titleSubtitleModel1.dispose();
    titleSubtitleModel2.dispose();
    titleSubtitleModel3.dispose();
    titleSubtitleModel4.dispose();
  }
}
