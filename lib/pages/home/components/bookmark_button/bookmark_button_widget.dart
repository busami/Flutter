import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'bookmark_button_model.dart';
export 'bookmark_button_model.dart';

class BookmarkButtonWidget extends StatefulWidget {
  const BookmarkButtonWidget({super.key});

  @override
  State<BookmarkButtonWidget> createState() => _BookmarkButtonWidgetState();
}

class _BookmarkButtonWidgetState extends State<BookmarkButtonWidget> {
  late BookmarkButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookmarkButtonModel());

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
        logFirebaseEvent('BOOKMARK_BUTTON_Container_gxtsim31_ON_TA');
        logFirebaseEvent('Container_update_component_state');
        _model.save = !_model.save;
        safeSetState(() {});
      },
      child: Container(
        width: 28.0,
        height: 28.0,
        decoration: BoxDecoration(
          color: Color(0x80FFFFFF),
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
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
                  color: FlutterFlowTheme.of(context).sceounderyText2,
                  size: 18.0,
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
