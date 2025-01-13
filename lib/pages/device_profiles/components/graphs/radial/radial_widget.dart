import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'radial_model.dart';
export 'radial_model.dart';

class RadialWidget extends StatefulWidget {
  const RadialWidget({
    super.key,
    required this.variable,
    required this.color,
  });

  final DeviceVariableStruct? variable;
  final Color? color;

  @override
  State<RadialWidget> createState() => _RadialWidgetState();
}

class _RadialWidgetState extends State<RadialWidget> {
  late RadialModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RadialModel());

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
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          AutoSizeText(
            valueOrDefault<String>(
              widget.variable?.info.display,
              'Name',
            ).maybeHandleOverflow(
              maxChars: 15,
              replacement: '…',
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            minFontSize: 8.0,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Rubik',
                  fontSize: 8.0,
                  letterSpacing: 0.0,
                ),
          ),
          Expanded(
            flex: 5,
            child: Stack(
              alignment: const AlignmentDirectional(0.0, 0.0),
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  child: custom_widgets.RadialGraph(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    color: widget.color!,
                    variable: widget.variable!,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(2.5, 2.5, 2.5, 2.5),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: AutoSizeText(
                          valueOrDefault<String>(
                            widget.variable?.data.number.firstOrNull
                                ?.toString(),
                            '0.0',
                          ).maybeHandleOverflow(
                            maxChars: 3,
                            replacement: '…',
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          minFontSize: 16.0,
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Rubik',
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                lineHeight: 1.0,
                              ),
                        ),
                      ),
                      Flexible(
                        child: AutoSizeText(
                          valueOrDefault<String>(
                            widget.variable?.unit,
                            '{none}',
                          ).maybeHandleOverflow(
                            maxChars: 5,
                            replacement: '…',
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          minFontSize: 8.0,
                          style:
                              FlutterFlowTheme.of(context).labelSmall.override(
                                    fontFamily: 'Rubik',
                                    fontSize: 4.0,
                                    letterSpacing: 0.0,
                                    lineHeight: 0.8,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ].divide(const SizedBox(height: 2.5)),
      ),
    );
  }
}
