import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'company_card_model.dart';
export 'company_card_model.dart';

class CompanyCardWidget extends StatefulWidget {
  const CompanyCardWidget({
    super.key,
    required this.logo,
    required this.name,
  });

  final String? logo;
  final String? name;

  @override
  State<CompanyCardWidget> createState() => _CompanyCardWidgetState();
}

class _CompanyCardWidgetState extends State<CompanyCardWidget> {
  late CompanyCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompanyCardModel());

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
        logFirebaseEvent('COMPANY_CARD_Container_rfazkhty_ON_TAP');
        logFirebaseEvent('Container_navigate_to');

        context.pushNamed(
          DeveloperDetailsWidget.routeName,
          queryParameters: {
            'image': serializeParam(
              widget.logo,
              ParamType.String,
            ),
            'title': serializeParam(
              widget.name,
              ParamType.String,
            ),
          }.withoutNulls,
        );
      },
      child: Container(
        width: 60.0,
        height: 60.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).quinary,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6.0),
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Image.network(
                valueOrDefault<String>(
                  widget.logo,
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/8w9elnl3xd9m/images-removebvdvdfvg-preview.png',
                ),
                width: 200.0,
                height: 200.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
