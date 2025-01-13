import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'graph_model.dart';
export 'graph_model.dart';

class GraphWidget extends StatefulWidget {
  const GraphWidget({
    super.key,
    required this.block,
    required this.graphIndex,
    required this.orientation,
  });

  final BlockComponentStruct? block;
  final int? graphIndex;
  final GraphOrientation? orientation;

  @override
  State<GraphWidget> createState() => _GraphWidgetState();
}

class _GraphWidgetState extends State<GraphWidget> {
  late GraphModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GraphModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: custom_widgets.GraphSelector(
        width: double.infinity,
        height: double.infinity,
        color: widget.block!.color!,
        graphIndex: widget.graphIndex!,
        block: widget.block!,
        orientation: widget.orientation!,
      ),
    );
  }
}
