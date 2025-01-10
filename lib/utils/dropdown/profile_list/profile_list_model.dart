import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_list_widget.dart' show ProfileListWidget;
import 'package:flutter/material.dart';

class ProfileListModel extends FlutterFlowModel<ProfileListWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in ProfileList widget.
  List<OrganizationsRecord>? organizations;
  // State field(s) for Search widget.
  FocusNode? searchFocusNode;
  TextEditingController? searchTextController;
  String? Function(BuildContext, String?)? searchTextControllerValidator;
  // Algolia Search Results from action on Search
  List<UsersRecord>? algoliaSearchResults = [];
  // Stores action output result for [Firestore Query - Query a collection] action in Search widget.
  List<OrganizationsRecord>? organizationsCopy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchFocusNode?.dispose();
    searchTextController?.dispose();
  }
}
