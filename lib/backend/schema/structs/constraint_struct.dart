// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConstraintStruct extends FFFirebaseStruct {
  ConstraintStruct({
    String? refCode,
    List<String>? worksWith,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _refCode = refCode,
        _worksWith = worksWith,
        super(firestoreUtilData);

  // "ref_code" field.
  String? _refCode;
  String get refCode => _refCode ?? '';
  set refCode(String? val) => _refCode = val;

  bool hasRefCode() => _refCode != null;

  // "works_with" field.
  List<String>? _worksWith;
  List<String> get worksWith => _worksWith ?? const [];
  set worksWith(List<String>? val) => _worksWith = val;

  void updateWorksWith(Function(List<String>) updateFn) {
    updateFn(_worksWith ??= []);
  }

  bool hasWorksWith() => _worksWith != null;

  static ConstraintStruct fromMap(Map<String, dynamic> data) =>
      ConstraintStruct(
        refCode: data['ref_code'] as String?,
        worksWith: getDataList(data['works_with']),
      );

  static ConstraintStruct? maybeFromMap(dynamic data) => data is Map
      ? ConstraintStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ref_code': _refCode,
        'works_with': _worksWith,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ref_code': serializeParam(
          _refCode,
          ParamType.String,
        ),
        'works_with': serializeParam(
          _worksWith,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static ConstraintStruct fromSerializableMap(Map<String, dynamic> data) =>
      ConstraintStruct(
        refCode: deserializeParam(
          data['ref_code'],
          ParamType.String,
          false,
        ),
        worksWith: deserializeParam<String>(
          data['works_with'],
          ParamType.String,
          true,
        ),
      );

  static ConstraintStruct fromAlgoliaData(Map<String, dynamic> data) =>
      ConstraintStruct(
        refCode: convertAlgoliaParam(
          data['ref_code'],
          ParamType.String,
          false,
        ),
        worksWith: convertAlgoliaParam<String>(
          data['works_with'],
          ParamType.String,
          true,
        ),
        firestoreUtilData: const FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'ConstraintStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ConstraintStruct &&
        refCode == other.refCode &&
        listEquality.equals(worksWith, other.worksWith);
  }

  @override
  int get hashCode => const ListEquality().hash([refCode, worksWith]);
}

ConstraintStruct createConstraintStruct({
  String? refCode,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ConstraintStruct(
      refCode: refCode,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ConstraintStruct? updateConstraintStruct(
  ConstraintStruct? constraint, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    constraint
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addConstraintStructData(
  Map<String, dynamic> firestoreData,
  ConstraintStruct? constraint,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (constraint == null) {
    return;
  }
  if (constraint.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && constraint.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final constraintData = getConstraintFirestoreData(constraint, forFieldValue);
  final nestedData = constraintData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = constraint.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getConstraintFirestoreData(
  ConstraintStruct? constraint, [
  bool forFieldValue = false,
]) {
  if (constraint == null) {
    return {};
  }
  final firestoreData = mapToFirestore(constraint.toMap());

  // Add any Firestore field values
  constraint.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getConstraintListFirestoreData(
  List<ConstraintStruct>? constraints,
) =>
    constraints?.map((e) => getConstraintFirestoreData(e, true)).toList() ?? [];
