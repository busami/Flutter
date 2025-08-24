import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'image_selector_card_model.dart';
export 'image_selector_card_model.dart';

class ImageSelectorCardWidget extends StatefulWidget {
  const ImageSelectorCardWidget({super.key});

  @override
  State<ImageSelectorCardWidget> createState() =>
      _ImageSelectorCardWidgetState();
}

class _ImageSelectorCardWidgetState extends State<ImageSelectorCardWidget> {
  late ImageSelectorCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImageSelectorCardModel());

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
      decoration: BoxDecoration(
        color: Color(0xFF39D2C0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(2.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6.0),
          child: Image.network(
            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/lmuutypudrlt/Imafvdgffe.png',
            width: 60.0,
            height: 60.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
