import '/flutter_flow/flutter_flow_util.dart';
import '/utils/dropdown/profile_dropdown/profile_dropdown_widget.dart';
import '/utils/nav_bar/nav_bar_widget.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ProfileDropdown component.
  late ProfileDropdownModel profileDropdownModel;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    profileDropdownModel = createModel(context, () => ProfileDropdownModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    profileDropdownModel.dispose();
    navBarModel.dispose();
  }
}
