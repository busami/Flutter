import '/flutter_flow/flutter_flow_util.dart';
import 'chart_card_widget.dart' show ChartCardWidget;
import 'package:flutter/material.dart';

class ChartCardModel extends FlutterFlowModel<ChartCardWidget> {
  ///  Local state fields for this component.

  List<int> xAxis = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14];
  void addToXAxis(int item) => xAxis.add(item);
  void removeFromXAxis(int item) => xAxis.remove(item);
  void removeAtIndexFromXAxis(int index) => xAxis.removeAt(index);
  void insertAtIndexInXAxis(int index, int item) => xAxis.insert(index, item);
  void updateXAxisAtIndex(int index, Function(int) updateFn) =>
      xAxis[index] = updateFn(xAxis[index]);

  List<double> yAxis = [
    3.0,
    3.0,
    4.0,
    4.0,
    2.0,
    2.0,
    5.0,
    5.0,
    6.0,
    6.0,
    5.0,
    5.0,
    7.0,
    7.0
  ];
  void addToYAxis(double item) => yAxis.add(item);
  void removeFromYAxis(double item) => yAxis.remove(item);
  void removeAtIndexFromYAxis(int index) => yAxis.removeAt(index);
  void insertAtIndexInYAxis(int index, double item) =>
      yAxis.insert(index, item);
  void updateYAxisAtIndex(int index, Function(double) updateFn) =>
      yAxis[index] = updateFn(yAxis[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
