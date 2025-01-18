import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/device_profiles/builder/body_builder_section/body_builder_section_widget.dart';
import 'body_builder_widget.dart' show BodyBuilderWidget;
import 'package:flutter/material.dart';

class BodyBuilderModel extends FlutterFlowModel<BodyBuilderWidget> {
  ///  Local state fields for this component.

  List<BodySectionStruct> bodySections = [];
  void addToBodySections(BodySectionStruct item) => bodySections.add(item);
  void removeFromBodySections(BodySectionStruct item) =>
      bodySections.remove(item);
  void removeAtIndexFromBodySections(int index) => bodySections.removeAt(index);
  void insertAtIndexInBodySections(int index, BodySectionStruct item) =>
      bodySections.insert(index, item);
  void updateBodySectionsAtIndex(
          int index, Function(BodySectionStruct) updateFn) =>
      bodySections[index] = updateFn(bodySections[index]);

  ///  State fields for stateful widgets in this component.

  // Models for bodyBuilderSection dynamic component.
  late FlutterFlowDynamicModels<BodyBuilderSectionModel>
      bodyBuilderSectionModels;

  @override
  void initState(BuildContext context) {
    bodyBuilderSectionModels =
        FlutterFlowDynamicModels(() => BodyBuilderSectionModel());
  }

  @override
  void dispose() {
    bodyBuilderSectionModels.dispose();
  }
}
