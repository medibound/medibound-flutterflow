import '/flutter_flow/flutter_flow_util.dart';
import '/pages/device_profiles/record/record_sample/record_sample_widget.dart';
import 'record_viewer_widget.dart' show RecordViewerWidget;
import 'package:flutter/material.dart';

class RecordViewerModel extends FlutterFlowModel<RecordViewerWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for RecordSample component.
  late RecordSampleModel recordSampleModel;

  @override
  void initState(BuildContext context) {
    recordSampleModel = createModel(context, () => RecordSampleModel());
  }

  @override
  void dispose() {
    recordSampleModel.dispose();
  }
}
