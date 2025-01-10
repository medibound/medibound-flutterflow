import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utils/creator_logo/creator_logo_widget.dart';
import '/utils/menu_tile/menu_tile_widget.dart';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'nav_bar_model.dart';
export 'nav_bar_model.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({
    super.key,
    int? page,
  }) : page = page ?? 1;

  final int page;

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  late NavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10.0,
            sigmaY: 10.0,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Container(
              width: 250.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).customColor1,
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).alternate,
                  width: 1.0,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 30.0, 20.0, 0.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              wrapWithModel(
                                model: _model.creatorLogoModel,
                                updateCallback: () => safeSetState(() {}),
                                child: const CreatorLogoWidget(
                                  textVisible: true,
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        AuthUserStreamWidget(
                                          builder: (context) => Container(
                                            width: 90.0,
                                            height: 90.0,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: CachedNetworkImage(
                                              fadeInDuration:
                                                  const Duration(milliseconds: 1300),
                                              fadeOutDuration:
                                                  const Duration(milliseconds: 1300),
                                              imageUrl: currentUserPhoto,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Wrap(
                                          spacing: 5.0,
                                          runSpacing: 0.0,
                                          alignment: WrapAlignment.center,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.center,
                                          direction: Axis.vertical,
                                          runAlignment: WrapAlignment.center,
                                          verticalDirection:
                                              VerticalDirection.down,
                                          clipBehavior: Clip.none,
                                          children: [
                                            Text(
                                              'Welcome Back,',
                                              maxLines: 1,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily: 'Rubik',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            AuthUserStreamWidget(
                                              builder: (context) => Text(
                                                valueOrDefault<String>(
                                                  '${valueOrDefault<String>(
                                                    (currentUserDocument
                                                                ?.givenNames
                                                                .toList() ??
                                                            [])
                                                        .firstOrNull,
                                                    'Nick',
                                                  )} ${valueOrDefault<String>(
                                                    valueOrDefault(
                                                        currentUserDocument
                                                            ?.familyName,
                                                        ''),
                                                    'Harty',
                                                  )}',
                                                  'Nick Harty',
                                                ),
                                                maxLines: 1,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Rubik',
                                                          fontSize: 24.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ].divide(const SizedBox(height: 10.0)),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-1.0, -1.0),
                                child: ListView(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    wrapWithModel(
                                      model: _model.menuTileModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      updateOnChange: true,
                                      child: MenuTileWidget(
                                        title: 'My Organizations',
                                        icon: FaIcon(
                                          FontAwesomeIcons.hospitalUser,
                                          color: widget.page == 1
                                              ? FlutterFlowTheme.of(context)
                                                  .secondary
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          size: 16.0,
                                        ),
                                        isActive: widget.page == 1,
                                        onClick: () async {
                                          context.pushNamed(
                                            'HomePage',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 10.0, 10.0, 0.0),
                                      child: Text(
                                        'Care Utilities',
                                        style: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              fontFamily: 'Rubik',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.menuTileModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      updateOnChange: true,
                                      child: MenuTileWidget(
                                        title: 'Patient History',
                                        icon: Icon(
                                          Icons.people,
                                          color: widget.page == 4
                                              ? FlutterFlowTheme.of(context)
                                                  .secondary
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          size: 18.0,
                                        ),
                                        isActive: widget.page == 4,
                                        onClick: () async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.menuTileModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      updateOnChange: true,
                                      child: MenuTileWidget(
                                        title: 'Owned Devices',
                                        icon: FaIcon(
                                          FontAwesomeIcons.layerGroup,
                                          color: widget.page == 4
                                              ? FlutterFlowTheme.of(context)
                                                  .secondary
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          size: 16.0,
                                        ),
                                        isActive: widget.page == 4,
                                        onClick: () async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.menuTileModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      updateOnChange: true,
                                      child: MenuTileWidget(
                                        title: 'Record Manager',
                                        icon: FaIcon(
                                          FontAwesomeIcons.folderOpen,
                                          color: widget.page == 4
                                              ? FlutterFlowTheme.of(context)
                                                  .secondary
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          size: 16.0,
                                        ),
                                        isActive: widget.page == 4,
                                        onClick: () async {},
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 10.0, 10.0, 0.0),
                                      child: Text(
                                        'Developer Resources',
                                        style: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              fontFamily: 'Rubik',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.menuTileModel5,
                                      updateCallback: () => safeSetState(() {}),
                                      updateOnChange: true,
                                      child: MenuTileWidget(
                                        title: 'Device Profiles',
                                        icon: Icon(
                                          Icons.auto_awesome_mosaic,
                                          color: widget.page == 2
                                              ? FlutterFlowTheme.of(context)
                                                  .secondary
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          size: 18.0,
                                        ),
                                        isActive: widget.page == 2,
                                        onClick: () async {
                                          context.pushNamed(
                                            'DeviceProfilesPage',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ].divide(const SizedBox(height: 5.0)),
                                ),
                              ),
                            ].divide(const SizedBox(height: 40.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            child: wrapWithModel(
                              model: _model.menuTileModel6,
                              updateCallback: () => safeSetState(() {}),
                              updateOnChange: true,
                              child: MenuTileWidget(
                                title: 'Log Out',
                                icon: FaIcon(
                                  FontAwesomeIcons.signInAlt,
                                  color: FlutterFlowTheme.of(context).error,
                                  size: 16.0,
                                ),
                                isActive: false,
                                color: FlutterFlowTheme.of(context).error,
                                onClick: () async {
                                  context.pushNamedAuth(
                                      'LoginPage', context.mounted);

                                  await Future.delayed(
                                      const Duration(milliseconds: 500));
                                  GoRouter.of(context).prepareAuthEvent();
                                  await authManager.signOut();
                                  GoRouter.of(context).clearRedirectLocation();
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
