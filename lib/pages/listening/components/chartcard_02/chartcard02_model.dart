import '/flutter_flow/flutter_flow_util.dart';
import 'chartcard02_widget.dart' show Chartcard02Widget;
import 'package:flutter/material.dart';

class Chartcard02Model extends FlutterFlowModel<Chartcard02Widget> {
  ///  Local state fields for this component.

  List<int> xAxis = [1, 2];
  void addToXAxis(int item) => xAxis.add(item);
  void removeFromXAxis(int item) => xAxis.remove(item);
  void removeAtIndexFromXAxis(int index) => xAxis.removeAt(index);
  void insertAtIndexInXAxis(int index, int item) => xAxis.insert(index, item);
  void updateXAxisAtIndex(int index, Function(int) updateFn) =>
      xAxis[index] = updateFn(xAxis[index]);

  List<double> yAxis = [2.0, 3.0];
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
