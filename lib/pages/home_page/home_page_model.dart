import '/flutter_flow/flutter_flow_util.dart';
import '/pages/device_profiles/components/component/component_widget.dart';
import '/utils/dropdown/profile_dropdown/profile_dropdown_widget.dart';
import '/utils/nav_bar/nav_bar_widget.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ProfileDropdown component.
  late ProfileDropdownModel profileDropdownModel;
  // Model for Component component.
  late ComponentModel componentModel1;
  // Model for Component component.
  late ComponentModel componentModel2;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    profileDropdownModel = createModel(context, () => ProfileDropdownModel());
    componentModel1 = createModel(context, () => ComponentModel());
    componentModel2 = createModel(context, () => ComponentModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    profileDropdownModel.dispose();
    componentModel1.dispose();
    componentModel2.dispose();
    navBarModel.dispose();
  }
}
