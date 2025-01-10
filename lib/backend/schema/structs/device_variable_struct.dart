// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeviceVariableStruct extends FFFirebaseStruct {
  DeviceVariableStruct({
    DropdownStruct? info,
    bool? isList,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _info = info,
        _isList = isList,
        super(firestoreUtilData);

  // "info" field.
  DropdownStruct? _info;
  DropdownStruct get info => _info ?? DropdownStruct();
  set info(DropdownStruct? val) => _info = val;

  void updateInfo(Function(DropdownStruct) updateFn) {
    updateFn(_info ??= DropdownStruct());
  }

  bool hasInfo() => _info != null;

  // "is_list" field.
  bool? _isList;
  bool get isList => _isList ?? false;
  set isList(bool? val) => _isList = val;

  bool hasIsList() => _isList != null;

  static DeviceVariableStruct fromMap(Map<String, dynamic> data) =>
      DeviceVariableStruct(
        info: data['info'] is DropdownStruct
            ? data['info']
            : DropdownStruct.maybeFromMap(data['info']),
        isList: data['is_list'] as bool?,
      );

  static DeviceVariableStruct? maybeFromMap(dynamic data) => data is Map
      ? DeviceVariableStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'info': _info?.toMap(),
        'is_list': _isList,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'info': serializeParam(
          _info,
          ParamType.DataStruct,
        ),
        'is_list': serializeParam(
          _isList,
          ParamType.bool,
        ),
      }.withoutNulls;

  static DeviceVariableStruct fromSerializableMap(Map<String, dynamic> data) =>
      DeviceVariableStruct(
        info: deserializeStructParam(
          data['info'],
          ParamType.DataStruct,
          false,
          structBuilder: DropdownStruct.fromSerializableMap,
        ),
        isList: deserializeParam(
          data['is_list'],
          ParamType.bool,
          false,
        ),
      );

  static DeviceVariableStruct fromAlgoliaData(Map<String, dynamic> data) =>
      DeviceVariableStruct(
        info: convertAlgoliaParam(
          data['info'],
          ParamType.DataStruct,
          false,
          structBuilder: DropdownStruct.fromAlgoliaData,
        ),
        isList: convertAlgoliaParam(
          data['is_list'],
          ParamType.bool,
          false,
        ),
        firestoreUtilData: const FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'DeviceVariableStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DeviceVariableStruct &&
        info == other.info &&
        isList == other.isList;
  }

  @override
  int get hashCode => const ListEquality().hash([info, isList]);
}

DeviceVariableStruct createDeviceVariableStruct({
  DropdownStruct? info,
  bool? isList,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DeviceVariableStruct(
      info: info ?? (clearUnsetFields ? DropdownStruct() : null),
      isList: isList,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DeviceVariableStruct? updateDeviceVariableStruct(
  DeviceVariableStruct? deviceVariable, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    deviceVariable
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDeviceVariableStructData(
  Map<String, dynamic> firestoreData,
  DeviceVariableStruct? deviceVariable,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (deviceVariable == null) {
    return;
  }
  if (deviceVariable.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && deviceVariable.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final deviceVariableData =
      getDeviceVariableFirestoreData(deviceVariable, forFieldValue);
  final nestedData =
      deviceVariableData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = deviceVariable.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDeviceVariableFirestoreData(
  DeviceVariableStruct? deviceVariable, [
  bool forFieldValue = false,
]) {
  if (deviceVariable == null) {
    return {};
  }
  final firestoreData = mapToFirestore(deviceVariable.toMap());

  // Handle nested data for "info" field.
  addDropdownStructData(
    firestoreData,
    deviceVariable.hasInfo() ? deviceVariable.info : null,
    'info',
    forFieldValue,
  );

  // Add any Firestore field values
  deviceVariable.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDeviceVariableListFirestoreData(
  List<DeviceVariableStruct>? deviceVariables,
) =>
    deviceVariables
        ?.map((e) => getDeviceVariableFirestoreData(e, true))
        .toList() ??
    [];
