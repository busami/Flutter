import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'social_login_btn_model.dart';
export 'social_login_btn_model.dart';

class SocialLoginBtnWidget extends StatefulWidget {
  const SocialLoginBtnWidget({
    super.key,
    required this.logo,
  });

  final String? logo;

  @override
  State<SocialLoginBtnWidget> createState() => _SocialLoginBtnWidgetState();
}

class _SocialLoginBtnWidgetState extends State<SocialLoginBtnWidget> {
  late SocialLoginBtnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SocialLoginBtnModel());

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
      height: 40.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(0.0),
            child: Image.network(
              widget.logo!,
              width: 22.0,
              height: 22.0,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
