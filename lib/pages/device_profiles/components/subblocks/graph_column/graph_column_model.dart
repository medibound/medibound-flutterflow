import '/flutter_flow/flutter_flow_util.dart';
import '/pages/device_profiles/components/layouts/hsplit/hsplit_widget.dart';
import 'graph_column_widget.dart' show GraphColumnWidget;
import 'package:flutter/material.dart';

class GraphColumnModel extends FlutterFlowModel<GraphColumnWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for HSPLIT component.
  late HsplitModel hsplitModel;

  @override
  void initState(BuildContext context) {
    hsplitModel = createModel(context, () => HsplitModel());
  }

  @override
  void dispose() {
    hsplitModel.dispose();
  }
}
