import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'property_category_card02_model.dart';
export 'property_category_card02_model.dart';

class PropertyCategoryCard02Widget extends StatefulWidget {
  const PropertyCategoryCard02Widget({
    super.key,
    required this.icon,
  });

  final Widget? icon;

  @override
  State<PropertyCategoryCard02Widget> createState() =>
      _PropertyCategoryCard02WidgetState();
}

class _PropertyCategoryCard02WidgetState
    extends State<PropertyCategoryCard02Widget> {
  late PropertyCategoryCard02Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PropertyCategoryCard02Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 66.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).quinary,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
            child: Stack(
              alignment: AlignmentDirectional(1.0, -1.0),
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                      color: Color(0x4C29DDFF),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 10.0, 0.0),
                    child: widget.icon!,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
