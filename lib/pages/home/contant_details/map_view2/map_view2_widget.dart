import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_static_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:mapbox_search/mapbox_search.dart' as mapbox;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'map_view2_model.dart';
export 'map_view2_model.dart';

class MapView2Widget extends StatefulWidget {
  const MapView2Widget({super.key});

  static String routeName = 'MapView2';
  static String routePath = '/mapView2';

  @override
  State<MapView2Widget> createState() => _MapView2WidgetState();
}

class _MapView2WidgetState extends State<MapView2Widget> {
  late MapView2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MapView2Model());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'MapView2'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: EdgeInsets.all(8.0),
            child: FlutterFlowIconButton(
              borderRadius: 50.0,
              buttonSize: 40.0,
              fillColor: Colors.transparent,
              icon: Icon(
                Icons.arrow_back,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24.0,
              ),
              onPressed: () async {
                logFirebaseEvent('MAP_VIEW2_PAGE_arrow_back_ICN_ON_TAP');
                logFirebaseEvent('IconButton_navigate_back');
                context.safePop();
              },
            ),
          ),
          title: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'io91r9zh' /* Map */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.cairo(
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    fontSize: 18.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: FlutterFlowIconButton(
                borderRadius: 50.0,
                buttonSize: 40.0,
                fillColor: Colors.transparent,
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.transparent,
                  size: 0.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: FlutterFlowStaticMap(
          location: LatLng(33.983741033267414, -118.26170212038207),
          apiKey:
              'pk.eyJ1IjoiYW1zYXJrYXIiLCJhIjoiY2xmaTNuOWk0MHpqZTNwbnB5ZHl5ZTZpZCJ9.uzUZkr-Nk6o1Jlm5pRhbbA',
          style: mapbox.MapBoxStyle.Outdoors,
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          fit: BoxFit.cover,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(0.0),
            topRight: Radius.circular(0.0),
          ),
          markerColor: FlutterFlowTheme.of(context).secondary,
          zoom: 12,
          tilt: 0,
          rotation: 0,
        ),
      ),
    );
  }
}
