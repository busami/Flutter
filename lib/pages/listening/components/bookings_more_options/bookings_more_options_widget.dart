import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/profile/component/nav_btns/nav_btn_08/nav_btn08_widget.dart';
import 'package:flutter/material.dart';
import 'bookings_more_options_model.dart';
export 'bookings_more_options_model.dart';

class BookingsMoreOptionsWidget extends StatefulWidget {
  const BookingsMoreOptionsWidget({super.key});

  @override
  State<BookingsMoreOptionsWidget> createState() =>
      _BookingsMoreOptionsWidgetState();
}

class _BookingsMoreOptionsWidgetState extends State<BookingsMoreOptionsWidget> {
  late BookingsMoreOptionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookingsMoreOptionsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12.0),
          bottomRight: Radius.circular(12.0),
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12.0),
              bottomRight: Radius.circular(12.0),
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
            ),
          ),
          child: Stack(
            alignment: AlignmentDirectional(1.0, -1.0),
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 32.0,
                    height: 4.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'BOOKINGS_MORE_OPTIONS_Container_8t8mwinx');
                      logFirebaseEvent('NavBtn_08_close_dialog_drawer_etc');
                      Navigator.pop(context);
                    },
                    child: wrapWithModel(
                      model: _model.navBtn08Model1,
                      updateCallback: () => safeSetState(() {}),
                      child: NavBtn08Widget(
                        leadingIcon: Icon(
                          FFIcons.karrowsSort,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 20.0,
                        ),
                        title: 'Sort by',
                        textColor: FlutterFlowTheme.of(context).primaryText,
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'BOOKINGS_MORE_OPTIONS_Container_xnsudmo9');
                      logFirebaseEvent('NavBtn_08_close_dialog_drawer_etc');
                      Navigator.pop(context);
                    },
                    child: wrapWithModel(
                      model: _model.navBtn08Model2,
                      updateCallback: () => safeSetState(() {}),
                      child: NavBtn08Widget(
                        leadingIcon: Icon(
                          FFIcons.khelp,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 20.0,
                        ),
                        title: 'Help Center',
                        textColor: FlutterFlowTheme.of(context).primaryText,
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'BOOKINGS_MORE_OPTIONS_Container_frmqrk9u');
                      logFirebaseEvent('NavBtn_08_close_dialog_drawer_etc');
                      Navigator.pop(context);
                    },
                    child: wrapWithModel(
                      model: _model.navBtn08Model3,
                      updateCallback: () => safeSetState(() {}),
                      child: NavBtn08Widget(
                        leadingIcon: Icon(
                          FFIcons.kx,
                          color: FlutterFlowTheme.of(context).error,
                          size: 20.0,
                        ),
                        title: 'Cancel',
                        textColor: FlutterFlowTheme.of(context).error,
                      ),
                    ),
                  ),
                ]
                    .addToStart(SizedBox(height: 12.0))
                    .addToEnd(SizedBox(height: 8.0)),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 12.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent(
                        'BOOKINGS_MORE_OPTIONS_Icon_auwlser2_ON_T');
                    logFirebaseEvent('Icon_close_dialog_drawer_etc');
                    Navigator.pop(context);
                  },
                  child: Icon(
                    FFIcons.kx,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
