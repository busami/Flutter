import '/flutter_flow/flutter_flow_util.dart';
import '/profile/payment/components/payment_method_01/payment_method01_widget.dart';
import '/index.dart';
import 'payment_methods_widget.dart' show PaymentMethodsWidget;
import 'package:flutter/material.dart';

class PaymentMethodsModel extends FlutterFlowModel<PaymentMethodsWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for PaymentMethod_01 dynamic component.
  late FlutterFlowDynamicModels<PaymentMethod01Model> paymentMethod01Models;

  @override
  void initState(BuildContext context) {
    paymentMethod01Models =
        FlutterFlowDynamicModels(() => PaymentMethod01Model());
  }

  @override
  void dispose() {
    paymentMethod01Models.dispose();
  }
}
