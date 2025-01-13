import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/utils/dropdown/option_dropdown/option_dropdown_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'create_device_variable_model.dart';
export 'create_device_variable_model.dart';

class CreateDeviceVariableWidget extends StatefulWidget {
  const CreateDeviceVariableWidget({
    super.key,
    required this.variableCallback,
  });

  final Future Function(DeviceVariableStruct variable)? variableCallback;

  @override
  State<CreateDeviceVariableWidget> createState() =>
      _CreateDeviceVariableWidgetState();
}

class _CreateDeviceVariableWidgetState
    extends State<CreateDeviceVariableWidget> {
  late CreateDeviceVariableModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateDeviceVariableModel());

    _model.variableNameTextController ??= TextEditingController();
    _model.variableNameFocusNode ??= FocusNode();
    _model.variableNameFocusNode!.addListener(() => safeSetState(() {}));
    _model.lowerBoundTextController ??= TextEditingController();
    _model.lowerBoundFocusNode ??= FocusNode();
    _model.lowerBoundFocusNode!.addListener(() => safeSetState(() {}));
    _model.upperBoundTextController ??= TextEditingController();
    _model.upperBoundFocusNode ??= FocusNode();
    _model.upperBoundFocusNode!.addListener(() => safeSetState(() {}));
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

    return Container(
      constraints: const BoxConstraints(
        maxWidth: 660.0,
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
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                child: SizedBox(
                  width: double.infinity,
                  child: PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: _model.pageViewController ??=
                        PageController(initialPage: 0),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Form(
                          key: _model.formKey2,
                          autovalidateMode: AutovalidateMode.disabled,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Wrap(
                                spacing: 0.0,
                                runSpacing: 0.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.vertical,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  Text(
                                    'New Variable',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Rubik',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 4.0),
                                    child: Text(
                                      'Define a variable',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Rubik',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Flexible(
                                flex: 3,
                                child: Wrap(
                                  spacing: 0.0,
                                  runSpacing: 10.0,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: TextFormField(
                                        controller:
                                            _model.variableNameTextController,
                                        focusNode: _model.variableNameFocusNode,
                                        autofocus: false,
                                        textInputAction: TextInputAction.next,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: false,
                                          labelText: 'Variable Name',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                            fontFamily: 'Rubik',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                            shadows: [
                                              Shadow(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .customColor1,
                                                offset: const Offset(0.0, 2.0),
                                                blurRadius: 40.0,
                                              )
                                            ],
                                          ),
                                          alignLabelWithHint: false,
                                          hintText: 'onePointTwentyOne',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Rubik',
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          contentPadding: const EdgeInsets.all(20.0),
                                          hoverColor:
                                              FlutterFlowTheme.of(context)
                                                  .customColor1,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Rubik',
                                              letterSpacing: 0.0,
                                            ),
                                        keyboardType: TextInputType.name,
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        validator: _model
                                            .variableNameTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.variableTypeModel,
                                      updateCallback: () => safeSetState(() {}),
                                      updateOnChange: true,
                                      child: OptionDropdownWidget(
                                        width: 440.0,
                                        label: 'Type',
                                        optionsList:
                                            FFAppState().DeviceVariableTypes,
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                          ),
                                          child: Checkbox(
                                            value: _model.isListValue ??= false,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .isListValue = newValue!);
                                            },
                                            side: BorderSide(
                                              width: 2,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                            ),
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                          ),
                                        ),
                                        Text(
                                          'Is List',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Rubik',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                    if ((_model.variableTypeModel.option !=
                                            null) &&
                                        (_model.variableTypeModel.option !=
                                            DropdownStruct(
                                              display: '',
                                              description: '',
                                              code: '',
                                            )))
                                      wrapWithModel(
                                        model: _model.presetIntegrationModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: OptionDropdownWidget(
                                          key: ValueKey(_model
                                              .variableTypeModel.option!.code),
                                          width: 440.0,
                                          label: 'Preset Integration',
                                          disabled: false,
                                          optionsList: functions
                                              .deviceVariablesToDropdowns(FFAppState()
                                                  .DeviceVariablePresetIntegrations
                                                  .where((e) =>
                                                      (e.type ==
                                                          _model
                                                              .variableTypeModel
                                                              .option
                                                              ?.code) ||
                                                      (e.type == 'CUSTOM'))
                                                  .toList()),
                                          initialOption: DropdownStruct(
                                            display: '',
                                            description: '',
                                            code: '',
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Builder(
                                      builder: (context) {
                                        if (_model.variableTypeModel.option
                                                ?.code ==
                                            'STRING') {
                                          return Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                if (_model.formKey2
                                                            .currentState ==
                                                        null ||
                                                    !_model
                                                        .formKey2.currentState!
                                                        .validate()) {
                                                  return;
                                                }
                                                await widget.variableCallback
                                                    ?.call(
                                                  DeviceVariableStruct(
                                                    info: DropdownStruct(
                                                      display: _model
                                                          .variableNameTextController
                                                          .text,
                                                      description:
                                                          '${_model.variableTypeModel.option?.display}${_model.isListValue! ? ' Array' : ''}',
                                                      code: _model
                                                          .variableNameTextController
                                                          .text,
                                                    ),
                                                    isList: _model.isListValue,
                                                    isRanged: false,
                                                    type: _model
                                                        .variableTypeModel
                                                        .option
                                                        ?.code,
                                                  ),
                                                );
                                                Navigator.pop(context);
                                              },
                                              text: 'Add Variable',
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Rubik',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                hoverColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                hoverTextColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                hoverElevation: 0.0,
                                              ),
                                            ),
                                          );
                                        } else if (_model.variableTypeModel
                                                .option?.code ==
                                            'NUMBER') {
                                          return Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                if (_model.formKey2
                                                            .currentState ==
                                                        null ||
                                                    !_model
                                                        .formKey2.currentState!
                                                        .validate()) {
                                                  return;
                                                }
                                                safeSetState(() {
                                                  _model.upperBoundTextController
                                                          ?.text =
                                                      FFAppState()
                                                          .DeviceVariablePresetIntegrations
                                                          .where((e) =>
                                                              e.info.code ==
                                                              _model
                                                                  .presetIntegrationModel
                                                                  .option
                                                                  ?.code)
                                                          .toList()
                                                          .firstOrNull!
                                                          .range
                                                          .upperBound
                                                          .toString();
                                                });
                                                safeSetState(() {
                                                  _model.lowerBoundTextController
                                                          ?.text =
                                                      FFAppState()
                                                          .DeviceVariablePresetIntegrations
                                                          .where((e) =>
                                                              e.info.code ==
                                                              _model
                                                                  .presetIntegrationModel
                                                                  .option
                                                                  ?.code)
                                                          .toList()
                                                          .firstOrNull!
                                                          .range
                                                          .lowerBound
                                                          .toString();
                                                });
                                                await _model.pageViewController
                                                    ?.nextPage(
                                                  duration: const Duration(
                                                      milliseconds: 300),
                                                  curve: Curves.ease,
                                                );
                                              },
                                              text: 'Confirm Details',
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Rubik',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                hoverColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                hoverTextColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                hoverElevation: 0.0,
                                              ),
                                            ),
                                          );
                                        } else {
                                          return Container(
                                            width: 100.0,
                                            height: 0.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                  ].divide(const SizedBox(width: 10.0)),
                                ),
                              ),
                            ].divide(const SizedBox(height: 10.0)),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: FutureBuilder<ApiCallResponse>(
                          future: APIForUCUMGroup.getUCUMSingleUnitCall.call(
                            terms: FFAppState()
                                .DeviceVariablePresetIntegrations
                                .where((e) =>
                                    e.info.code ==
                                    _model.presetIntegrationModel.option?.code)
                                .toList()
                                .firstOrNull
                                ?.unit,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 25.0,
                                  height: 25.0,
                                  child: SpinKitPulse(
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 25.0,
                                  ),
                                ),
                              );
                            }
                            final formGetUCUMSingleUnitResponse =
                                snapshot.data!;

                            return Form(
                              key: _model.formKey1,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Wrap(
                                    spacing: 0.0,
                                    runSpacing: 0.0,
                                    alignment: WrapAlignment.start,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.start,
                                    direction: Axis.vertical,
                                    runAlignment: WrapAlignment.start,
                                    verticalDirection: VerticalDirection.down,
                                    clipBehavior: Clip.none,
                                    children: [
                                      Text(
                                        'Variable Details',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .override(
                                              fontFamily: 'Rubik',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 4.0),
                                        child: Text(
                                          'Some constraints may be applied from preset',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Rubik',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Builder(
                                    builder: (context) {
                                      if (_model
                                              .variableTypeModel.option?.code ==
                                          'NUMBER') {
                                        return Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Wrap(
                                            spacing: 0.0,
                                            runSpacing: 10.0,
                                            alignment: WrapAlignment.start,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.horizontal,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .lowerBoundTextController,
                                                        focusNode: _model
                                                            .lowerBoundFocusNode,
                                                        autofocus: false,
                                                        textInputAction:
                                                            TextInputAction
                                                                .next,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          isDense: false,
                                                          labelText:
                                                              'Lower Bound',
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                            fontFamily: 'Rubik',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            shadows: [
                                                              Shadow(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .customColor1,
                                                                offset: const Offset(
                                                                    0.0, 2.0),
                                                                blurRadius:
                                                                    40.0,
                                                              )
                                                            ],
                                                          ),
                                                          alignLabelWithHint:
                                                              false,
                                                          hintText:
                                                              'onePointTwentyOne',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Rubik',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                          contentPadding:
                                                              const EdgeInsets.all(
                                                                  20.0),
                                                          hoverColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .customColor1,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Rubik',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        keyboardType:
                                                            TextInputType.name,
                                                        cursorColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        validator: _model
                                                            .lowerBoundTextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .upperBoundTextController,
                                                        focusNode: _model
                                                            .upperBoundFocusNode,
                                                        autofocus: false,
                                                        textInputAction:
                                                            TextInputAction
                                                                .next,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          isDense: false,
                                                          labelText:
                                                              'Upper Bound',
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                            fontFamily: 'Rubik',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            shadows: [
                                                              Shadow(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .customColor1,
                                                                offset: const Offset(
                                                                    0.0, 2.0),
                                                                blurRadius:
                                                                    40.0,
                                                              )
                                                            ],
                                                          ),
                                                          alignLabelWithHint:
                                                              false,
                                                          hintText:
                                                              'onePointTwentyOne',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Rubik',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                          contentPadding:
                                                              const EdgeInsets.all(
                                                                  20.0),
                                                          hoverColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .customColor1,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Rubik',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        keyboardType:
                                                            TextInputType.name,
                                                        cursorColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        validator: _model
                                                            .upperBoundTextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 15.0)),
                                              ),
                                              wrapWithModel(
                                                model: _model.unitModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: OptionDropdownWidget(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                          .width,
                                                  label: 'Unit',
                                                  disabled: FFAppState()
                                                          .DeviceVariablePresetIntegrations
                                                          .where((e) =>
                                                              e.info.code ==
                                                              _model
                                                                  .presetIntegrationModel
                                                                  .option
                                                                  ?.code)
                                                          .toList()
                                                          .firstOrNull
                                                          ?.type !=
                                                      'CUSTOM',
                                                  optionType: Options.UNITS,
                                                  initialOption: formGetUCUMSingleUnitResponse
                                                              .succeeded &&
                                                          (FFAppState()
                                                                  .DeviceVariablePresetIntegrations
                                                                  .where((e) =>
                                                                      e.info
                                                                          .code ==
                                                                      _model
                                                                          .presetIntegrationModel
                                                                          .option
                                                                          ?.code)
                                                                  .toList()
                                                                  .firstOrNull
                                                                  ?.type !=
                                                              'CUSTOM')
                                                      ? functions
                                                          .arraysToDropdown(
                                                              APIForUCUMGroup
                                                                  .getUCUMSingleUnitCall
                                                                  .displays(
                                                                    formGetUCUMSingleUnitResponse
                                                                        .jsonBody,
                                                                  )!
                                                                  .toList(),
                                                              APIForUCUMGroup
                                                                  .getUCUMSingleUnitCall
                                                                  .descriptions(
                                                                    formGetUCUMSingleUnitResponse
                                                                        .jsonBody,
                                                                  )!
                                                                  .toList(),
                                                              APIForUCUMGroup
                                                                  .getUCUMSingleUnitCall
                                                                  .codes(
                                                                    formGetUCUMSingleUnitResponse
                                                                        .jsonBody,
                                                                  )!
                                                                  .toList())
                                                          .firstOrNull
                                                      : DropdownStruct(
                                                          display: '',
                                                          description: '',
                                                          code: '',
                                                        ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      } else {
                                        return Container(
                                          width: 100.0,
                                          height: 1.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                  Builder(
                                    builder: (context) {
                                      if (_model
                                              .variableTypeModel.option?.code ==
                                          'NUMBER') {
                                        return Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    await _model
                                                        .pageViewController
                                                        ?.previousPage(
                                                      duration: const Duration(
                                                          milliseconds: 300),
                                                      curve: Curves.ease,
                                                    );
                                                  },
                                                  text: 'Back',
                                                  options: FFButtonOptions(
                                                    height: 40.0,
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 0.0),
                                                    iconPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: const Color(0x00E0E3E7),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Rubik',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    elevation: 0.0,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    hoverColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    hoverTextColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                    hoverElevation: 0.0,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    if (_model.formKey1
                                                                .currentState ==
                                                            null ||
                                                        !_model.formKey1
                                                            .currentState!
                                                            .validate()) {
                                                      return;
                                                    }
                                                    await widget
                                                        .variableCallback
                                                        ?.call(
                                                      DeviceVariableStruct(
                                                        info: DropdownStruct(
                                                          display: _model
                                                              .variableNameTextController
                                                              .text,
                                                          description:
                                                              '${_model.variableTypeModel.option?.display}${_model.isListValue! ? ' Array' : ''}',
                                                          code: _model
                                                              .variableNameTextController
                                                              .text,
                                                        ),
                                                        isList:
                                                            _model.isListValue,
                                                        isRanged: true,
                                                        range: RangeStruct(
                                                          upperBound: double
                                                              .tryParse(_model
                                                                  .upperBoundTextController
                                                                  .text),
                                                          lowerBound: double
                                                              .tryParse(_model
                                                                  .lowerBoundTextController
                                                                  .text),
                                                        ),
                                                        type: _model
                                                            .variableTypeModel
                                                            .option
                                                            ?.code,
                                                        unit: _model.unitModel
                                                            .option?.code,
                                                      ),
                                                    );
                                                    Navigator.pop(context);
                                                  },
                                                  text: 'Add Variable',
                                                  options: FFButtonOptions(
                                                    height: 40.0,
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 0.0),
                                                    iconPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Rubik',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    elevation: 0.0,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    hoverColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    hoverTextColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                    hoverElevation: 0.0,
                                                  ),
                                                ),
                                              ),
                                            ].divide(const SizedBox(width: 10.0)),
                                          ),
                                        );
                                      } else {
                                        return Container(
                                          width: 100.0,
                                          height: 0.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                ].divide(const SizedBox(height: 10.0)),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
              child: Text(
                'New Device Variable',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Rubik',
                      color: FlutterFlowTheme.of(context).secondary,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
