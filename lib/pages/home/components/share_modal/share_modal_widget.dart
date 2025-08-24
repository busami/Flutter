import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/socialmedia_card/socialmedia_card_widget.dart';
import '/pages/home/components/user_card/user_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'share_modal_model.dart';
export 'share_modal_model.dart';

class ShareModalWidget extends StatefulWidget {
  const ShareModalWidget({super.key});

  @override
  State<ShareModalWidget> createState() => _ShareModalWidgetState();
}

class _ShareModalWidgetState extends State<ShareModalWidget> {
  late ShareModalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShareModalModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 40.0,
                        height: 3.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).alternate,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'z0238ih4' /* Share Response */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.cairo(
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'nlei7mk7' /* Recent people */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.cairo(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Divider(
                                  height: 1.0,
                                  thickness: 1.0,
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                              ],
                            ),
                          ),
                        ].divide(SizedBox(width: 12.0)),
                      ),
                    ].divide(SizedBox(height: 16.0)),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(1.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'SHARE_MODAL_COMP_Icon_yvxgzya5_ON_TAP');
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
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.userCardModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: UserCardWidget(
                      avatar:
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/0s7om3o5dlji/Avatar-36.jpg',
                      name: 'Charlotte Hanlin',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.userCardModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: UserCardWidget(
                      avatar:
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/v6ufnbvlglq9/Avatar-24.jpg',
                      name: 'Kristin Watson',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.userCardModel3,
                    updateCallback: () => safeSetState(() {}),
                    child: UserCardWidget(
                      avatar:
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/abyzonaq05f9/avatar-02.jpg',
                      name: 'Clinton Mcclure',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.userCardModel4,
                    updateCallback: () => safeSetState(() {}),
                    child: UserCardWidget(
                      avatar:
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/1qehq20xkxsi/Avatar-34.jpg',
                      name: 'Maryland Winkles',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.userCardModel5,
                    updateCallback: () => safeSetState(() {}),
                    child: UserCardWidget(
                      avatar:
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/qfp0grg8odjp/Avatar-07.jpg',
                      name: 'Alexia Hershey',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.userCardModel6,
                    updateCallback: () => safeSetState(() {}),
                    child: UserCardWidget(
                      avatar:
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/ebey02tsdiph/avatar-03.jpg',
                      name: 'Charlotte Hanlin',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.userCardModel7,
                    updateCallback: () => safeSetState(() {}),
                    child: UserCardWidget(
                      avatar:
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/m5drvh7wljhd/Avatar-41.jpg',
                      name: 'Charlotte Hanlin',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.userCardModel8,
                    updateCallback: () => safeSetState(() {}),
                    child: UserCardWidget(
                      avatar:
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/1an5outgycjn/Avatar-39.jpg',
                      name: 'Charlotte Hanlin',
                    ),
                  ),
                ]
                    .divide(SizedBox(width: 14.0))
                    .addToStart(SizedBox(width: 16.0))
                    .addToEnd(SizedBox(width: 16.0)),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      '2e7wjg8z' /* Social media */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.cairo(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Divider(
                          height: 1.0,
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                      ],
                    ),
                  ),
                ].divide(SizedBox(width: 12.0)),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.socialmediaCardModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: SocialmediaCardWidget(
                      avatar:
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/np3l33z2rlx0/Whatsapp.png',
                      name: 'WhatsApp',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.socialmediaCardModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: SocialmediaCardWidget(
                      avatar:
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/kpp2tbfi4l2s/Facebook.png',
                      name: 'Facebook',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.socialmediaCardModel3,
                    updateCallback: () => safeSetState(() {}),
                    child: SocialmediaCardWidget(
                      avatar:
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/xsz0g5w2zkex/Instagram.png',
                      name: 'Instagram',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.socialmediaCardModel4,
                    updateCallback: () => safeSetState(() {}),
                    child: SocialmediaCardWidget(
                      avatar:
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/3h13be9n2c0q/Telegram.png',
                      name: 'Telegram',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.socialmediaCardModel5,
                    updateCallback: () => safeSetState(() {}),
                    child: SocialmediaCardWidget(
                      avatar:
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/lyko4gx6yx0w/Image.png',
                      name: 'Twitter',
                    ),
                  ),
                ]
                    .divide(SizedBox(width: 14.0))
                    .addToStart(SizedBox(width: 16.0))
                    .addToEnd(SizedBox(width: 16.0)),
              ),
            ),
          ]
              .divide(SizedBox(height: 14.0))
              .addToStart(SizedBox(height: 8.0))
              .addToEnd(SizedBox(height: 24.0)),
        ),
      ),
    );
  }
}
