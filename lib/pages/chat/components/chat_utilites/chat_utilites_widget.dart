import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/chat/components/icon_card/icon_card_widget.dart';
import 'package:flutter/material.dart';
import 'chat_utilites_model.dart';
export 'chat_utilites_model.dart';

class ChatUtilitesWidget extends StatefulWidget {
  const ChatUtilitesWidget({super.key});

  @override
  State<ChatUtilitesWidget> createState() => _ChatUtilitesWidgetState();
}

class _ChatUtilitesWidgetState extends State<ChatUtilitesWidget> {
  late ChatUtilitesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatUtilitesModel());

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
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 84.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 8.0,
                color: Color(0x14000000),
                offset: Offset(
                  0.0,
                  -3.0,
                ),
                spreadRadius: 2.0,
              )
            ],
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                child: GridView(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 0.99,
                  ),
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    wrapWithModel(
                      model: _model.iconCardModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: IconCardWidget(
                        icon: Icon(
                          FFIcons.kphoto,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 24.0,
                        ),
                        title: 'Gallery',
                      ),
                    ),
                    wrapWithModel(
                      model: _model.iconCardModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: IconCardWidget(
                        icon: Icon(
                          FFIcons.kcamera,
                          color: FlutterFlowTheme.of(context).secondary,
                          size: 24.0,
                        ),
                        title: 'Camera',
                      ),
                    ),
                    wrapWithModel(
                      model: _model.iconCardModel3,
                      updateCallback: () => safeSetState(() {}),
                      child: IconCardWidget(
                        icon: Icon(
                          FFIcons.kphoto,
                          color: Color(0xFFFFAC47),
                          size: 24.0,
                        ),
                        title: 'Location',
                      ),
                    ),
                    wrapWithModel(
                      model: _model.iconCardModel4,
                      updateCallback: () => safeSetState(() {}),
                      child: IconCardWidget(
                        icon: Icon(
                          FFIcons.kuser,
                          color: Color(0xFF2EC0FE),
                          size: 24.0,
                        ),
                        title: 'Contact',
                      ),
                    ),
                    wrapWithModel(
                      model: _model.iconCardModel5,
                      updateCallback: () => safeSetState(() {}),
                      child: IconCardWidget(
                        icon: Icon(
                          FFIcons.kfileText,
                          color: FlutterFlowTheme.of(context).purple,
                          size: 24.0,
                        ),
                        title: 'Document',
                      ),
                    ),
                    wrapWithModel(
                      model: _model.iconCardModel6,
                      updateCallback: () => safeSetState(() {}),
                      child: IconCardWidget(
                        icon: Icon(
                          FFIcons.kheadphones,
                          color: FlutterFlowTheme.of(context).tertiary,
                          size: 24.0,
                        ),
                        title: 'Audio',
                      ),
                    ),
                    wrapWithModel(
                      model: _model.iconCardModel7,
                      updateCallback: () => safeSetState(() {}),
                      child: IconCardWidget(
                        icon: Icon(
                          FFIcons.kchartBar,
                          color: FlutterFlowTheme.of(context).success,
                          size: 24.0,
                        ),
                        title: 'Poll',
                      ),
                    ),
                    wrapWithModel(
                      model: _model.iconCardModel8,
                      updateCallback: () => safeSetState(() {}),
                      child: IconCardWidget(
                        icon: Icon(
                          FFIcons.kcurrencyDollar,
                          color: Color(0xFF254AF3),
                          size: 24.0,
                        ),
                        title: 'Payment',
                      ),
                    ),
                    wrapWithModel(
                      model: _model.iconCardModel9,
                      updateCallback: () => safeSetState(() {}),
                      child: IconCardWidget(
                        icon: Icon(
                          FFIcons.kcalendarEvent,
                          color: FlutterFlowTheme.of(context).secondary,
                          size: 24.0,
                        ),
                        title: 'Event',
                      ),
                    ),
                    wrapWithModel(
                      model: _model.iconCardModel10,
                      updateCallback: () => safeSetState(() {}),
                      child: IconCardWidget(
                        icon: Icon(
                          FFIcons.kpropeller,
                          color: Color(0xFFF53D75),
                          size: 24.0,
                        ),
                        title: 'Imagine',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
