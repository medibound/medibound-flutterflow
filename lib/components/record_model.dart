import '/flutter_flow/flutter_flow_util.dart';
import '/pages/device_profiles/builder/header/header_widget.dart';
import 'record_widget.dart' show RecordWidget;
import 'package:flutter/material.dart';

class RecordModel extends FlutterFlowModel<RecordWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for header component.
  late HeaderModel headerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
  }
}
