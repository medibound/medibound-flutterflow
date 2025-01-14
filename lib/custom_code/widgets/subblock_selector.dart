// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '../../utils/loading/loading_widget.dart';
import '../../pages/device_profiles/components/graphs/graphline/graphline_widget.dart';
import '../../pages/device_profiles/components/graphs/graphradial/graphradial_widget.dart';
import '../../pages/device_profiles/components/graphs/graphcolumn/graphcolumn_widget.dart';
import '../../pages/device_profiles/components/graphs/valuenum/valuenum_widget.dart';
import '../../pages/device_profiles/components/graphs/valuestring/valuestring_widget.dart';
import '../../pages/device_profiles/components/graphs/valuetrend/valuetrend_widget.dart';

class SubblockSelector extends StatefulWidget {
  const SubblockSelector({
    super.key,
    this.width,
    this.height,
    required this.block,
    required this.color,
  });

  final double? width;
  final double? height;
  final BlockComponentStruct block;
  final Color color;

  @override
  State<SubblockSelector> createState() => _SubblockSelectorrState();
}

class _SubblockSelectorState extends State<SubblockSelector> {
  @override
  Widget build(BuildContext context) {
    // Ensure block and required variables exist
    if (widget.block.variables.isEmpty) {
      return LoadingWidget();
    }

    // Get the required variable type and graph type
    final requiredVar = widget.block.variable[0].type;
    final graphType = widget.block.graph;

    // Return the appropriate widget based on the variable and graph type
    switch (requiredVar) {
      case "NUMBER":
        switch (graphType) {
          case "VALUE_NUM":
            return ValuenumWidget(
                variable: widget.block.variables[0], color: widget.color);
          case "GRAPH_RADIAL":
            return GraphradialWidget(
                variable: widget.block.variables[0], color: widget.color);
          default:
            return LoadingWidget();
        }

      case "NUMBER_ARRAY":
        switch (graphType) {
          case "GRAPH_LINE":
            return GraphlineWidget(
                variable: widget.block.variables[0], color: widget.color);
          case "GRAPH_COLUMN":
            return GraphcolumnWidget(
                variable: widget.block.variables[0], color: widget.color);
          case "GRAPH_RADIAL":
            return GraphradialWidget(
                variable: widget.block.variables[0], color: widget.color);
          case "VALUE_TREND":
            return ValuetrendWidget(
                variable: widget.block.variables[0], color: widget.color);
          default:
            return LoadingWidget();
        }

      case "STRING":
        switch (graphType) {
          case "VALUE_STRING":
            return ValuestringWidget(
                variable: widget.block.variables[0], color: widget.color);
          default:
            return LoadingWidget();
        }

      case "STRING_ARRAY":
        switch (graphType) {
          case "VALUE_STRING":
            return ValuestringWidget(
                variable: widget.block.variables[0], color: widget.color);
          default:
            return LoadingWidget();
        }

      default:
        return LoadingWidget();
    }
  }
}
