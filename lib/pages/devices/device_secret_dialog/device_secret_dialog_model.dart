import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utils/loading/loading_widget.dart';
import 'device_secret_dialog_widget.dart' show DeviceSecretDialogWidget;
import 'package:flutter/material.dart';

class DeviceSecretDialogModel
    extends FlutterFlowModel<DeviceSecretDialogWidget> {
  ///  Local state fields for this component.

  KeyStruct? deviceKey;
  void updateDeviceKeyStruct(Function(KeyStruct) updateFn) {
    updateFn(deviceKey ??= KeyStruct());
  }

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Cloud Function - unwrapDeviceKey] action in deviceSecretDialog widget.
  UnwrapDeviceKeyCloudFunctionCallResponse? key;
  // State field(s) for DeviceId widget.
  FocusNode? deviceIdFocusNode;
  TextEditingController? deviceIdTextController;
  String? Function(BuildContext, String?)? deviceIdTextControllerValidator;
  // State field(s) for SecretKey widget.
  FocusNode? secretKeyFocusNode;
  TextEditingController? secretKeyTextController;
  late bool secretKeyVisibility;
  String? Function(BuildContext, String?)? secretKeyTextControllerValidator;
  // Model for Loading component.
  late LoadingModel loadingModel;

  @override
  void initState(BuildContext context) {
    secretKeyVisibility = false;
    loadingModel = createModel(context, () => LoadingModel());
  }

  @override
  void dispose() {
    deviceIdFocusNode?.dispose();
    deviceIdTextController?.dispose();

    secretKeyFocusNode?.dispose();
    secretKeyTextController?.dispose();

    loadingModel.dispose();
  }
}
