// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RuleStruct extends FFFirebaseStruct {
  RuleStruct({
    DropdownStruct? info,
    List<ConstraintStruct>? constraints,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _info = info,
        _constraints = constraints,
        super(firestoreUtilData);

  // "info" field.
  DropdownStruct? _info;
  DropdownStruct get info => _info ?? DropdownStruct();
  set info(DropdownStruct? val) => _info = val;

  void updateInfo(Function(DropdownStruct) updateFn) {
    updateFn(_info ??= DropdownStruct());
  }

  bool hasInfo() => _info != null;

  // "constraints" field.
  List<ConstraintStruct>? _constraints;
  List<ConstraintStruct> get constraints => _constraints ?? const [];
  set constraints(List<ConstraintStruct>? val) => _constraints = val;

  void updateConstraints(Function(List<ConstraintStruct>) updateFn) {
    updateFn(_constraints ??= []);
  }

  bool hasConstraints() => _constraints != null;

  static RuleStruct fromMap(Map<String, dynamic> data) => RuleStruct(
        info: data['info'] is DropdownStruct
            ? data['info']
            : DropdownStruct.maybeFromMap(data['info']),
        constraints: getStructList(
          data['constraints'],
          ConstraintStruct.fromMap,
        ),
      );

  static RuleStruct? maybeFromMap(dynamic data) =>
      data is Map ? RuleStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'info': _info?.toMap(),
        'constraints': _constraints?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'info': serializeParam(
          _info,
          ParamType.DataStruct,
        ),
        'constraints': serializeParam(
          _constraints,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static RuleStruct fromSerializableMap(Map<String, dynamic> data) =>
      RuleStruct(
        info: deserializeStructParam(
          data['info'],
          ParamType.DataStruct,
          false,
          structBuilder: DropdownStruct.fromSerializableMap,
        ),
        constraints: deserializeStructParam<ConstraintStruct>(
          data['constraints'],
          ParamType.DataStruct,
          true,
          structBuilder: ConstraintStruct.fromSerializableMap,
        ),
      );

  static RuleStruct fromAlgoliaData(Map<String, dynamic> data) => RuleStruct(
        info: convertAlgoliaParam(
          data['info'],
          ParamType.DataStruct,
          false,
          structBuilder: DropdownStruct.fromAlgoliaData,
        ),
        constraints: convertAlgoliaParam<ConstraintStruct>(
          data['constraints'],
          ParamType.DataStruct,
          true,
          structBuilder: ConstraintStruct.fromAlgoliaData,
        ),
        firestoreUtilData: const FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'RuleStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RuleStruct &&
        info == other.info &&
        listEquality.equals(constraints, other.constraints);
  }

  @override
  int get hashCode => const ListEquality().hash([info, constraints]);
}

RuleStruct createRuleStruct({
  DropdownStruct? info,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RuleStruct(
      info: info ?? (clearUnsetFields ? DropdownStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RuleStruct? updateRuleStruct(
  RuleStruct? rule, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    rule
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRuleStructData(
  Map<String, dynamic> firestoreData,
  RuleStruct? rule,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (rule == null) {
    return;
  }
  if (rule.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && rule.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final ruleData = getRuleFirestoreData(rule, forFieldValue);
  final nestedData = ruleData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = rule.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRuleFirestoreData(
  RuleStruct? rule, [
  bool forFieldValue = false,
]) {
  if (rule == null) {
    return {};
  }
  final firestoreData = mapToFirestore(rule.toMap());

  // Handle nested data for "info" field.
  addDropdownStructData(
    firestoreData,
    rule.hasInfo() ? rule.info : null,
    'info',
    forFieldValue,
  );

  // Add any Firestore field values
  rule.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRuleListFirestoreData(
  List<RuleStruct>? rules,
) =>
    rules?.map((e) => getRuleFirestoreData(e, true)).toList() ?? [];
