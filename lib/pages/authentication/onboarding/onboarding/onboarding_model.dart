import '/flutter_flow/flutter_flow_util.dart';
import '/pages/authentication/onboarding/indicator/indicator_widget.dart';
import '/index.dart';
import 'onboarding_widget.dart' show OnboardingWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OnboardingModel extends FlutterFlowModel<OnboardingWidget> {
  ///  Local state fields for this page.

  int currentIndesx = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 0;

  // Model for Indicator component.
  late IndicatorModel indicatorModel1;
  // Model for Indicator component.
  late IndicatorModel indicatorModel2;
  // Model for Indicator component.
  late IndicatorModel indicatorModel3;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {
    indicatorModel1 = createModel(context, () => IndicatorModel());
    indicatorModel2 = createModel(context, () => IndicatorModel());
    indicatorModel3 = createModel(context, () => IndicatorModel());
  }

  @override
  void dispose() {
    indicatorModel1.dispose();
    indicatorModel2.dispose();
    indicatorModel3.dispose();
  }
}
