import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'bookmark_button03_model.dart';
export 'bookmark_button03_model.dart';

class BookmarkButton03Widget extends StatefulWidget {
  const BookmarkButton03Widget({super.key});

  @override
  State<BookmarkButton03Widget> createState() => _BookmarkButton03WidgetState();
}

class _BookmarkButton03WidgetState extends State<BookmarkButton03Widget> {
  late BookmarkButton03Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookmarkButton03Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        logFirebaseEvent('BOOKMARK_BUTTON_03_Container_vl6qe5yv_ON');
        logFirebaseEvent('Container_update_component_state');
        _model.save = !_model.save;
        safeSetState(() {});
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Builder(
          builder: (context) {
            if (_model.save) {
              return Icon(
                Icons.favorite_rounded,
                color: FlutterFlowTheme.of(context).error,
                size: 18.0,
              );
            } else {
              return Icon(
                Icons.favorite_border,
                color: FlutterFlowTheme.of(context).info,
                size: 18.0,
              );
            }
          },
        ),
      ),
    );
  }
}
