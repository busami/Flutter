import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/home/components/time_selectorcard/time_selectorcard_widget.dart';
import '/pages/listening/components/page_view_indicator/page_view_indicator_widget.dart';
import '/pages/listening/components/property_option_cad/property_option_cad_widget.dart';
import '/index.dart';
import 'add_property_widget.dart' show AddPropertyWidget;
import 'package:flutter/material.dart';

class AddPropertyModel extends FlutterFlowModel<AddPropertyWidget> {
  ///  Local state fields for this page.

  String listingType = 'NA';

  String bhkSelector = 'NA';

  String furnished = 'NA';

  String buildArea = 'NA';

  String negotiable = 'NA';

  int? currrentPageviewIndex = 0;

  ///  State fields for stateful widgets in this page.

  // Model for PageViewIndicator component.
  late PageViewIndicatorModel pageViewIndicatorModel1;
  // Model for PageViewIndicator component.
  late PageViewIndicatorModel pageViewIndicatorModel2;
  // Model for PageViewIndicator component.
  late PageViewIndicatorModel pageViewIndicatorModel3;
  // Model for PageViewIndicator component.
  late PageViewIndicatorModel pageViewIndicatorModel4;
  // Model for PageViewIndicator component.
  late PageViewIndicatorModel pageViewIndicatorModel5;
  // Model for PageViewIndicator component.
  late PageViewIndicatorModel pageViewIndicatorModel6;
  // Model for PageViewIndicator component.
  late PageViewIndicatorModel pageViewIndicatorModel7;
  // Model for PageViewIndicator component.
  late PageViewIndicatorModel pageViewIndicatorModel8;
  // Model for PageViewIndicator component.
  late PageViewIndicatorModel pageViewIndicatorModel9;
  // Model for PageViewIndicator component.
  late PageViewIndicatorModel pageViewIndicatorModel10;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // Model for TimeSelectorcard component.
  late TimeSelectorcardModel timeSelectorcardModel1;
  // Model for TimeSelectorcard component.
  late TimeSelectorcardModel timeSelectorcardModel2;
  // Model for TimeSelectorcard component.
  late TimeSelectorcardModel timeSelectorcardModel3;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // Model for TimeSelectorcard component.
  late TimeSelectorcardModel timeSelectorcardModel4;
  // Model for TimeSelectorcard component.
  late TimeSelectorcardModel timeSelectorcardModel5;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // State field(s) for DropDown widget.
  String? dropDownValue5;
  FormFieldController<String>? dropDownValueController5;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // Model for TimeSelectorcard component.
  late TimeSelectorcardModel timeSelectorcardModel6;
  // Model for TimeSelectorcard component.
  late TimeSelectorcardModel timeSelectorcardModel7;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode8;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  bool isDataUploading_uploadDataO5s7 = false;
  FFUploadedFile uploadedLocalFile_uploadDataO5s7 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_uploadDataO5s8 = false;
  FFUploadedFile uploadedLocalFile_uploadDataO5s8 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_uploadDataO5s9 = false;
  FFUploadedFile uploadedLocalFile_uploadDataO5s9 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_uploadDataO5s10 = false;
  FFUploadedFile uploadedLocalFile_uploadDataO5s10 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_uploadDataO5s11 = false;
  FFUploadedFile uploadedLocalFile_uploadDataO5s11 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_uploadDataO5s12 = false;
  FFUploadedFile uploadedLocalFile_uploadDataO5s12 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode9;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode10;
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode11;
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue6;
  FormFieldController<String>? dropDownValueController6;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode12;
  TextEditingController? textController12;
  String? Function(BuildContext, String?)? textController12Validator;
  // State field(s) for CountController widget.
  int? countControllerValue1;
  // State field(s) for CountController widget.
  int? countControllerValue2;
  // State field(s) for CountController widget.
  int? countControllerValue3;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel1;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel2;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel3;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel4;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel5;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel6;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel7;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController1;
  List<String>? get choiceChipsValues1 => choiceChipsValueController1?.value;
  set choiceChipsValues1(List<String>? val) =>
      choiceChipsValueController1?.value = val;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController2;
  List<String>? get choiceChipsValues2 => choiceChipsValueController2?.value;
  set choiceChipsValues2(List<String>? val) =>
      choiceChipsValueController2?.value = val;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel8;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel9;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel10;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel11;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel12;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel13;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel14;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel15;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel16;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel17;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel18;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel19;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel20;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel21;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel22;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel23;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel24;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel25;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel26;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel27;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel28;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel29;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel30;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel31;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel32;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel33;
  // Model for PropertyOptionCad component.
  late PropertyOptionCadModel propertyOptionCadModel34;

  @override
  void initState(BuildContext context) {
    pageViewIndicatorModel1 =
        createModel(context, () => PageViewIndicatorModel());
    pageViewIndicatorModel2 =
        createModel(context, () => PageViewIndicatorModel());
    pageViewIndicatorModel3 =
        createModel(context, () => PageViewIndicatorModel());
    pageViewIndicatorModel4 =
        createModel(context, () => PageViewIndicatorModel());
    pageViewIndicatorModel5 =
        createModel(context, () => PageViewIndicatorModel());
    pageViewIndicatorModel6 =
        createModel(context, () => PageViewIndicatorModel());
    pageViewIndicatorModel7 =
        createModel(context, () => PageViewIndicatorModel());
    pageViewIndicatorModel8 =
        createModel(context, () => PageViewIndicatorModel());
    pageViewIndicatorModel9 =
        createModel(context, () => PageViewIndicatorModel());
    pageViewIndicatorModel10 =
        createModel(context, () => PageViewIndicatorModel());
    timeSelectorcardModel1 =
        createModel(context, () => TimeSelectorcardModel());
    timeSelectorcardModel2 =
        createModel(context, () => TimeSelectorcardModel());
    timeSelectorcardModel3 =
        createModel(context, () => TimeSelectorcardModel());
    timeSelectorcardModel4 =
        createModel(context, () => TimeSelectorcardModel());
    timeSelectorcardModel5 =
        createModel(context, () => TimeSelectorcardModel());
    timeSelectorcardModel6 =
        createModel(context, () => TimeSelectorcardModel());
    timeSelectorcardModel7 =
        createModel(context, () => TimeSelectorcardModel());
    propertyOptionCadModel1 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel2 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel3 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel4 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel5 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel6 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel7 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel8 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel9 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel10 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel11 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel12 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel13 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel14 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel15 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel16 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel17 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel18 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel19 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel20 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel21 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel22 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel23 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel24 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel25 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel26 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel27 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel28 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel29 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel30 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel31 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel32 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel33 =
        createModel(context, () => PropertyOptionCadModel());
    propertyOptionCadModel34 =
        createModel(context, () => PropertyOptionCadModel());
  }

  @override
  void dispose() {
    pageViewIndicatorModel1.dispose();
    pageViewIndicatorModel2.dispose();
    pageViewIndicatorModel3.dispose();
    pageViewIndicatorModel4.dispose();
    pageViewIndicatorModel5.dispose();
    pageViewIndicatorModel6.dispose();
    pageViewIndicatorModel7.dispose();
    pageViewIndicatorModel8.dispose();
    pageViewIndicatorModel9.dispose();
    pageViewIndicatorModel10.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    timeSelectorcardModel1.dispose();
    timeSelectorcardModel2.dispose();
    timeSelectorcardModel3.dispose();
    timeSelectorcardModel4.dispose();
    timeSelectorcardModel5.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    textFieldFocusNode6?.dispose();
    textController6?.dispose();

    textFieldFocusNode7?.dispose();
    textController7?.dispose();

    timeSelectorcardModel6.dispose();
    timeSelectorcardModel7.dispose();
    textFieldFocusNode8?.dispose();
    textController8?.dispose();

    textFieldFocusNode9?.dispose();
    textController9?.dispose();

    textFieldFocusNode10?.dispose();
    textController10?.dispose();

    textFieldFocusNode11?.dispose();
    textController11?.dispose();

    textFieldFocusNode12?.dispose();
    textController12?.dispose();

    propertyOptionCadModel1.dispose();
    propertyOptionCadModel2.dispose();
    propertyOptionCadModel3.dispose();
    propertyOptionCadModel4.dispose();
    propertyOptionCadModel5.dispose();
    propertyOptionCadModel6.dispose();
    propertyOptionCadModel7.dispose();
    propertyOptionCadModel8.dispose();
    propertyOptionCadModel9.dispose();
    propertyOptionCadModel10.dispose();
    propertyOptionCadModel11.dispose();
    propertyOptionCadModel12.dispose();
    propertyOptionCadModel13.dispose();
    propertyOptionCadModel14.dispose();
    propertyOptionCadModel15.dispose();
    propertyOptionCadModel16.dispose();
    propertyOptionCadModel17.dispose();
    propertyOptionCadModel18.dispose();
    propertyOptionCadModel19.dispose();
    propertyOptionCadModel20.dispose();
    propertyOptionCadModel21.dispose();
    propertyOptionCadModel22.dispose();
    propertyOptionCadModel23.dispose();
    propertyOptionCadModel24.dispose();
    propertyOptionCadModel25.dispose();
    propertyOptionCadModel26.dispose();
    propertyOptionCadModel27.dispose();
    propertyOptionCadModel28.dispose();
    propertyOptionCadModel29.dispose();
    propertyOptionCadModel30.dispose();
    propertyOptionCadModel31.dispose();
    propertyOptionCadModel32.dispose();
    propertyOptionCadModel33.dispose();
    propertyOptionCadModel34.dispose();
  }
}
