import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/record_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/device_profiles/builder/body_builder/body_builder_widget.dart';
import '/pages/device_profiles/builder/header_builder/header_builder_widget.dart';
import '/pages/device_profiles/builder/select_component/select_component_widget.dart';
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

  final formKey5 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
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
  // Model for headerBuilder component.
  late HeaderBuilderModel headerBuilderModel;
  // Model for bodyBuilder component.
  late BodyBuilderModel bodyBuilderModel;
  // Model for selectComponent component.
  late SelectComponentModel selectComponentModel;
  // Model for Record component.
  late RecordModel recordModel;

  @override
  void initState(BuildContext context) {
    profileDropdownModel = createModel(context, () => ProfileDropdownModel());
    optionDropdownModel1 = createModel(context, () => OptionDropdownModel());
    optionDropdownModel2 = createModel(context, () => OptionDropdownModel());
    transferTypeModel = createModel(context, () => OptionDropdownModel());
    headerBuilderModel = createModel(context, () => HeaderBuilderModel());
    bodyBuilderModel = createModel(context, () => BodyBuilderModel());
    selectComponentModel = createModel(context, () => SelectComponentModel());
    recordModel = createModel(context, () => RecordModel());
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
    headerBuilderModel.dispose();
    bodyBuilderModel.dispose();
    selectComponentModel.dispose();
    recordModel.dispose();
  }
}
