import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utils/dropdown/option_dropdown_list/option_dropdown_list_widget.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'option_dropdown_model.dart';
export 'option_dropdown_model.dart';

class OptionDropdownWidget extends StatefulWidget {
  const OptionDropdownWidget({
    super.key,
    double? width,
    required this.label,
    this.optionsList,
    this.optionType,
    this.initialOption,
  }) : width = width ?? 600.0;

  final double width;
  final String? label;
  final List<DropdownStruct>? optionsList;
  final Options? optionType;
  final DropdownStruct? initialOption;

  @override
  State<OptionDropdownWidget> createState() => _OptionDropdownWidgetState();
}

class _OptionDropdownWidgetState extends State<OptionDropdownWidget> {
  late OptionDropdownModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OptionDropdownModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.initialOption != null) {
        _model.option = widget.initialOption;
        safeSetState(() {});
        safeSetState(() {
          _model.dropdownTextController?.text = widget.initialOption!.display;
        });
      }
    });

    _model.dropdownTextController ??= TextEditingController();
    _model.dropdownFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Stack(
      alignment: const AlignmentDirectional(1.0, 0.0),
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
          child: SizedBox(
            width: widget.width,
            child: TextFormField(
              controller: _model.dropdownTextController,
              focusNode: _model.dropdownFocusNode,
              autofocus: false,
              readOnly: true,
              obscureText: false,
              decoration: InputDecoration(
                isDense: true,
                labelText: widget.label,
                labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Rubik',
                      letterSpacing: 0.0,
                    ),
                alignLabelWithHint: true,
                hintText: 'Select ${widget.label}',
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Rubik',
                      letterSpacing: 0.0,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0x00000000),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0x00000000),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: FlutterFlowTheme.of(context).alternate,
                contentPadding:
                    const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
                hoverColor: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Rubik',
                    letterSpacing: 0.0,
                  ),
              textAlign: TextAlign.start,
              keyboardType: TextInputType.datetime,
              cursorColor: FlutterFlowTheme.of(context).primaryText,
              validator:
                  _model.dropdownTextControllerValidator.asValidator(context),
            ),
          ),
        ),
        Builder(
          builder: (context) => Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                await showAlignedDialog(
                  context: context,
                  isGlobal: false,
                  avoidOverflow: true,
                  targetAnchor: const AlignmentDirectional(-1.0, 1.0)
                      .resolve(Directionality.of(context)),
                  followerAnchor: const AlignmentDirectional(-1.0, -1.0)
                      .resolve(Directionality.of(context)),
                  builder: (dialogContext) {
                    return Material(
                      color: Colors.transparent,
                      child: OptionDropdownListWidget(
                        width: widget.width,
                        optionsList: (widget.optionsList != null &&
                                    (widget.optionsList)!.isNotEmpty) ==
                                true
                            ? widget.optionsList
                            : FFAppState().EmptyDropdown,
                        optionType: widget.optionType,
                        label: widget.label!,
                        action: (option) async {
                          _model.option = option;
                          safeSetState(() {});
                        },
                      ),
                    );
                  },
                );

                if (_model.option != null) {
                  safeSetState(() {
                    _model.dropdownTextController?.text = ' ';
                    _model.dropdownFocusNode?.requestFocus();
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      _model.dropdownTextController?.selection =
                          TextSelection.collapsed(
                        offset: _model.dropdownTextController!.text.length,
                      );
                    });
                  });
                }
              },
              child: Container(
                width: double.infinity,
                height: 50.0,
                decoration: const BoxDecoration(),
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 10.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (_model.option != null)
                        Wrap(
                          spacing: 10.0,
                          runSpacing: 0.0,
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.center,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                _model.option != null
                                    ? _model.option?.display
                                    : ' ',
                                'Name',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Rubik',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                      const Spacer(),
                      Builder(
                        builder: (context) {
                          if (_model.option != null) {
                            return FlutterFlowIconButton(
                              borderRadius: 8.0,
                              buttonSize: 40.0,
                              hoverColor: Colors.transparent,
                              icon: Icon(
                                Icons.close,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 16.0,
                              ),
                              onPressed: () async {
                                _model.option = null;
                                safeSetState(() {});
                                safeSetState(() {
                                  _model.dropdownTextController?.clear();
                                });
                              },
                            );
                          } else {
                            return Container(
                              width: 40.0,
                              decoration: const BoxDecoration(),
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: FaIcon(
                                FontAwesomeIcons.caretDown,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 16.0,
                              ),
                            );
                          }
                        },
                      ),
                    ].divide(const SizedBox(width: 10.0)),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
