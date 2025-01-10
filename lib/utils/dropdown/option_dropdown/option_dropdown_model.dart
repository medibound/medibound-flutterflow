import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'option_dropdown_widget.dart' show OptionDropdownWidget;
import 'package:flutter/material.dart';

class OptionDropdownModel extends FlutterFlowModel<OptionDropdownWidget> {
  ///  Local state fields for this component.

  DropdownStruct? option;
  void updateOptionStruct(Function(DropdownStruct) updateFn) {
    updateFn(option ??= DropdownStruct());
  }

  ///  State fields for stateful widgets in this component.

  // State field(s) for Dropdown widget.
  FocusNode? dropdownFocusNode;
  TextEditingController? dropdownTextController;
  String? Function(BuildContext, String?)? dropdownTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    dropdownFocusNode?.dispose();
    dropdownTextController?.dispose();
  }
}
