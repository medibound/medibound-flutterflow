import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'header_builder_widget.dart' show HeaderBuilderWidget;
import 'package:flutter/material.dart';

class HeaderBuilderModel extends FlutterFlowModel<HeaderBuilderWidget> {
  ///  Local state fields for this component.

  List<BlockComponentStruct> header = [];
  void addToHeader(BlockComponentStruct item) => header.add(item);
  void removeFromHeader(BlockComponentStruct item) => header.remove(item);
  void removeAtIndexFromHeader(int index) => header.removeAt(index);
  void insertAtIndexInHeader(int index, BlockComponentStruct item) =>
      header.insert(index, item);
  void updateHeaderAtIndex(
          int index, Function(BlockComponentStruct) updateFn) =>
      header[index] = updateFn(header[index]);

  bool onHover = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
