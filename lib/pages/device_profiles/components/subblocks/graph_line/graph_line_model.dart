import '/flutter_flow/flutter_flow_util.dart';
import '/pages/device_profiles/components/layouts/hsplit/hsplit_widget.dart';
import 'graph_line_widget.dart' show GraphLineWidget;
import 'package:flutter/material.dart';

class GraphLineModel extends FlutterFlowModel<GraphLineWidget> {
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
