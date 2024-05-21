import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'goods_items_list_comp_model.dart';
export 'goods_items_list_comp_model.dart';

class GoodsItemsListCompWidget extends StatefulWidget {
  const GoodsItemsListCompWidget({
    super.key,
    bool? isSearchActive,
    required this.codeResult,
    this.goodsList,
  }) : isSearchActive = isSearchActive ?? true;

  final bool isSearchActive;
  final int? codeResult;
  final dynamic goodsList;

  @override
  State<GoodsItemsListCompWidget> createState() =>
      _GoodsItemsListCompWidgetState();
}

class _GoodsItemsListCompWidgetState extends State<GoodsItemsListCompWidget> {
  late GoodsItemsListCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GoodsItemsListCompModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
        child: Builder(
          builder: (context) {
            final goodsarritem = widget.goodsList?.toList() ?? [];
            if (goodsarritem.isEmpty) {
              return Image.asset(
                'assets/images/avatar1-black.png',
              );
            }
            return ListView.separated(
              padding: EdgeInsets.zero,
              primary: false,
              scrollDirection: Axis.vertical,
              itemCount: goodsarritem.length,
              separatorBuilder: (_, __) => const SizedBox(height: 15.0),
              itemBuilder: (context, goodsarritemIndex) {
                final goodsarritemItem = goodsarritem[goodsarritemIndex];
                return Container(
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 5.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 7.0,
                            color: Color(0x32171717),
                            offset: Offset(
                              0.0,
                              3.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Image.network(
                                  getJsonField(
                                    goodsarritemItem,
                                    r'''$.image''',
                                  ).toString(),
                                  width: 80.0,
                                  height: 80.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          getJsonField(
                                            goodsarritemItem,
                                            r'''$.name''',
                                          ).toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color: const Color(0xFF14181B),
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        'Plus Jakarta Sans'),
                                              ),
                                        ),
                                        Text(
                                          getJsonField(
                                            goodsarritemItem,
                                            r'''$.id''',
                                          ).toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color: const Color(0xFF14181B),
                                                fontSize: 11.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        'Plus Jakarta Sans'),
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 7.0, 0.0, 0.0),
                                                child: Text(
                                                  getJsonField(
                                                    goodsarritemItem,
                                                    r'''$.brand''',
                                                  ).toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color:
                                                            const Color(0xFF57636C),
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                'Plus Jakarta Sans'),
                                                      ),
                                                ),
                                              ),
                                              FlutterFlowIconButton(
                                                borderColor: const Color(0xFF31BFAE),
                                                borderRadius: 25.0,
                                                borderWidth: 3.0,
                                                buttonSize: 45.0,
                                                fillColor: const Color(0xFF297C75),
                                                hoverColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                hoverIconColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                icon: Icon(
                                                  Icons.add_to_photos_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  size: 24.0,
                                                ),
                                                onPressed: () async {
                                                  FFAppState().addToGoodsarray(
                                                      goodsarritemItem);
                                                  FFAppState().badgecount =
                                                      FFAppState().badgecount +
                                                          1;
                                                  FFAppState()
                                                      .addToGoodsarrayID(
                                                          getJsonField(
                                                    goodsarritemItem,
                                                    r'''$.id''',
                                                  ));
                                                  _model.updatePage(() {
                                                    _model.isAddedItem = true;
                                                  });
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                        'товар добавлен в подбор',
                                                        style: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          fontSize: 14.0,
                                                        ),
                                                      ),
                                                      duration: const Duration(
                                                          milliseconds: 1500),
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                    ),
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
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
              },
            );
          },
        ),
      ),
    );
  }
}
