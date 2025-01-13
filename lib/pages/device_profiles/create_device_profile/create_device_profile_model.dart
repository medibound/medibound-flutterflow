import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utils/dropdown/option_dropdown/option_dropdown_widget.dart';
import '/utils/dropdown/profile_dropdown/profile_dropdown_widget.dart';
import 'create_device_profile_widget.dart' show CreateDeviceProfileWidget;
import 'package:flutter/material.dart';

class CreateDeviceProfileModel
    extends FlutterFlowModel<CreateDeviceProfileWidget> {
  ///  Local state fields for this component.

  List<DeviceVariableStruct> variableList = [];
  void addToVariableList(DeviceVariableStruct item) => variableList.add(item);
  void removeFromVariableList(DeviceVariableStruct item) =>
      variableList.remove(item);
  void removeAtIndexFromVariableList(int index) => variableList.removeAt(index);
  void insertAtIndexInVariableList(int index, DeviceVariableStruct item) =>
      variableList.insert(index, item);
  void updateVariableListAtIndex(
          int index, Function(DeviceVariableStruct) updateFn) =>
      variableList[index] = updateFn(variableList[index]);

  double windowWidth = 660.0;

  double? windowHeight = 600.0;

  ///  State fields for stateful widgets in this component.

  final formKey4 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for DeviceName widget.
  FocusNode? deviceNameFocusNode;
  TextEditingController? deviceNameTextController;
  String? Function(BuildContext, String?)? deviceNameTextControllerValidator;
  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // Model for ProfileDropdown component.
  late ProfileDropdownModel profileDropdownModel;
  // Model for OptionDropdown component.
  late OptionDropdownModel optionDropdownModel1;
  // State field(s) for ManualLink widget.
  FocusNode? manualLinkFocusNode;
  TextEditingController? manualLinkTextController;
  String? Function(BuildContext, String?)? manualLinkTextControllerValidator;
  // State field(s) for ModelNumber widget.
  FocusNode? modelNumberFocusNode;
  TextEditingController? modelNumberTextController;
  String? Function(BuildContext, String?)? modelNumberTextControllerValidator;
  // State field(s) for UDI widget.
  FocusNode? udiFocusNode;
  TextEditingController? udiTextController;
  String? Function(BuildContext, String?)? udiTextControllerValidator;
  // Model for OptionDropdown component.
  late OptionDropdownModel optionDropdownModel2;
  // Model for TransferType.
  late OptionDropdownModel transferTypeModel;
  // Model for OptionDropdown component.
  late OptionDropdownModel optionDropdownModel3;

  @override
  void initState(BuildContext context) {
    profileDropdownModel = createModel(context, () => ProfileDropdownModel());
    optionDropdownModel1 = createModel(context, () => OptionDropdownModel());
    optionDropdownModel2 = createModel(context, () => OptionDropdownModel());
    transferTypeModel = createModel(context, () => OptionDropdownModel());
    optionDropdownModel3 = createModel(context, () => OptionDropdownModel());
  }

  @override
  void dispose() {
    deviceNameFocusNode?.dispose();
    deviceNameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    profileDropdownModel.dispose();
    optionDropdownModel1.dispose();
    manualLinkFocusNode?.dispose();
    manualLinkTextController?.dispose();

    modelNumberFocusNode?.dispose();
    modelNumberTextController?.dispose();

    udiFocusNode?.dispose();
    udiTextController?.dispose();

    optionDropdownModel2.dispose();
    transferTypeModel.dispose();
    optionDropdownModel3.dispose();
  }
}
