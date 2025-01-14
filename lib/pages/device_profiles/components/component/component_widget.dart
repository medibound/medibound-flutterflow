import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/graph_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/device_profiles/components/layouts/whole/whole_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'component_model.dart';
export 'component_model.dart';

class ComponentWidget extends StatefulWidget {
  const ComponentWidget({
    super.key,
    double? totalHeight,
    required this.block,
  }) : totalHeight = totalHeight ?? 100.0;

  final double totalHeight;
  final BlockComponentStruct? block;

  @override
  State<ComponentWidget> createState() => _ComponentWidgetState();
}

class _ComponentWidgetState extends State<ComponentWidget> {
  late ComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentModel());

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
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        width:
            functions.getBlockWidth(widget.totalHeight, widget.block!.size),
        height: widget.totalHeight,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 1.0,
          ),
        ),
        child: Builder(
          builder: (context) {
            if (widget.block?.size == 'QUARTER') {
              return wrapWithModel(
                model: _model.wholeModel1,
                updateCallback: () => safeSetState(() {}),
                child: WholeWidget(
                  subBlock: () => GraphWidget(
                    block: widget.block!,
                    graphIndex: 0,
                    orientation: GraphOrientation.HORIZONTAL,
                  ),
                ),
              );
            } else if (widget.block?.size == 'HALF') {
              return wrapWithModel(
                model: _model.wholeModel2,
                updateCallback: () => safeSetState(() {}),
                child: WholeWidget(
                  subBlock: () => GraphWidget(
                    block: widget.block!,
                    graphIndex: 0,
                    orientation: GraphOrientation.HORIZONTAL,
                  ),
                ),
              );
            } else {
              return Container(
                width: 0.0,
                height: 0.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
