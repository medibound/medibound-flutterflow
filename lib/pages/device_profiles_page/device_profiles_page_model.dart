import '/components/loading_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utils/dropdown/option_dropdown/option_dropdown_widget.dart';
import '/utils/nav_bar/nav_bar_widget.dart';
import 'device_profiles_page_widget.dart' show DeviceProfilesPageWidget;
import 'package:flutter/material.dart';

class DeviceProfilesPageModel
    extends FlutterFlowModel<DeviceProfilesPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for OptionDropdown component.
  late OptionDropdownModel optionDropdownModel;
  // Model for Loading component.
  late LoadingModel loadingModel;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    optionDropdownModel = createModel(context, () => OptionDropdownModel());
    loadingModel = createModel(context, () => LoadingModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    optionDropdownModel.dispose();
    loadingModel.dispose();
    navBarModel.dispose();
  }
}
