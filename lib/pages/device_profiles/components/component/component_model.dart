import '/flutter_flow/flutter_flow_util.dart';
import '/pages/device_profiles/components/layouts/whole/whole_widget.dart';
import 'component_widget.dart' show ComponentWidget;
import 'package:flutter/material.dart';

class ComponentModel extends FlutterFlowModel<ComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for WHOLE component.
  late WholeModel wholeModel1;
  // Model for WHOLE component.
  late WholeModel wholeModel2;

  @override
  void initState(BuildContext context) {
    wholeModel1 = createModel(context, () => WholeModel());
    wholeModel2 = createModel(context, () => WholeModel());
  }

  @override
  void dispose() {
    wholeModel1.dispose();
    wholeModel2.dispose();
  }
}
