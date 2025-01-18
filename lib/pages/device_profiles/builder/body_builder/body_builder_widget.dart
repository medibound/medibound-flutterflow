import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/device_profiles/builder/body_builder_section/body_builder_section_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'body_builder_model.dart';
export 'body_builder_model.dart';

class BodyBuilderWidget extends StatefulWidget {
  const BodyBuilderWidget({super.key});

  @override
  State<BodyBuilderWidget> createState() => _BodyBuilderWidgetState();
}

class _BodyBuilderWidgetState extends State<BodyBuilderWidget>
    with TickerProviderStateMixin {
  late BodyBuilderModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BodyBuilderModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

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
      decoration: const BoxDecoration(),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40.0,
              decoration: const BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Body Sections',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Rubik',
                          letterSpacing: 0.0,
                        ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      await Future.delayed(const Duration(milliseconds: 1500));
                      _model.addToBodySections(BodySectionStruct(
                        id: random_data.randomString(
                          20,
                          20,
                          true,
                          true,
                          true,
                        ),
                      ));
                      safeSetState(() {});
                    },
                    text: 'Add Section',
                    icon: const FaIcon(
                      FontAwesomeIcons.plus,
                      size: 14.0,
                    ),
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0x00E0E3E7),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Rubik',
                                color: FlutterFlowTheme.of(context).secondary,
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(10.0),
                      hoverColor:
                          FlutterFlowTheme.of(context).primaryBackground,
                      hoverTextColor: FlutterFlowTheme.of(context).secondary,
                      hoverElevation: 0.0,
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: ClipRRect(
                child: Container(
                  decoration: const BoxDecoration(),
                  child: Builder(
                    builder: (context) {
                      final sections = _model.bodySections.toList();

                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        reverse: true,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: sections.length,
                        itemBuilder: (context, sectionsIndex) {
                          final sectionsItem = sections[sectionsIndex];
                          return Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 30.0, 5.0),
                            child: ClipRRect(
                              child: Container(
                                decoration: const BoxDecoration(),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    wrapWithModel(
                                      model: _model.bodyBuilderSectionModels
                                          .getModel(
                                        sectionsItem.id,
                                        sectionsIndex,
                                      ),
                                      updateCallback: () => safeSetState(() {}),
                                      updateOnChange: true,
                                      child: BodyBuilderSectionWidget(
                                        key: Key(
                                          'Key7wc_${sectionsItem.id}',
                                        ),
                                        bodySection: sectionsItem,
                                        bodySectionCallback: (id) async {
                                          _model.updateBodySectionsAtIndex(
                                            sectionsIndex,
                                            (_) => _model
                                                .bodyBuilderSectionModels
                                                .getValueForKey(
                                              sectionsItem.id,
                                              (m) => m.section,
                                            )!,
                                          );
                                          safeSetState(() {});
                                        },
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          if (_model.bodySections.lastOrNull
                                                  ?.id !=
                                              _model.bodySections
                                                  .where((e) =>
                                                      e.id == sectionsItem.id)
                                                  .toList()
                                                  .firstOrNull
                                                  ?.id)
                                            Container(
                                              decoration: const BoxDecoration(),
                                              child: Padding(
                                                padding: const EdgeInsets.all(10.0),
                                                child: FaIcon(
                                                  FontAwesomeIcons.arrowUp,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 14.0,
                                                ),
                                              ),
                                            ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.removeFromBodySections(
                                                  sectionsItem);
                                              safeSetState(() {});
                                            },
                                            child: Container(
                                              decoration: const BoxDecoration(),
                                              child: Padding(
                                                padding: const EdgeInsets.all(10.0),
                                                child: FaIcon(
                                                  FontAwesomeIcons
                                                      .solidTrashAlt,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  size: 14.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          if (_model.bodySections.firstOrNull
                                                  ?.id !=
                                              _model.bodySections
                                                  .where((e) =>
                                                      e.id == sectionsItem.id)
                                                  .toList()
                                                  .firstOrNull
                                                  ?.id)
                                            Container(
                                              decoration: const BoxDecoration(),
                                              child: Padding(
                                                padding: const EdgeInsets.all(10.0),
                                                child: FaIcon(
                                                  FontAwesomeIcons.arrowDown,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 14.0,
                                                ),
                                              ),
                                            ),
                                        ].divide(const SizedBox(height: 25.0)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ).animateOnPageLoad(
                                animationsMap['containerOnPageLoadAnimation']!),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
          ].divide(const SizedBox(height: 10.0)),
        ),
      ),
    );
  }
}
