import '/flutter_flow/flutter_flow_util.dart';
import '/utils/dropdown/option_dropdown/option_dropdown_widget.dart';
import '/utils/dropdown/profile_dropdown/profile_dropdown_widget.dart';
import 'create_device_profile_widget.dart' show CreateDeviceProfileWidget;
import 'package:flutter/material.dart';

class CreateDeviceProfileModel
    extends FlutterFlowModel<CreateDeviceProfileWidget> {
  ///  State fields for stateful widgets in this component.

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
  String? _deviceNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Device Name is required';
    }

    return null;
  }

  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  String? _descriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Description is required';
    }

    return null;
  }

  // Model for ProfileDropdown component.
  late ProfileDropdownModel profileDropdownModel;
  // Model for OptionDropdown component.
  late OptionDropdownModel optionDropdownModel;
  // State field(s) for ManualLink widget.
  FocusNode? manualLinkFocusNode;
  TextEditingController? manualLinkTextController;
  String? Function(BuildContext, String?)? manualLinkTextControllerValidator;
  String? _manualLinkTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Device Name is required';
    }

    return null;
  }

  // State field(s) for ModelNumber widget.
  FocusNode? modelNumberFocusNode;
  TextEditingController? modelNumberTextController;
  String? Function(BuildContext, String?)? modelNumberTextControllerValidator;
  String? _modelNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Description is required';
    }

    return null;
  }

  // State field(s) for UDI widget.
  FocusNode? udiFocusNode1;
  TextEditingController? udiTextController1;
  String? Function(BuildContext, String?)? udiTextController1Validator;
  // Model for ProfileMode.
  late OptionDropdownModel profileModeModel;
  // Model for TransferType.
  late OptionDropdownModel transferTypeModel;
  // State field(s) for UDI widget.
  FocusNode? udiFocusNode2;
  TextEditingController? udiTextController2;
  String? Function(BuildContext, String?)? udiTextController2Validator;

  @override
  void initState(BuildContext context) {
    deviceNameTextControllerValidator = _deviceNameTextControllerValidator;
    descriptionTextControllerValidator = _descriptionTextControllerValidator;
    profileDropdownModel = createModel(context, () => ProfileDropdownModel());
    optionDropdownModel = createModel(context, () => OptionDropdownModel());
    manualLinkTextControllerValidator = _manualLinkTextControllerValidator;
    modelNumberTextControllerValidator = _modelNumberTextControllerValidator;
    profileModeModel = createModel(context, () => OptionDropdownModel());
    transferTypeModel = createModel(context, () => OptionDropdownModel());
  }

  @override
  void dispose() {
    deviceNameFocusNode?.dispose();
    deviceNameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    profileDropdownModel.dispose();
    optionDropdownModel.dispose();
    manualLinkFocusNode?.dispose();
    manualLinkTextController?.dispose();

    modelNumberFocusNode?.dispose();
    modelNumberTextController?.dispose();

    udiFocusNode1?.dispose();
    udiTextController1?.dispose();

    profileModeModel.dispose();
    transferTypeModel.dispose();
    udiFocusNode2?.dispose();
    udiTextController2?.dispose();
  }
}
