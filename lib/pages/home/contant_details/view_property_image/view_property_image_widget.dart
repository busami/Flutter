import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view_property_image_model.dart';
export 'view_property_image_model.dart';

class ViewPropertyImageWidget extends StatefulWidget {
  const ViewPropertyImageWidget({
    super.key,
    required this.image,
  });

  final String? image;

  static String routeName = 'ViewPropertyImage';
  static String routePath = '/viewPropertyImage';

  @override
  State<ViewPropertyImageWidget> createState() =>
      _ViewPropertyImageWidgetState();
}

class _ViewPropertyImageWidgetState extends State<ViewPropertyImageWidget> {
  late ViewPropertyImageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewPropertyImageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ViewPropertyImage'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            Builder(
              builder: (context) {
                final imagesPageV = FFAppState().PropertyList.toList();

                return Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: PageView.builder(
                    controller: _model.pageViewController ??= PageController(
                        initialPage: max(0, min(0, imagesPageV.length - 1))),
                    onPageChanged: (_) async {
                      logFirebaseEvent(
                          'VIEW_PROPERTY_IMAGE_PageView_ec076h7s_ON');
                      logFirebaseEvent('PageView_update_page_state');
                      _model.currentpageIndex = _model.pageViewCurrentIndex;
                      safeSetState(() {});
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: imagesPageV.length,
                    itemBuilder: (context, imagesPageVIndex) {
                      final imagesPageVItem = imagesPageV[imagesPageVIndex];
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.network(
                              valueOrDefault<String>(
                                imagesPageVItem.image,
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/avxf9vjzd8bk/Image441.png',
                              ),
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                );
              },
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 20.0, 0.0, 0.0),
              child: FlutterFlowIconButton(
                borderRadius: 6.0,
                buttonSize: 36.0,
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                icon: Icon(
                  Icons.arrow_back,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 20.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('VIEW_PROPERTY_IMAGE_arrow_back_ICN_ON_TA');
                  logFirebaseEvent('IconButton_navigate_back');
                  context.safePop();
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1.0, 1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                child: Builder(
                  builder: (context) {
                    final imagesHorizontal = FFAppState().PropertyList.toList();

                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(imagesHorizontal.length,
                                (imagesHorizontalIndex) {
                          final imagesHorizontalItem =
                              imagesHorizontal[imagesHorizontalIndex];
                          return InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'VIEW_PROPERTY_IMAGE_Container_dyfisdv8_O');
                              logFirebaseEvent('Container_page_view');
                              await _model.pageViewController?.animateToPage(
                                imagesHorizontalIndex,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                              logFirebaseEvent('Container_update_page_state');
                              _model.currentpageIndex =
                                  _model.pageViewCurrentIndex;
                              safeSetState(() {});
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: valueOrDefault<Color>(
                                  _model.pageViewCurrentIndex ==
                                          imagesHorizontalIndex
                                      ? Color(0xFF39D2C0)
                                      : Colors.transparent,
                                  Colors.transparent,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(2.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6.0),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      imagesHorizontalItem.image,
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/1ykji0ksegvh/miami-bayside-landscape_23-2151636431.jpg',
                                    ),
                                    width: 62.0,
                                    height: 62.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          );
                        })
                            .divide(SizedBox(width: 6.0))
                            .addToStart(SizedBox(width: 8.0))
                            .addToEnd(SizedBox(width: 8.0)),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
