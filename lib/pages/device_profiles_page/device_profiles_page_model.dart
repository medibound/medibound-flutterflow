import '/flutter_flow/flutter_flow_util.dart';
import '/utils/doc_guide_block/doc_guide_block_widget.dart';
import '/utils/empty_list/empty_list_widget.dart';
import '/utils/nav_bar/nav_bar_widget.dart';
import 'device_profiles_page_widget.dart' show DeviceProfilesPageWidget;
import 'package:flutter/material.dart';

class DeviceProfilesPageModel
    extends FlutterFlowModel<DeviceProfilesPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavBar component.
  late NavBarModel navBarModel;
  // Model for EmptyList component.
  late EmptyListModel emptyListModel;
  // Model for DocGuideBlock component.
  late DocGuideBlockModel docGuideBlockModel;

  @override
  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());
    emptyListModel = createModel(context, () => EmptyListModel());
    docGuideBlockModel = createModel(context, () => DocGuideBlockModel());
  }

  @override
  void dispose() {
    navBarModel.dispose();
    emptyListModel.dispose();
    docGuideBlockModel.dispose();
  }
}
