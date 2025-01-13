import '/components/layout_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'component_widget.dart' show ComponentWidget;
import 'package:flutter/material.dart';

class ComponentModel extends FlutterFlowModel<ComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Layout component.
  late LayoutModel layoutModel1;
  // Model for Layout component.
  late LayoutModel layoutModel2;

  @override
  void initState(BuildContext context) {
    layoutModel1 = createModel(context, () => LayoutModel());
    layoutModel2 = createModel(context, () => LayoutModel());
  }

  @override
  void dispose() {
    layoutModel1.dispose();
    layoutModel2.dispose();
  }
}
