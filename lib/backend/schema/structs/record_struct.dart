// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecordStruct extends FFFirebaseStruct {
  RecordStruct({
    DropdownStruct? info,
    HeaderStruct? header,
    DocumentReference? organization,
    DocumentReference? user,
    DocumentReference? device,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _info = info,
        _header = header,
        _organization = organization,
        _user = user,
        _device = device,
        super(firestoreUtilData);

  // "info" field.
  DropdownStruct? _info;
  DropdownStruct get info => _info ?? DropdownStruct();
  set info(DropdownStruct? val) => _info = val;

  void updateInfo(Function(DropdownStruct) updateFn) {
    updateFn(_info ??= DropdownStruct());
  }

  bool hasInfo() => _info != null;

  // "header" field.
  HeaderStruct? _header;
  HeaderStruct get header => _header ?? HeaderStruct();
  set header(HeaderStruct? val) => _header = val;

  void updateHeader(Function(HeaderStruct) updateFn) {
    updateFn(_header ??= HeaderStruct());
  }

  bool hasHeader() => _header != null;

  // "organization" field.
  DocumentReference? _organization;
  DocumentReference? get organization => _organization;
  set organization(DocumentReference? val) => _organization = val;

  bool hasOrganization() => _organization != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  set user(DocumentReference? val) => _user = val;

  bool hasUser() => _user != null;

  // "device" field.
  DocumentReference? _device;
  DocumentReference? get device => _device;
  set device(DocumentReference? val) => _device = val;

  bool hasDevice() => _device != null;

  static RecordStruct fromMap(Map<String, dynamic> data) => RecordStruct(
        info: data['info'] is DropdownStruct
            ? data['info']
            : DropdownStruct.maybeFromMap(data['info']),
        header: data['header'] is HeaderStruct
            ? data['header']
            : HeaderStruct.maybeFromMap(data['header']),
        organization: data['organization'] as DocumentReference?,
        user: data['user'] as DocumentReference?,
        device: data['device'] as DocumentReference?,
      );

  static RecordStruct? maybeFromMap(dynamic data) =>
      data is Map ? RecordStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'info': _info?.toMap(),
        'header': _header?.toMap(),
        'organization': _organization,
        'user': _user,
        'device': _device,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'info': serializeParam(
          _info,
          ParamType.DataStruct,
        ),
        'header': serializeParam(
          _header,
          ParamType.DataStruct,
        ),
        'organization': serializeParam(
          _organization,
          ParamType.DocumentReference,
        ),
        'user': serializeParam(
          _user,
          ParamType.DocumentReference,
        ),
        'device': serializeParam(
          _device,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static RecordStruct fromSerializableMap(Map<String, dynamic> data) =>
      RecordStruct(
        info: deserializeStructParam(
          data['info'],
          ParamType.DataStruct,
          false,
          structBuilder: DropdownStruct.fromSerializableMap,
        ),
        header: deserializeStructParam(
          data['header'],
          ParamType.DataStruct,
          false,
          structBuilder: HeaderStruct.fromSerializableMap,
        ),
        organization: deserializeParam(
          data['organization'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['organizations'],
        ),
        user: deserializeParam(
          data['user'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        device: deserializeParam(
          data['device'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['device_profiles'],
        ),
      );

  static RecordStruct fromAlgoliaData(Map<String, dynamic> data) =>
      RecordStruct(
        info: convertAlgoliaParam(
          data['info'],
          ParamType.DataStruct,
          false,
          structBuilder: DropdownStruct.fromAlgoliaData,
        ),
        header: convertAlgoliaParam(
          data['header'],
          ParamType.DataStruct,
          false,
          structBuilder: HeaderStruct.fromAlgoliaData,
        ),
        organization: convertAlgoliaParam(
          data['organization'],
          ParamType.DocumentReference,
          false,
        ),
        user: convertAlgoliaParam(
          data['user'],
          ParamType.DocumentReference,
          false,
        ),
        device: convertAlgoliaParam(
          data['device'],
          ParamType.DocumentReference,
          false,
        ),
        firestoreUtilData: const FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'RecordStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RecordStruct &&
        info == other.info &&
        header == other.header &&
        organization == other.organization &&
        user == other.user &&
        device == other.device;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([info, header, organization, user, device]);
}

RecordStruct createRecordStruct({
  DropdownStruct? info,
  HeaderStruct? header,
  DocumentReference? organization,
  DocumentReference? user,
  DocumentReference? device,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RecordStruct(
      info: info ?? (clearUnsetFields ? DropdownStruct() : null),
      header: header ?? (clearUnsetFields ? HeaderStruct() : null),
      organization: organization,
      user: user,
      device: device,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RecordStruct? updateRecordStruct(
  RecordStruct? record, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    record
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRecordStructData(
  Map<String, dynamic> firestoreData,
  RecordStruct? record,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (record == null) {
    return;
  }
  if (record.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && record.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final recordData = getRecordFirestoreData(record, forFieldValue);
  final nestedData = recordData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = record.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRecordFirestoreData(
  RecordStruct? record, [
  bool forFieldValue = false,
]) {
  if (record == null) {
    return {};
  }
  final firestoreData = mapToFirestore(record.toMap());

  // Handle nested data for "info" field.
  addDropdownStructData(
    firestoreData,
    record.hasInfo() ? record.info : null,
    'info',
    forFieldValue,
  );

  // Handle nested data for "header" field.
  addHeaderStructData(
    firestoreData,
    record.hasHeader() ? record.header : null,
    'header',
    forFieldValue,
  );

  // Add any Firestore field values
  record.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRecordListFirestoreData(
  List<RecordStruct>? records,
) =>
    records?.map((e) => getRecordFirestoreData(e, true)).toList() ?? [];
