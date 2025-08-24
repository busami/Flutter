import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'avatar_chat_model.dart';
export 'avatar_chat_model.dart';

class AvatarChatWidget extends StatefulWidget {
  const AvatarChatWidget({
    super.key,
    required this.photoURL,
    required this.online,
  });

  final String? photoURL;
  final bool? online;

  @override
  State<AvatarChatWidget> createState() => _AvatarChatWidgetState();
}

class _AvatarChatWidgetState extends State<AvatarChatWidget> {
  late AvatarChatModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AvatarChatModel());

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
      decoration: BoxDecoration(),
      child: Container(
        width: 48.0,
        height: 48.0,
        child: Stack(
          alignment: AlignmentDirectional(1.0, 1.0),
          children: [
            Container(
              width: 200.0,
              height: 200.0,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.network(
                valueOrDefault<String>(
                  widget.photoURL,
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fixify-vdcbz2/assets/40xmubqozk7u/user.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            if (widget.online ?? true)
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 2.0),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).success,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
