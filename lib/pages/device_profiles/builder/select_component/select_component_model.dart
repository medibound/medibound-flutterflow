import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/utils/dropdown/option_dropdown/option_dropdown_widget.dart';
import '/utils/empty_list/empty_list_widget.dart';
import 'select_component_widget.dart' show SelectComponentWidget;
import 'package:flutter/material.dart';

class SelectComponentModel extends FlutterFlowModel<SelectComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for VariableSelectedForComp.
  late OptionDropdownModel variableSelectedForCompModel;
  // State field(s) for Size widget.
  FormFieldController<List<String>>? sizeValueController;
  String? get sizeValue => sizeValueController?.value?.firstOrNull;
  set sizeValue(String? val) =>
      sizeValueController?.value = val != null ? [val] : [];
  // Model for EmptyList component.
  late EmptyListModel emptyListModel;

  @override
  void initState(BuildContext context) {
    variableSelectedForCompModel =
        createModel(context, () => OptionDropdownModel());
    emptyListModel = createModel(context, () => EmptyListModel());
  }

  @override
  void dispose() {
    variableSelectedForCompModel.dispose();
    emptyListModel.dispose();
  }
}
