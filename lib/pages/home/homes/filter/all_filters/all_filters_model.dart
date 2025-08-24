import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/home/components/rating_selector/rating_selector_widget.dart';
import '/pages/home/components/room_selector/room_selector_widget.dart';
import '/pages/home/components/selector_03/selector03_widget.dart';
import 'all_filters_widget.dart' show AllFiltersWidget;
import 'package:flutter/material.dart';

class AllFiltersModel extends FlutterFlowModel<AllFiltersWidget> {
  ///  Local state fields for this page.

  bool saveSearch = false;

  String selector = 'For Sale';

  String propertySelector = 'NA';

  ///  State fields for stateful widgets in this page.

  // Model for Selector_03 component.
  late Selector03Model selector03Model1;
  // Model for Selector_03 component.
  late Selector03Model selector03Model2;
  // Model for Selector_03 component.
  late Selector03Model selector03Model3;
  // Model for Selector_03 component.
  late Selector03Model selector03Model4;
  // Model for Selector_03 component.
  late Selector03Model selector03Model5;
  // Model for Selector_03 component.
  late Selector03Model selector03Model6;
  // Model for RatingSelector component.
  late RatingSelectorModel ratingSelectorModel1;
  // Model for RatingSelector component.
  late RatingSelectorModel ratingSelectorModel2;
  // Model for RatingSelector component.
  late RatingSelectorModel ratingSelectorModel3;
  // Model for RatingSelector component.
  late RatingSelectorModel ratingSelectorModel4;
  // Model for RatingSelector component.
  late RatingSelectorModel ratingSelectorModel5;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController1;
  List<String>? get choiceChipsValues1 => choiceChipsValueController1?.value;
  set choiceChipsValues1(List<String>? val) =>
      choiceChipsValueController1?.value = val;
  // Model for RoomSelector component.
  late RoomSelectorModel roomSelectorModel1;
  // Model for RoomSelector component.
  late RoomSelectorModel roomSelectorModel2;
  // Model for RoomSelector component.
  late RoomSelectorModel roomSelectorModel3;
  // Model for RoomSelector component.
  late RoomSelectorModel roomSelectorModel4;
  // Model for RoomSelector component.
  late RoomSelectorModel roomSelectorModel5;
  // Model for RoomSelector component.
  late RoomSelectorModel roomSelectorModel6;
  // Model for RoomSelector component.
  late RoomSelectorModel roomSelectorModel7;
  // Model for RoomSelector component.
  late RoomSelectorModel roomSelectorModel8;
  // Model for RoomSelector component.
  late RoomSelectorModel roomSelectorModel9;
  // Model for RoomSelector component.
  late RoomSelectorModel roomSelectorModel10;
  // Model for RoomSelector component.
  late RoomSelectorModel roomSelectorModel11;
  // Model for RoomSelector component.
  late RoomSelectorModel roomSelectorModel12;
  // Model for RoomSelector component.
  late RoomSelectorModel roomSelectorModel13;
  // Model for RoomSelector component.
  late RoomSelectorModel roomSelectorModel14;
  // Model for RoomSelector component.
  late RoomSelectorModel roomSelectorModel15;
  // State field(s) for Slider widget.
  double? sliderValue1;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for RoomSelector component.
  late RoomSelectorModel roomSelectorModel16;
  // Model for RoomSelector component.
  late RoomSelectorModel roomSelectorModel17;
  // Model for RoomSelector component.
  late RoomSelectorModel roomSelectorModel18;
  // Model for RoomSelector component.
  late RoomSelectorModel roomSelectorModel19;
  // Model for RoomSelector component.
  late RoomSelectorModel roomSelectorModel20;
  // State field(s) for Slider widget.
  double? sliderValue2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController2;
  List<String>? get choiceChipsValues2 => choiceChipsValueController2?.value;
  set choiceChipsValues2(List<String>? val) =>
      choiceChipsValueController2?.value = val;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController3;
  List<String>? get choiceChipsValues3 => choiceChipsValueController3?.value;
  set choiceChipsValues3(List<String>? val) =>
      choiceChipsValueController3?.value = val;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController4;
  List<String>? get choiceChipsValues4 => choiceChipsValueController4?.value;
  set choiceChipsValues4(List<String>? val) =>
      choiceChipsValueController4?.value = val;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController5;
  List<String>? get choiceChipsValues5 => choiceChipsValueController5?.value;
  set choiceChipsValues5(List<String>? val) =>
      choiceChipsValueController5?.value = val;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController6;
  List<String>? get choiceChipsValues6 => choiceChipsValueController6?.value;
  set choiceChipsValues6(List<String>? val) =>
      choiceChipsValueController6?.value = val;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController7;
  List<String>? get choiceChipsValues7 => choiceChipsValueController7?.value;
  set choiceChipsValues7(List<String>? val) =>
      choiceChipsValueController7?.value = val;

  @override
  void initState(BuildContext context) {
    selector03Model1 = createModel(context, () => Selector03Model());
    selector03Model2 = createModel(context, () => Selector03Model());
    selector03Model3 = createModel(context, () => Selector03Model());
    selector03Model4 = createModel(context, () => Selector03Model());
    selector03Model5 = createModel(context, () => Selector03Model());
    selector03Model6 = createModel(context, () => Selector03Model());
    ratingSelectorModel1 = createModel(context, () => RatingSelectorModel());
    ratingSelectorModel2 = createModel(context, () => RatingSelectorModel());
    ratingSelectorModel3 = createModel(context, () => RatingSelectorModel());
    ratingSelectorModel4 = createModel(context, () => RatingSelectorModel());
    ratingSelectorModel5 = createModel(context, () => RatingSelectorModel());
    roomSelectorModel1 = createModel(context, () => RoomSelectorModel());
    roomSelectorModel2 = createModel(context, () => RoomSelectorModel());
    roomSelectorModel3 = createModel(context, () => RoomSelectorModel());
    roomSelectorModel4 = createModel(context, () => RoomSelectorModel());
    roomSelectorModel5 = createModel(context, () => RoomSelectorModel());
    roomSelectorModel6 = createModel(context, () => RoomSelectorModel());
    roomSelectorModel7 = createModel(context, () => RoomSelectorModel());
    roomSelectorModel8 = createModel(context, () => RoomSelectorModel());
    roomSelectorModel9 = createModel(context, () => RoomSelectorModel());
    roomSelectorModel10 = createModel(context, () => RoomSelectorModel());
    roomSelectorModel11 = createModel(context, () => RoomSelectorModel());
    roomSelectorModel12 = createModel(context, () => RoomSelectorModel());
    roomSelectorModel13 = createModel(context, () => RoomSelectorModel());
    roomSelectorModel14 = createModel(context, () => RoomSelectorModel());
    roomSelectorModel15 = createModel(context, () => RoomSelectorModel());
    roomSelectorModel16 = createModel(context, () => RoomSelectorModel());
    roomSelectorModel17 = createModel(context, () => RoomSelectorModel());
    roomSelectorModel18 = createModel(context, () => RoomSelectorModel());
    roomSelectorModel19 = createModel(context, () => RoomSelectorModel());
    roomSelectorModel20 = createModel(context, () => RoomSelectorModel());
  }

  @override
  void dispose() {
    selector03Model1.dispose();
    selector03Model2.dispose();
    selector03Model3.dispose();
    selector03Model4.dispose();
    selector03Model5.dispose();
    selector03Model6.dispose();
    ratingSelectorModel1.dispose();
    ratingSelectorModel2.dispose();
    ratingSelectorModel3.dispose();
    ratingSelectorModel4.dispose();
    ratingSelectorModel5.dispose();
    roomSelectorModel1.dispose();
    roomSelectorModel2.dispose();
    roomSelectorModel3.dispose();
    roomSelectorModel4.dispose();
    roomSelectorModel5.dispose();
    roomSelectorModel6.dispose();
    roomSelectorModel7.dispose();
    roomSelectorModel8.dispose();
    roomSelectorModel9.dispose();
    roomSelectorModel10.dispose();
    roomSelectorModel11.dispose();
    roomSelectorModel12.dispose();
    roomSelectorModel13.dispose();
    roomSelectorModel14.dispose();
    roomSelectorModel15.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    roomSelectorModel16.dispose();
    roomSelectorModel17.dispose();
    roomSelectorModel18.dispose();
    roomSelectorModel19.dispose();
    roomSelectorModel20.dispose();
  }
}
