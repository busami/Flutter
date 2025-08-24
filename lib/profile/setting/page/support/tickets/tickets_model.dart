import '/flutter_flow/flutter_flow_util.dart';
import '/profile/component/ticket_card/ticket_card_widget.dart';
import 'tickets_widget.dart' show TicketsWidget;
import 'package:flutter/material.dart';

class TicketsModel extends FlutterFlowModel<TicketsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for TicketCard component.
  late TicketCardModel ticketCardModel1;
  // Model for TicketCard component.
  late TicketCardModel ticketCardModel2;

  @override
  void initState(BuildContext context) {
    ticketCardModel1 = createModel(context, () => TicketCardModel());
    ticketCardModel2 = createModel(context, () => TicketCardModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    ticketCardModel1.dispose();
    ticketCardModel2.dispose();
  }
}
