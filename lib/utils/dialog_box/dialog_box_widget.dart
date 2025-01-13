import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'dialog_box_model.dart';
export 'dialog_box_model.dart';

class DialogBoxWidget extends StatefulWidget {
  const DialogBoxWidget({
    super.key,
    required this.widget,
  });

  final Widget Function()? widget;

  @override
  State<DialogBoxWidget> createState() => _DialogBoxWidgetState();
}

class _DialogBoxWidgetState extends State<DialogBoxWidget> {
  late DialogBoxModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DialogBoxModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 600.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Align(
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Builder(builder: (_) {
            return widget.widget!();
          }),
        ),
      ),
    );
  }
}
