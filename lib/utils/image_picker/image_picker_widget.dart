import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'image_picker_model.dart';
export 'image_picker_model.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({
    super.key,
    required this.defaultImage,
    required this.uploadAction,
    this.size,
    required this.uploadedImage,
  });

  final String? defaultImage;
  final Future Function()? uploadAction;
  final double? size;
  final FFUploadedFile? uploadedImage;

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  late ImagePickerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImagePickerModel());

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
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: SizedBox(
        width: widget.size,
        height: widget.size,
        child: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Builder(
                builder: (context) {
                  if (widget.uploadedImage != null &&
                      (widget.uploadedImage?.bytes?.isNotEmpty ?? false)) {
                    return Container(
                      width: widget.size,
                      height: widget.size,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.memory(
                        widget.uploadedImage?.bytes ?? Uint8List.fromList([]),
                        fit: BoxFit.cover,
                      ),
                    );
                  } else {
                    return Container(
                      width: widget.size,
                      height: widget.size,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: CachedNetworkImage(
                        fadeInDuration: const Duration(milliseconds: 500),
                        fadeOutDuration: const Duration(milliseconds: 500),
                        imageUrl: widget.defaultImage!,
                        fit: BoxFit.cover,
                      ),
                    );
                  }
                },
              ),
            ),
            Opacity(
              opacity: 0.5,
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: widget.size,
                  buttonSize: widget.size,
                  fillColor: const Color(0x00001C14),
                  hoverColor: FlutterFlowTheme.of(context).primaryBackground,
                  hoverIconColor: FlutterFlowTheme.of(context).primaryText,
                  icon: const FaIcon(
                    FontAwesomeIcons.upload,
                    color: Color(0x00D9FFF6),
                    size: 24.0,
                  ),
                  onPressed: () async {
                    await widget.uploadAction?.call();

                    safeSetState(() {});
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
