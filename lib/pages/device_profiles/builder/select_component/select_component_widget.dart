import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/device_profiles/components/component/component_widget.dart';
import '/utils/dropdown/option_dropdown/option_dropdown_widget.dart';
import '/utils/empty_list/empty_list_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'select_component_model.dart';
export 'select_component_model.dart';

class SelectComponentWidget extends StatefulWidget {
  const SelectComponentWidget({
    super.key,
    this.variablesList,
  });

  final List<DeviceVariableStruct>? variablesList;

  @override
  State<SelectComponentWidget> createState() => _SelectComponentWidgetState();
}

class _SelectComponentWidgetState extends State<SelectComponentWidget> {
  late SelectComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectComponentModel());

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
      width: functions.getBlockWidth(100.0, 'HALF', 10.0),
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.variableSelectedForCompModel,
                updateCallback: () => safeSetState(() {}),
                updateOnChange: true,
                child: OptionDropdownWidget(
                  width: functions.getBlockWidth(100.0, 'HALF', 10.0),
                  label: 'Variable',
                  disabled: false,
                  optionsList: functions.deviceVariablesToDropdowns(
                      widget.variablesList?.toList()),
                  onSelected: (optionSelected) async {},
                ),
              ),
              wrapWithModel(
                model: _model.colorSelectedForCompModel,
                updateCallback: () => safeSetState(() {}),
                updateOnChange: true,
                child: OptionDropdownWidget(
                  width: functions.getBlockWidth(100.0, 'HALF', 10.0),
                  label: 'Color',
                  disabled: false,
                  optionsList: FFAppState().BlockColors,
                  onSelected: (optionSelected) async {},
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(),
                  child: FlutterFlowChoiceChips(
                    options: [
                      ChipData('QUARTER', Icons.square_rounded),
                      ChipData('HALF', Icons.rectangle_rounded),
                      ChipData('FULL', FontAwesomeIcons.expandArrowsAlt)
                    ],
                    onChanged: (val) =>
                        safeSetState(() => _model.sizeValue = val?.firstOrNull),
                    selectedChipStyle: ChipStyle(
                      backgroundColor:
                          FlutterFlowTheme.of(context).primaryBackground,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Rubik',
                                color: FlutterFlowTheme.of(context).secondary,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                      iconColor: FlutterFlowTheme.of(context).secondary,
                      iconSize: 16.0,
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    unselectedChipStyle: ChipStyle(
                      backgroundColor: Color(0x00000000),
                      textStyle: FlutterFlowTheme.of(context)
                          .bodyMedium
                          .override(
                            fontFamily: 'Rubik',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                      iconColor: FlutterFlowTheme.of(context).secondaryText,
                      iconSize: 16.0,
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    chipSpacing: 8.0,
                    rowSpacing: 8.0,
                    multiselect: false,
                    initialized: _model.sizeValue != null,
                    alignment: WrapAlignment.center,
                    controller: _model.sizeValueController ??=
                        FormFieldController<List<String>>(
                      ['QUARTER'],
                    ),
                    wrapped: false,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: Container(
              decoration: BoxDecoration(),
              child: Builder(
                builder: (context) {
                  if (_model.variableSelectedForCompModel.option != null) {
                    return StreamBuilder<List<SubBlocksRecord>>(
                      stream: querySubBlocksRecord(
                        queryBuilder: (subBlocksRecord) =>
                            subBlocksRecord.where(
                          'types',
                          arrayContains:
                              '${widget.variablesList?.where((e) => e.info.code == _model.variableSelectedForCompModel.option?.code).toList().firstOrNull?.type}${widget.variablesList!.where((e) => e.info.code == _model.variableSelectedForCompModel.option?.code).toList().firstOrNull!.isList ? '_ARRAY' : ''}',
                        ),
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
                        List<SubBlocksRecord> containerSubBlocksRecordList =
                            snapshot.data!;

                        return Container(
                          decoration: BoxDecoration(),
                          child: Builder(
                            builder: (context) {
                              final sizedSubBlocks =
                                  containerSubBlocksRecordList
                                      .where((e) =>
                                          (e.sizes
                                              .where(
                                                  (e) => e == _model.sizeValue)
                                              .toList()
                                              .isNotEmpty) ==
                                          true)
                                      .toList();
                              if (sizedSubBlocks.isEmpty) {
                                return Container(
                                  width: double.infinity,
                                  height: 200.0,
                                  child: EmptyListWidget(
                                    text:
                                        'No Variable Selected or No Available Components',
                                    icon: Icon(
                                      Icons.layers_clear_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                    height: 200.0,
                                  ),
                                );
                              }

                              return ListView.separated(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: sizedSubBlocks.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(height: 10.0),
                                itemBuilder: (context, sizedSubBlocksIndex) {
                                  final sizedSubBlocksItem =
                                      sizedSubBlocks[sizedSubBlocksIndex];
                                  return Column(
                                    key: ValueKey(sizedSubBlocksItem.info.code),
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Draggable<BlockComponentStruct>(
                                        data: BlockComponentStruct(
                                          info: sizedSubBlocksItem.info,
                                          size: _model.sizeValue,
                                          color: valueOrDefault<Color>(
                                            _model.colorSelectedForCompModel
                                                        .option !=
                                                    null
                                                ? valueOrDefault<Color>(
                                                    _model
                                                        .colorSelectedForCompModel
                                                        .option
                                                        ?.color,
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                  )
                                                : FlutterFlowTheme.of(context)
                                                    .tertiary,
                                            FlutterFlowTheme.of(context)
                                                .tertiary,
                                          ),
                                          subBlock:
                                              sizedSubBlocksItem.info.code,
                                          variableIds: widget.variablesList
                                              ?.where((e) =>
                                                  e.info.code ==
                                                  _model
                                                      .variableSelectedForCompModel
                                                      .option
                                                      ?.code)
                                              .toList()
                                              .map((e) => e.info.code)
                                              .toList(),
                                        ),
                                        feedback: Material(
                                          type: MaterialType.transparency,
                                          child: ComponentWidget(
                                            key: Key(
                                                'Keycot_${sizedSubBlocksIndex}_of_${sizedSubBlocks.length}'),
                                            totalHeight: 100.0,
                                            block: BlockComponentStruct(
                                              info: sizedSubBlocksItem.info,
                                              size: _model.sizeValue,
                                              color: valueOrDefault<Color>(
                                                _model.colorSelectedForCompModel
                                                            .option !=
                                                        null
                                                    ? valueOrDefault<Color>(
                                                        _model
                                                            .colorSelectedForCompModel
                                                            .option
                                                            ?.color,
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .tertiary,
                                                      )
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                FlutterFlowTheme.of(context)
                                                    .tertiary,
                                              ),
                                              subBlock:
                                                  sizedSubBlocksItem.info.code,
                                              variableIds: widget.variablesList
                                                  ?.where((e) =>
                                                      e.info.code ==
                                                      _model
                                                          .variableSelectedForCompModel
                                                          .option
                                                          ?.code)
                                                  .toList()
                                                  .map((e) => e.info.code)
                                                  .toList(),
                                            ),
                                            spacing: 10.0,
                                            varList: widget.variablesList!,
                                          ),
                                        ),
                                        child: ComponentWidget(
                                          key: Key(
                                              'Keycot_${sizedSubBlocksIndex}_of_${sizedSubBlocks.length}'),
                                          totalHeight: 100.0,
                                          block: BlockComponentStruct(
                                            info: sizedSubBlocksItem.info,
                                            size: _model.sizeValue,
                                            color: valueOrDefault<Color>(
                                              _model.colorSelectedForCompModel
                                                          .option !=
                                                      null
                                                  ? valueOrDefault<Color>(
                                                      _model
                                                          .colorSelectedForCompModel
                                                          .option
                                                          ?.color,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .tertiary,
                                                    )
                                                  : FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              FlutterFlowTheme.of(context)
                                                  .tertiary,
                                            ),
                                            subBlock:
                                                sizedSubBlocksItem.info.code,
                                            variableIds: widget.variablesList
                                                ?.where((e) =>
                                                    e.info.code ==
                                                    _model
                                                        .variableSelectedForCompModel
                                                        .option
                                                        ?.code)
                                                .toList()
                                                .map((e) => e.info.code)
                                                .toList(),
                                          ),
                                          spacing: 10.0,
                                          varList: widget.variablesList!,
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                        );
                      },
                    );
                  } else {
                    return Container(
                      height: 200.0,
                      decoration: BoxDecoration(),
                      child: wrapWithModel(
                        model: _model.emptyListModel,
                        updateCallback: () => safeSetState(() {}),
                        child: EmptyListWidget(
                          text:
                              'No Variable Selected or No Available Components',
                          icon: Icon(
                            Icons.layers_clear_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        ].divide(SizedBox(height: 10.0)),
      ),
    );
  }
}
