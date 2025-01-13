// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BlockComponentStruct extends FFFirebaseStruct {
  BlockComponentStruct({
    DropdownStruct? info,
    List<String>? requiredVars,
    String? size,
    String? layout,
    Color? color,
    List<String>? graphs,
    List<DeviceVariableStruct>? variables,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _info = info,
        _requiredVars = requiredVars,
        _size = size,
        _layout = layout,
        _color = color,
        _graphs = graphs,
        _variables = variables,
        super(firestoreUtilData);

  // "info" field.
  DropdownStruct? _info;
  DropdownStruct get info => _info ?? DropdownStruct();
  set info(DropdownStruct? val) => _info = val;

  void updateInfo(Function(DropdownStruct) updateFn) {
    updateFn(_info ??= DropdownStruct());
  }

  bool hasInfo() => _info != null;

  // "required_vars" field.
  List<String>? _requiredVars;
  List<String> get requiredVars => _requiredVars ?? const [];
  set requiredVars(List<String>? val) => _requiredVars = val;

  void updateRequiredVars(Function(List<String>) updateFn) {
    updateFn(_requiredVars ??= []);
  }

  bool hasRequiredVars() => _requiredVars != null;

  // "size" field.
  String? _size;
  String get size => _size ?? '';
  set size(String? val) => _size = val;

  bool hasSize() => _size != null;

  // "layout" field.
  String? _layout;
  String get layout => _layout ?? '';
  set layout(String? val) => _layout = val;

  bool hasLayout() => _layout != null;

  // "color" field.
  Color? _color;
  Color? get color => _color;
  set color(Color? val) => _color = val;

  bool hasColor() => _color != null;

  // "graphs" field.
  List<String>? _graphs;
  List<String> get graphs => _graphs ?? const [];
  set graphs(List<String>? val) => _graphs = val;

  void updateGraphs(Function(List<String>) updateFn) {
    updateFn(_graphs ??= []);
  }

  bool hasGraphs() => _graphs != null;

  // "variables" field.
  List<DeviceVariableStruct>? _variables;
  List<DeviceVariableStruct> get variables => _variables ?? const [];
  set variables(List<DeviceVariableStruct>? val) => _variables = val;

  void updateVariables(Function(List<DeviceVariableStruct>) updateFn) {
    updateFn(_variables ??= []);
  }

  bool hasVariables() => _variables != null;

  static BlockComponentStruct fromMap(Map<String, dynamic> data) =>
      BlockComponentStruct(
        info: data['info'] is DropdownStruct
            ? data['info']
            : DropdownStruct.maybeFromMap(data['info']),
        requiredVars: getDataList(data['required_vars']),
        size: data['size'] as String?,
        layout: data['layout'] as String?,
        color: getSchemaColor(data['color']),
        graphs: getDataList(data['graphs']),
        variables: getStructList(
          data['variables'],
          DeviceVariableStruct.fromMap,
        ),
      );

  static BlockComponentStruct? maybeFromMap(dynamic data) => data is Map
      ? BlockComponentStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'info': _info?.toMap(),
        'required_vars': _requiredVars,
        'size': _size,
        'layout': _layout,
        'color': _color,
        'graphs': _graphs,
        'variables': _variables?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'info': serializeParam(
          _info,
          ParamType.DataStruct,
        ),
        'required_vars': serializeParam(
          _requiredVars,
          ParamType.String,
          isList: true,
        ),
        'size': serializeParam(
          _size,
          ParamType.String,
        ),
        'layout': serializeParam(
          _layout,
          ParamType.String,
        ),
        'color': serializeParam(
          _color,
          ParamType.Color,
        ),
        'graphs': serializeParam(
          _graphs,
          ParamType.String,
          isList: true,
        ),
        'variables': serializeParam(
          _variables,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static BlockComponentStruct fromSerializableMap(Map<String, dynamic> data) =>
      BlockComponentStruct(
        info: deserializeStructParam(
          data['info'],
          ParamType.DataStruct,
          false,
          structBuilder: DropdownStruct.fromSerializableMap,
        ),
        requiredVars: deserializeParam<String>(
          data['required_vars'],
          ParamType.String,
          true,
        ),
        size: deserializeParam(
          data['size'],
          ParamType.String,
          false,
        ),
        layout: deserializeParam(
          data['layout'],
          ParamType.String,
          false,
        ),
        color: deserializeParam(
          data['color'],
          ParamType.Color,
          false,
        ),
        graphs: deserializeParam<String>(
          data['graphs'],
          ParamType.String,
          true,
        ),
        variables: deserializeStructParam<DeviceVariableStruct>(
          data['variables'],
          ParamType.DataStruct,
          true,
          structBuilder: DeviceVariableStruct.fromSerializableMap,
        ),
      );

  static BlockComponentStruct fromAlgoliaData(Map<String, dynamic> data) =>
      BlockComponentStruct(
        info: convertAlgoliaParam(
          data['info'],
          ParamType.DataStruct,
          false,
          structBuilder: DropdownStruct.fromAlgoliaData,
        ),
        requiredVars: convertAlgoliaParam<String>(
          data['required_vars'],
          ParamType.String,
          true,
        ),
        size: convertAlgoliaParam(
          data['size'],
          ParamType.String,
          false,
        ),
        layout: convertAlgoliaParam(
          data['layout'],
          ParamType.String,
          false,
        ),
        color: convertAlgoliaParam(
          data['color'],
          ParamType.Color,
          false,
        ),
        graphs: convertAlgoliaParam<String>(
          data['graphs'],
          ParamType.String,
          true,
        ),
        variables: convertAlgoliaParam<DeviceVariableStruct>(
          data['variables'],
          ParamType.DataStruct,
          true,
          structBuilder: DeviceVariableStruct.fromAlgoliaData,
        ),
        firestoreUtilData: const FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'BlockComponentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is BlockComponentStruct &&
        info == other.info &&
        listEquality.equals(requiredVars, other.requiredVars) &&
        size == other.size &&
        layout == other.layout &&
        color == other.color &&
        listEquality.equals(graphs, other.graphs) &&
        listEquality.equals(variables, other.variables);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([info, requiredVars, size, layout, color, graphs, variables]);
}

BlockComponentStruct createBlockComponentStruct({
  DropdownStruct? info,
  String? size,
  String? layout,
  Color? color,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BlockComponentStruct(
      info: info ?? (clearUnsetFields ? DropdownStruct() : null),
      size: size,
      layout: layout,
      color: color,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BlockComponentStruct? updateBlockComponentStruct(
  BlockComponentStruct? blockComponent, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    blockComponent
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBlockComponentStructData(
  Map<String, dynamic> firestoreData,
  BlockComponentStruct? blockComponent,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (blockComponent == null) {
    return;
  }
  if (blockComponent.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && blockComponent.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final blockComponentData =
      getBlockComponentFirestoreData(blockComponent, forFieldValue);
  final nestedData =
      blockComponentData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = blockComponent.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBlockComponentFirestoreData(
  BlockComponentStruct? blockComponent, [
  bool forFieldValue = false,
]) {
  if (blockComponent == null) {
    return {};
  }
  final firestoreData = mapToFirestore(blockComponent.toMap());

  // Handle nested data for "info" field.
  addDropdownStructData(
    firestoreData,
    blockComponent.hasInfo() ? blockComponent.info : null,
    'info',
    forFieldValue,
  );

  // Add any Firestore field values
  blockComponent.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBlockComponentListFirestoreData(
  List<BlockComponentStruct>? blockComponents,
) =>
    blockComponents
        ?.map((e) => getBlockComponentFirestoreData(e, true))
        .toList() ??
    [];
