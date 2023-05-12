import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'lista_animales_model.dart';
export 'lista_animales_model.dart';

class ListaAnimalesWidget extends StatefulWidget {
  const ListaAnimalesWidget({Key? key}) : super(key: key);

  @override
  _ListaAnimalesWidgetState createState() => _ListaAnimalesWidgetState();
}

class _ListaAnimalesWidgetState extends State<ListaAnimalesWidget> {
  late ListaAnimalesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListaAnimalesModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF343434),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 4.0, 20.0, 5.0),
                      child: Icon(
                        Icons.pets,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                    Text(
                      'Animales',
                      style: FlutterFlowTheme.of(context).displaySmall.override(
                            fontFamily: 'DM Sans',
                            color: Colors.white,
                            fontSize: 32.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(100.0, 0.0, 0.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).accent2,
                        borderRadius: 8.0,
                        borderWidth: 5.0,
                        buttonSize: 44.0,
                        fillColor: FlutterFlowTheme.of(context).accent2,
                        icon: Icon(
                          Icons.search_rounded,
                          color: Colors.white,
                          size: 28.0,
                        ),
                        onPressed: () async {
                          context.pushNamed('Buscador');
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).accent4,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: Text(
                        '13 Animales Registrados',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'DM Sans',
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.underline,
                                ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: StreamBuilder<List<AnimalesRecord>>(
                    stream: queryAnimalesRecord(
                      queryBuilder: (animalesRecord) => animalesRecord
                          .orderBy('created_at', descending: true),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        );
                      }
                      List<AnimalesRecord> listViewAnimalesRecordList =
                          snapshot.data!;
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewAnimalesRecordList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewAnimalesRecord =
                              listViewAnimalesRecordList[listViewIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: Color(0xFF262626),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 8.0, 8.0, 8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 1.0, 1.0, 1.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                        child: Image.network(
                                          listViewAnimalesRecord.imagen!,
                                          width: 80.0,
                                          height: 80.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 8.0, 4.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              listViewAnimalesRecord.name!,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily: 'DM Sans',
                                                        color: Colors.white,
                                                        fontSize: 20.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 4.0, 8.0, 0.0),
                                              child: AutoSizeText(
                                                listViewAnimalesRecord
                                                    .createdAt!
                                                    .toString()
                                                    .maybeHandleOverflow(
                                                      maxChars: 70,
                                                      replacement: '…',
                                                    ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'DM Sans',
                                                          color: Colors.white,
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 0.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                'Animal',
                                                queryParams: {
                                                  'imagen': serializeParam(
                                                    listViewAnimalesRecord
                                                        .imagen,
                                                    ParamType.String,
                                                  ),
                                                  'nombre': serializeParam(
                                                    listViewAnimalesRecord.name,
                                                    ParamType.String,
                                                  ),
                                                  'descripcion': serializeParam(
                                                    listViewAnimalesRecord
                                                        .description,
                                                    ParamType.String,
                                                  ),
                                                  'nombrecompleto':
                                                      serializeParam(
                                                    listViewAnimalesRecord
                                                        .nombrecompleto,
                                                    ParamType.String,
                                                  ),
                                                  'imagenscanner':
                                                      serializeParam(
                                                    listViewAnimalesRecord
                                                        .imagenscanner,
                                                    ParamType.String,
                                                  ),
                                                  'genomas': serializeParam(
                                                    listViewAnimalesRecord
                                                        .genomas,
                                                    ParamType.String,
                                                  ),
                                                  'despliegues': serializeParam(
                                                    listViewAnimalesRecord
                                                        .despliegues,
                                                    ParamType.String,
                                                  ),
                                                  'especcies': serializeParam(
                                                    listViewAnimalesRecord
                                                        .especies,
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: Icon(
                                              Icons.chevron_right_rounded,
                                              color: Colors.white,
                                              size: 24.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
