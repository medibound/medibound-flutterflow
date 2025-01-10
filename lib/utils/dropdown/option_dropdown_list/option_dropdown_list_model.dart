import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/loading_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'option_dropdown_list_widget.dart' show OptionDropdownListWidget;
import 'package:flutter/material.dart';

class OptionDropdownListModel
    extends FlutterFlowModel<OptionDropdownListWidget> {
  ///  Local state fields for this component.

  List<DropdownStruct> compOptionsList = [];
  void addToCompOptionsList(DropdownStruct item) => compOptionsList.add(item);
  void removeFromCompOptionsList(DropdownStruct item) =>
      compOptionsList.remove(item);
  void removeAtIndexFromCompOptionsList(int index) =>
      compOptionsList.removeAt(index);
  void insertAtIndexInCompOptionsList(int index, DropdownStruct item) =>
      compOptionsList.insert(index, item);
  void updateCompOptionsListAtIndex(
          int index, Function(DropdownStruct) updateFn) =>
      compOptionsList[index] = updateFn(compOptionsList[index]);

  bool isLoading = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Search widget.
  FocusNode? searchFocusNode;
  TextEditingController? searchTextController;
  String? Function(BuildContext, String?)? searchTextControllerValidator;
  // Stores action output result for [Backend Call - API (Get UCUM Units)] action in Search widget.
  ApiCallResponse? listResultsCopy;
  // Model for Loading component.
  late LoadingModel loadingModel;

  @override
  void initState(BuildContext context) {
    loadingModel = createModel(context, () => LoadingModel());
  }

  @override
  void dispose() {
    searchFocusNode?.dispose();
    searchTextController?.dispose();

    loadingModel.dispose();
  }
}
