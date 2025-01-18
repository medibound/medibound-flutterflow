import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'subblock_model.dart';
export 'subblock_model.dart';

class SubblockWidget extends StatefulWidget {
  const SubblockWidget({
    super.key,
    required this.block,
    required this.graphIndex,
    required this.orientation,
  });

  final BlockComponentStruct? block;
  final int? graphIndex;
  final GraphOrientation? orientation;

  @override
  State<SubblockWidget> createState() => _SubblockWidgetState();
}

class _SubblockWidgetState extends State<SubblockWidget> {
  late SubblockModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubblockModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: custom_widgets.SubblockSelector(
        width: double.infinity,
        height: double.infinity,
        color: widget.block!.color!,
        block: widget.block!,
      ),
    );
  }
}
