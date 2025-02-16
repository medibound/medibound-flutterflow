import '/flutter_flow/flutter_flow_util.dart';
import '/pages/device_profiles/record/header/header_widget.dart';
import 'record_sample_widget.dart' show RecordSampleWidget;
import 'package:flutter/material.dart';

class RecordSampleModel extends FlutterFlowModel<RecordSampleWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Header component.
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
