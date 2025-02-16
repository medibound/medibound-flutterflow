import '/flutter_flow/flutter_flow_util.dart';
import '/pages/device_profiles/record/header/header_widget.dart';
import '/utils/empty/empty_widget.dart';
import 'record_widget.dart' show RecordWidget;
import 'package:flutter/material.dart';

class RecordModel extends FlutterFlowModel<RecordWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Empty component.
  late EmptyModel emptyModel;
  // Model for Header component.
  late HeaderModel headerModel;

  @override
  void initState(BuildContext context) {
    emptyModel = createModel(context, () => EmptyModel());
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    emptyModel.dispose();
    headerModel.dispose();
  }
}
