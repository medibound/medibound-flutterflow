import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utils/desc_token/desc_token_widget.dart';
import '/utils/doc_guide_block/doc_guide_block_widget.dart';
import '/utils/nav_bar/nav_bar_widget.dart';
import 'manage_device_profiles_page_widget.dart'
    show ManageDeviceProfilesPageWidget;
import 'package:flutter/material.dart';

class ManageDeviceProfilesPageModel
    extends FlutterFlowModel<ManageDeviceProfilesPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavBar component.
  late NavBarModel navBarModel;
  // Model for DescToken component.
  late DescTokenModel descTokenModel1;
  // Model for DescToken component.
  late DescTokenModel descTokenModel2;
  // Model for DescToken component.
  late DescTokenModel descTokenModel3;
  // Model for DescToken component.
  late DescTokenModel descTokenModel4;
  // Model for DescToken component.
  late DescTokenModel descTokenModel5;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  DeviceRecord? device;
  // Stores action output result for [Cloud Function - createDeviceKey] action in Button widget.
  CreateDeviceKeyCloudFunctionCallResponse? keyOutput;
  // Model for DocGuideBlock component.
  late DocGuideBlockModel docGuideBlockModel;

  @override
  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());
    descTokenModel1 = createModel(context, () => DescTokenModel());
    descTokenModel2 = createModel(context, () => DescTokenModel());
    descTokenModel3 = createModel(context, () => DescTokenModel());
    descTokenModel4 = createModel(context, () => DescTokenModel());
    descTokenModel5 = createModel(context, () => DescTokenModel());
    docGuideBlockModel = createModel(context, () => DocGuideBlockModel());
  }

  @override
  void dispose() {
    navBarModel.dispose();
    descTokenModel1.dispose();
    descTokenModel2.dispose();
    descTokenModel3.dispose();
    descTokenModel4.dispose();
    descTokenModel5.dispose();
    docGuideBlockModel.dispose();
  }
}
