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

import '../../pages/device_profiles/components/graphs/trend/trend_widget.dart';

import '../../pages/device_profiles/components/graphs/column/column_widget.dart';
import '../../pages/device_profiles/components/graphs/line/line_widget.dart';
import '../../pages/device_profiles/components/graphs/nvalue/nvalue_widget.dart';
import '../../pages/device_profiles/components/graphs/svalue/svalue_widget.dart';
import '../../pages/device_profiles/components/graphs/radial/radial_widget.dart';
import '../../utils/loading/loading_widget.dart';

class GraphSelector extends StatefulWidget {
  const GraphSelector({
    super.key,
    this.width,
    this.height,
    required this.block,
    required this.color,
    required this.graphIndex,
    required this.orientation,
  });

  final double? width;
  final double? height;
  final BlockComponentStruct block;
  final Color color;
  final int graphIndex;
  final GraphOrientation orientation;

  @override
  State<GraphSelector> createState() => _GraphSelectorState();
}

class _GraphSelectorState extends State<GraphSelector> {
  @override
  Widget build(BuildContext context) {
    // Ensure block and required variables exist
    if (widget.block.requiredVars.isEmpty ||
        widget.block.graphs.length <= widget.graphIndex) {
      return LoadingWidget();
    }

    // Get the required variable type and graph type
    final requiredVar = widget.block.requiredVars[0];
    final graphType = widget.block.graphs[widget.graphIndex];

    // Return the appropriate widget based on the variable and graph type
    switch (requiredVar) {
      case "NUMBER":
        switch (graphType) {
          case "NVALUE":
            return NvalueWidget(
                variable: widget.block.variables[0],
                orientation: widget.orientation,
                color: widget.color);
          case "RADIAL":
            return RadialWidget(
                variable: widget.block.variables[0], color: widget.color);
          default:
            return LoadingWidget();
        }

      case "NUMBER_ARRAY":
        switch (graphType) {
          case "LINE":
            return LineWidget(
                variable: widget.block.variables[0], color: widget.color);
          case "COLUMN":
            return ColumnWidget(
                variable: widget.block.variables[0], color: widget.color);
          case "RADIAL":
            return RadialWidget(
                variable: widget.block.variables[0], color: widget.color);
          case "TREND":
            return TrendWidget(
                variable: widget.block.variables[0],
                orientation: widget.orientation,
                color: widget.color);
          default:
            return LoadingWidget();
        }

      case "STRING":
        switch (graphType) {
          case "SVALUE":
            return SvalueWidget(
                variable: widget.block.variables[0],
                orientation: widget.orientation,
                color: widget.color);
          default:
            return LoadingWidget();
        }

      case "STRING_ARRAY":
        switch (graphType) {
          case "SVALUE":
            return SvalueWidget(
                variable: widget.block.variables[0],
                orientation: widget.orientation,
                color: widget.color);
          default:
            return LoadingWidget();
        }

      default:
        return LoadingWidget();
    }
  }
}
