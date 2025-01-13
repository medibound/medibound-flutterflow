import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/graph_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/device_profiles/components/layouts/hsplit/hsplit_widget.dart';
import '/pages/device_profiles/components/layouts/vsplit/vsplit_widget.dart';
import '/pages/device_profiles/components/layouts/whole/whole_widget.dart';
import '/utils/loading/loading_widget.dart';
import 'package:flutter/material.dart';
import 'layout_model.dart';
export 'layout_model.dart';

class LayoutWidget extends StatefulWidget {
  const LayoutWidget({
    super.key,
    required this.block,
  });

  final BlockComponentStruct? block;

  @override
  State<LayoutWidget> createState() => _LayoutWidgetState();
}

class _LayoutWidgetState extends State<LayoutWidget> {
  late LayoutModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LayoutModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (widget.block?.layout == 'HSPLIT') {
          return wrapWithModel(
            model: _model.hsplitModel,
            updateCallback: () => safeSetState(() {}),
            child: HsplitWidget(
              graph1: () => GraphWidget(
                block: widget.block!,
                graphIndex: 0,
                orientation: GraphOrientation.HORIZONTAL,
              ),
              graph2: () => GraphWidget(
                block: widget.block!,
                graphIndex: 1,
                orientation: GraphOrientation.HORIZONTAL,
              ),
            ),
          );
        } else if (widget.block?.layout == 'VSPLIT') {
          return wrapWithModel(
            model: _model.vsplitModel,
            updateCallback: () => safeSetState(() {}),
            child: VsplitWidget(
              graph1: () => () {
                if (widget.block?.requiredVars.firstOrNull == 'NUMBER') {
                  return const LoadingWidget();
                } else if (widget.block?.requiredVars.firstOrNull ==
                    'NUMBER_ARRAY') {
                  return const LoadingWidget();
                } else if (widget.block?.requiredVars.firstOrNull ==
                    'STRING') {
                  return const LoadingWidget();
                } else {
                  return const LoadingWidget();
                }
              }(),
              graph2: () => () {
                if (widget.block?.requiredVars.firstOrNull == 'NUMBER') {
                  return const LoadingWidget();
                } else if (widget.block?.requiredVars.firstOrNull ==
                    'NUMBER_ARRAY') {
                  return const LoadingWidget();
                } else if (widget.block?.requiredVars.firstOrNull ==
                    'STRING') {
                  return const LoadingWidget();
                } else {
                  return const LoadingWidget();
                }
              }(),
            ),
          );
        } else {
          return wrapWithModel(
            model: _model.wholeModel,
            updateCallback: () => safeSetState(() {}),
            child: WholeWidget(
              graph1: () => GraphWidget(
                block: widget.block!,
                graphIndex: 0,
                orientation: GraphOrientation.HORIZONTAL,
              ),
            ),
          );
        }
      },
    );
  }
}
