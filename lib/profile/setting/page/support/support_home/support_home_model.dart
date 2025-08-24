import '/flutter_flow/flutter_flow_util.dart';
import '/profile/component/nav_btns/nav_btn_05/nav_btn05_widget.dart';
import '/profile/component/ticket_card/ticket_card_widget.dart';
import '/index.dart';
import 'support_home_widget.dart' show SupportHomeWidget;
import 'package:flutter/material.dart';

class SupportHomeModel extends FlutterFlowModel<SupportHomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TicketCard component.
  late TicketCardModel ticketCardModel1;
  // Model for TicketCard component.
  late TicketCardModel ticketCardModel2;
  // Model for NavBtn_05 component.
  late NavBtn05Model navBtn05Model1;
  // Model for NavBtn_05 component.
  late NavBtn05Model navBtn05Model2;
  // Model for NavBtn_05 component.
  late NavBtn05Model navBtn05Model3;

  @override
  void initState(BuildContext context) {
    ticketCardModel1 = createModel(context, () => TicketCardModel());
    ticketCardModel2 = createModel(context, () => TicketCardModel());
    navBtn05Model1 = createModel(context, () => NavBtn05Model());
    navBtn05Model2 = createModel(context, () => NavBtn05Model());
    navBtn05Model3 = createModel(context, () => NavBtn05Model());
  }

  @override
  void dispose() {
    ticketCardModel1.dispose();
    ticketCardModel2.dispose();
    navBtn05Model1.dispose();
    navBtn05Model2.dispose();
    navBtn05Model3.dispose();
  }
}
