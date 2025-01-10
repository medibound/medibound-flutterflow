import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_dropdown_widget.dart' show ProfileDropdownWidget;
import 'package:flutter/material.dart';

class ProfileDropdownModel extends FlutterFlowModel<ProfileDropdownWidget> {
  ///  Local state fields for this component.

  ProfileStruct? profile;
  void updateProfileStruct(Function(ProfileStruct) updateFn) {
    updateFn(profile ??= ProfileStruct());
  }

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
