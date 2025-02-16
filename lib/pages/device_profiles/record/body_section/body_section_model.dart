import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'body_section_widget.dart' show BodySectionWidget;
import 'package:flutter/material.dart';

class BodySectionModel extends FlutterFlowModel<BodySectionWidget> {
  ///  Local state fields for this component.

  BodySectionStruct? section;
  void updateSectionStruct(Function(BodySectionStruct) updateFn) {
    updateFn(section ??= BodySectionStruct());
  }

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
