import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/device_profiles/components/charts/column/column_widget.dart';
import '/pages/device_profiles/components/layouts/hsplit/hsplit_widget.dart';
import '/pages/device_profiles/components/subblocks/value_trend/value_trend_widget.dart';
import 'package:flutter/material.dart';
import 'graph_column_model.dart';
export 'graph_column_model.dart';

class GraphColumnWidget extends StatefulWidget {
  const GraphColumnWidget({
    super.key,
    required this.variable,
    required this.color,
  });

  final DeviceVariableStruct? variable;
  final Color? color;

  @override
  State<GraphColumnWidget> createState() => _GraphColumnWidgetState();
}

class _GraphColumnWidgetState extends State<GraphColumnWidget> {
  late GraphColumnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GraphColumnModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return wrapWithModel(
      model: _model.hsplitModel,
      updateCallback: () => safeSetState(() {}),
      child: HsplitWidget(
        graph1: () => ValueTrendWidget(
          variable: widget.variable!,
          color: widget.color!,
          orientation: GraphOrientation.HORIZONTAL,
        ),
        graph2: () => ColumnWidget(
          variable: widget.variable!,
          color: widget.color!,
        ),
      ),
    );
  }
}
