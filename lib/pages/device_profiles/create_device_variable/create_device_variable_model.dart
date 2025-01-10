import '/flutter_flow/flutter_flow_util.dart';
import '/utils/dropdown/option_dropdown/option_dropdown_widget.dart';
import 'create_device_variable_widget.dart' show CreateDeviceVariableWidget;
import 'package:flutter/material.dart';

class CreateDeviceVariableModel
    extends FlutterFlowModel<CreateDeviceVariableWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for VariableName widget.
  FocusNode? variableNameFocusNode;
  TextEditingController? variableNameTextController;
  String? Function(BuildContext, String?)? variableNameTextControllerValidator;
  String? _variableNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Device Name is required';
    }

    return null;
  }

  // Model for VariableType.
  late OptionDropdownModel variableTypeModel1;
  // State field(s) for IsList widget.
  bool? isListValue;
  // Model for VariableType.
  late OptionDropdownModel variableTypeModel2;

  @override
  void initState(BuildContext context) {
    variableNameTextControllerValidator = _variableNameTextControllerValidator;
    variableTypeModel1 = createModel(context, () => OptionDropdownModel());
    variableTypeModel2 = createModel(context, () => OptionDropdownModel());
  }

  @override
  void dispose() {
    variableNameFocusNode?.dispose();
    variableNameTextController?.dispose();

    variableTypeModel1.dispose();
    variableTypeModel2.dispose();
  }
}
