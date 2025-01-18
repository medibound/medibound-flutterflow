import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeviceProfilesRecord extends FirestoreRecord {
  DeviceProfilesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "organization" field.
  DocumentReference? _organization;
  DocumentReference? get organization => _organization;
  bool hasOrganization() => _organization != null;

  // "mode" field.
  DeviceModeCode? _mode;
  DeviceModeCode? get mode => _mode;
  bool hasMode() => _mode != null;

  // "manual_path" field.
  String? _manualPath;
  String get manualPath => _manualPath ?? '';
  bool hasManualPath() => _manualPath != null;

  // "model_number" field.
  String? _modelNumber;
  String get modelNumber => _modelNumber ?? '';
  bool hasModelNumber() => _modelNumber != null;

  // "unique_device_identifier" field.
  String? _uniqueDeviceIdentifier;
  String get uniqueDeviceIdentifier => _uniqueDeviceIdentifier ?? '';
  bool hasUniqueDeviceIdentifier() => _uniqueDeviceIdentifier != null;

  // "variables" field.
  List<DeviceVariableStruct>? _variables;
  List<DeviceVariableStruct> get variables => _variables ?? const [];
  bool hasVariables() => _variables != null;

  // "transfer_type" field.
  String? _transferType;
  String get transferType => _transferType ?? '';
  bool hasTransferType() => _transferType != null;

  // "info" field.
  DropdownStruct? _info;
  DropdownStruct get info => _info ?? DropdownStruct();
  bool hasInfo() => _info != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  void _initializeFields() {
    _organization = snapshotData['organization'] as DocumentReference?;
    _mode = snapshotData['mode'] is DeviceModeCode
        ? snapshotData['mode']
        : deserializeEnum<DeviceModeCode>(snapshotData['mode']);
    _manualPath = snapshotData['manual_path'] as String?;
    _modelNumber = snapshotData['model_number'] as String?;
    _uniqueDeviceIdentifier =
        snapshotData['unique_device_identifier'] as String?;
    _variables = getStructList(
      snapshotData['variables'],
      DeviceVariableStruct.fromMap,
    );
    _transferType = snapshotData['transfer_type'] as String?;
    _info = snapshotData['info'] is DropdownStruct
        ? snapshotData['info']
        : DropdownStruct.maybeFromMap(snapshotData['info']);
    _type = snapshotData['type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('device_profiles');

  static Stream<DeviceProfilesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DeviceProfilesRecord.fromSnapshot(s));

  static Future<DeviceProfilesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DeviceProfilesRecord.fromSnapshot(s));

  static DeviceProfilesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DeviceProfilesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DeviceProfilesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DeviceProfilesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DeviceProfilesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DeviceProfilesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDeviceProfilesRecordData({
  DocumentReference? organization,
  DeviceModeCode? mode,
  String? manualPath,
  String? modelNumber,
  String? uniqueDeviceIdentifier,
  String? transferType,
  DropdownStruct? info,
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'organization': organization,
      'mode': mode,
      'manual_path': manualPath,
      'model_number': modelNumber,
      'unique_device_identifier': uniqueDeviceIdentifier,
      'transfer_type': transferType,
      'info': DropdownStruct().toMap(),
      'type': type,
    }.withoutNulls,
  );

  // Handle nested data for "info" field.
  addDropdownStructData(firestoreData, info, 'info');

  return firestoreData;
}

class DeviceProfilesRecordDocumentEquality
    implements Equality<DeviceProfilesRecord> {
  const DeviceProfilesRecordDocumentEquality();

  @override
  bool equals(DeviceProfilesRecord? e1, DeviceProfilesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.organization == e2?.organization &&
        e1?.mode == e2?.mode &&
        e1?.manualPath == e2?.manualPath &&
        e1?.modelNumber == e2?.modelNumber &&
        e1?.uniqueDeviceIdentifier == e2?.uniqueDeviceIdentifier &&
        listEquality.equals(e1?.variables, e2?.variables) &&
        e1?.transferType == e2?.transferType &&
        e1?.info == e2?.info &&
        e1?.type == e2?.type;
  }

  @override
  int hash(DeviceProfilesRecord? e) => const ListEquality().hash([
        e?.organization,
        e?.mode,
        e?.manualPath,
        e?.modelNumber,
        e?.uniqueDeviceIdentifier,
        e?.variables,
        e?.transferType,
        e?.info,
        e?.type
      ]);

  @override
  bool isValidKey(Object? o) => o is DeviceProfilesRecord;
}
