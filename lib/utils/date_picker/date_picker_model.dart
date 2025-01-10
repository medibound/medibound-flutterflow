import '/flutter_flow/flutter_flow_util.dart';
import 'date_picker_widget.dart' show DatePickerWidget;
import 'package:flutter/material.dart';

class DatePickerModel extends FlutterFlowModel<DatePickerWidget> {
  ///  Local state fields for this component.

  DateTime? date;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
