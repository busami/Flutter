import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'bookmark_button02_model.dart';
export 'bookmark_button02_model.dart';

class BookmarkButton02Widget extends StatefulWidget {
  const BookmarkButton02Widget({super.key});

  @override
  State<BookmarkButton02Widget> createState() => _BookmarkButton02WidgetState();
}

class _BookmarkButton02WidgetState extends State<BookmarkButton02Widget> {
  late BookmarkButton02Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookmarkButton02Model());

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
        logFirebaseEvent('BOOKMARK_BUTTON_02_Container_tgsirli3_ON');
        logFirebaseEvent('Container_update_component_state');
        _model.save = !_model.save;
        safeSetState(() {});
      },
      child: Container(
        width: 26.0,
        height: 26.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Builder(
            builder: (context) {
              if (_model.save) {
                return Icon(
                  Icons.bookmark_border,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 16.0,
                );
              } else {
                return Icon(
                  Icons.bookmark,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 16.0,
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
