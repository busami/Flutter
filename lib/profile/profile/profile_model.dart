import '/flutter_flow/flutter_flow_util.dart';
import '/profile/component/dark_mode_button/dark_mode_button_widget.dart';
import '/profile/component/nav_bar/nav_bar_widget.dart';
import '/profile/component/settings_card/settings_card_widget.dart';
import '/index.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SettingsCard component.
  late SettingsCardModel settingsCardModel1;
  // Model for SettingsCard component.
  late SettingsCardModel settingsCardModel2;
  // Model for SettingsCard component.
  late SettingsCardModel settingsCardModel3;
  // Model for SettingsCard component.
  late SettingsCardModel settingsCardModel4;
  // Model for SettingsCard component.
  late SettingsCardModel settingsCardModel5;
  // Model for DarkModeButton component.
  late DarkModeButtonModel darkModeButtonModel;
  // Model for SettingsCard component.
  late SettingsCardModel settingsCardModel6;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    settingsCardModel1 = createModel(context, () => SettingsCardModel());
    settingsCardModel2 = createModel(context, () => SettingsCardModel());
    settingsCardModel3 = createModel(context, () => SettingsCardModel());
    settingsCardModel4 = createModel(context, () => SettingsCardModel());
    settingsCardModel5 = createModel(context, () => SettingsCardModel());
    darkModeButtonModel = createModel(context, () => DarkModeButtonModel());
    settingsCardModel6 = createModel(context, () => SettingsCardModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    settingsCardModel1.dispose();
    settingsCardModel2.dispose();
    settingsCardModel3.dispose();
    settingsCardModel4.dispose();
    settingsCardModel5.dispose();
    darkModeButtonModel.dispose();
    settingsCardModel6.dispose();
    navBarModel.dispose();
  }
}
