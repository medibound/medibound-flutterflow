import '/flutter_flow/flutter_flow_util.dart';
import '/pages/device_profiles/components/layouts/hsplit/hsplit_widget.dart';
import '/pages/device_profiles/components/layouts/vsplit/vsplit_widget.dart';
import '/pages/device_profiles/components/layouts/whole/whole_widget.dart';
import 'layout_widget.dart' show LayoutWidget;
import 'package:flutter/material.dart';

class LayoutModel extends FlutterFlowModel<LayoutWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for HSPLIT component.
  late HsplitModel hsplitModel;
  // Model for VSPLIT component.
  late VsplitModel vsplitModel;
  // Model for WHOLE component.
  late WholeModel wholeModel;

  @override
  void initState(BuildContext context) {
    hsplitModel = createModel(context, () => HsplitModel());
    vsplitModel = createModel(context, () => VsplitModel());
    wholeModel = createModel(context, () => WholeModel());
  }

  @override
  void dispose() {
    hsplitModel.dispose();
    vsplitModel.dispose();
    wholeModel.dispose();
  }
}
