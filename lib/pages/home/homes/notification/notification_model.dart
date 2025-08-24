import '/flutter_flow/flutter_flow_util.dart';
import '/profile/component/notification_card/notification_card_widget.dart';
import '/index.dart';
import 'notification_widget.dart' show NotificationWidget;
import 'package:flutter/material.dart';

class NotificationModel extends FlutterFlowModel<NotificationWidget> {
  ///  Local state fields for this page.

  String gender = 'Male';

  String active = 'NA';

  ///  State fields for stateful widgets in this page.

  // Model for NotificationCard component.
  late NotificationCardModel notificationCardModel1;
  // Model for NotificationCard component.
  late NotificationCardModel notificationCardModel2;
  // Model for NotificationCard component.
  late NotificationCardModel notificationCardModel3;
  // Model for NotificationCard component.
  late NotificationCardModel notificationCardModel4;
  // Model for NotificationCard component.
  late NotificationCardModel notificationCardModel5;
  // Model for NotificationCard component.
  late NotificationCardModel notificationCardModel6;
  // Model for NotificationCard component.
  late NotificationCardModel notificationCardModel7;
  // Model for NotificationCard component.
  late NotificationCardModel notificationCardModel8;

  @override
  void initState(BuildContext context) {
    notificationCardModel1 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel2 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel3 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel4 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel5 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel6 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel7 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel8 =
        createModel(context, () => NotificationCardModel());
  }

  @override
  void dispose() {
    notificationCardModel1.dispose();
    notificationCardModel2.dispose();
    notificationCardModel3.dispose();
    notificationCardModel4.dispose();
    notificationCardModel5.dispose();
    notificationCardModel6.dispose();
    notificationCardModel7.dispose();
    notificationCardModel8.dispose();
  }
}
