import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'component_profile_tile_model.dart';
export 'component_profile_tile_model.dart';

class ComponentProfileTileWidget extends StatefulWidget {
  const ComponentProfileTileWidget({
    super.key,
    this.display,
    required this.subtitle,
    this.photoUrl,
    double? titleSize,
    double? photoSize,
    double? height,
  })  : titleSize = titleSize ?? 14.0,
        photoSize = photoSize ?? 35.0,
        height = height ?? 50.0;

  final String? display;
  final String? subtitle;
  final String? photoUrl;
  final double titleSize;
  final double photoSize;
  final double height;

  @override
  State<ComponentProfileTileWidget> createState() =>
      _ComponentProfileTileWidgetState();
}

class _ComponentProfileTileWidgetState
    extends State<ComponentProfileTileWidget> {
  late ComponentProfileTileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentProfileTileModel());

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
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: widget.height,
      decoration: const BoxDecoration(),
      child: MouseRegion(
        opaque: false,
        cursor: SystemMouseCursors.click ?? MouseCursor.defer,
        onEnter: ((event) async {
          safeSetState(() => _model.mouseRegionHovered = true);
          _model.onHover = true;
          safeSetState(() {});
        }),
        onExit: ((event) async {
          safeSetState(() => _model.mouseRegionHovered = false);
          _model.onHover = false;
          safeSetState(() {});
        }),
        child: ClipRRect(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            curve: Curves.easeInOut,
            width: double.infinity,
            decoration: BoxDecoration(
              color: _model.onHover
                  ? FlutterFlowTheme.of(context).alternate
                  : const Color(0x00000000),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (widget.photoUrl != null && widget.photoUrl != '')
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child: CachedNetworkImage(
                          fadeInDuration: const Duration(milliseconds: 500),
                          fadeOutDuration: const Duration(milliseconds: 500),
                          imageUrl: widget.photoUrl!,
                          width: widget.photoSize,
                          height: widget.photoSize,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.display!,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Rubik',
                                    fontSize: widget.titleSize,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              widget.subtitle,
                              ' subtitle',
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      fontFamily: 'Rubik',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 40.0,
                    decoration: const BoxDecoration(),
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: FaIcon(
                      FontAwesomeIcons.angleRight,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
