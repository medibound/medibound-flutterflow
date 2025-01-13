// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HeaderStruct extends FFFirebaseStruct {
  HeaderStruct({
    DropdownStruct? info,
    List<BlockComponentStruct>? components,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _info = info,
        _components = components,
        super(firestoreUtilData);

  // "info" field.
  DropdownStruct? _info;
  DropdownStruct get info => _info ?? DropdownStruct();
  set info(DropdownStruct? val) => _info = val;

  void updateInfo(Function(DropdownStruct) updateFn) {
    updateFn(_info ??= DropdownStruct());
  }

  bool hasInfo() => _info != null;

  // "components" field.
  List<BlockComponentStruct>? _components;
  List<BlockComponentStruct> get components => _components ?? const [];
  set components(List<BlockComponentStruct>? val) => _components = val;

  void updateComponents(Function(List<BlockComponentStruct>) updateFn) {
    updateFn(_components ??= []);
  }

  bool hasComponents() => _components != null;

  static HeaderStruct fromMap(Map<String, dynamic> data) => HeaderStruct(
        info: data['info'] is DropdownStruct
            ? data['info']
            : DropdownStruct.maybeFromMap(data['info']),
        components: getStructList(
          data['components'],
          BlockComponentStruct.fromMap,
        ),
      );

  static HeaderStruct? maybeFromMap(dynamic data) =>
      data is Map ? HeaderStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'info': _info?.toMap(),
        'components': _components?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'info': serializeParam(
          _info,
          ParamType.DataStruct,
        ),
        'components': serializeParam(
          _components,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static HeaderStruct fromSerializableMap(Map<String, dynamic> data) =>
      HeaderStruct(
        info: deserializeStructParam(
          data['info'],
          ParamType.DataStruct,
          false,
          structBuilder: DropdownStruct.fromSerializableMap,
        ),
        components: deserializeStructParam<BlockComponentStruct>(
          data['components'],
          ParamType.DataStruct,
          true,
          structBuilder: BlockComponentStruct.fromSerializableMap,
        ),
      );

  static HeaderStruct fromAlgoliaData(Map<String, dynamic> data) =>
      HeaderStruct(
        info: convertAlgoliaParam(
          data['info'],
          ParamType.DataStruct,
          false,
          structBuilder: DropdownStruct.fromAlgoliaData,
        ),
        components: convertAlgoliaParam<BlockComponentStruct>(
          data['components'],
          ParamType.DataStruct,
          true,
          structBuilder: BlockComponentStruct.fromAlgoliaData,
        ),
        firestoreUtilData: const FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'HeaderStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is HeaderStruct &&
        info == other.info &&
        listEquality.equals(components, other.components);
  }

  @override
  int get hashCode => const ListEquality().hash([info, components]);
}

HeaderStruct createHeaderStruct({
  DropdownStruct? info,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    HeaderStruct(
      info: info ?? (clearUnsetFields ? DropdownStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

HeaderStruct? updateHeaderStruct(
  HeaderStruct? header, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    header
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addHeaderStructData(
  Map<String, dynamic> firestoreData,
  HeaderStruct? header,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (header == null) {
    return;
  }
  if (header.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && header.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final headerData = getHeaderFirestoreData(header, forFieldValue);
  final nestedData = headerData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = header.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getHeaderFirestoreData(
  HeaderStruct? header, [
  bool forFieldValue = false,
]) {
  if (header == null) {
    return {};
  }
  final firestoreData = mapToFirestore(header.toMap());

  // Handle nested data for "info" field.
  addDropdownStructData(
    firestoreData,
    header.hasInfo() ? header.info : null,
    'info',
    forFieldValue,
  );

  // Add any Firestore field values
  header.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getHeaderListFirestoreData(
  List<HeaderStruct>? headers,
) =>
    headers?.map((e) => getHeaderFirestoreData(e, true)).toList() ?? [];
