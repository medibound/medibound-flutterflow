import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<DropdownStruct> _Genders = [
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"Male\",\"description\":\"he/him\",\"code\":\"male\"}')),
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"Female\",\"description\":\"she/her\",\"code\":\"female\"}')),
    DropdownStruct.fromSerializableMap(
        jsonDecode('{\"display\":\"Other\",\"code\":\"other\"}'))
  ];
  List<DropdownStruct> get Genders => _Genders;
  set Genders(List<DropdownStruct> value) {
    _Genders = value;
  }

  void addToGenders(DropdownStruct value) {
    Genders.add(value);
  }

  void removeFromGenders(DropdownStruct value) {
    Genders.remove(value);
  }

  void removeAtIndexFromGenders(int index) {
    Genders.removeAt(index);
  }

  void updateGendersAtIndex(
    int index,
    DropdownStruct Function(DropdownStruct) updateFn,
  ) {
    Genders[index] = updateFn(_Genders[index]);
  }

  void insertAtIndexInGenders(int index, DropdownStruct value) {
    Genders.insert(index, value);
  }

  List<DropdownStruct> _OrganizationTypes = [
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"Manufacturer\",\"description\":\"production and assembly of physical goods or devices\",\"code\":\"OT01\"}')),
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"Software Developer\",\"description\":\"creating and maintaining software applications and systems\",\"code\":\"OT02\"}')),
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"Health and Wellness\",\"description\":\"physical and mental well-being, often through products, services, or programs\",\"code\":\"OT03\"}')),
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"Fitness and Sports\",\"description\":\"athletic performance, exercise equipment, sports training, or related services\",\"code\":\"OT04\"}')),
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"Research and Development\",\"description\":\"innovation, experimentation, and the development of new technologies or products\",\"code\":\"OT05\"}')),
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"Security and Privacy\",\"description\":\"protection of data, devices, or physical environments through advanced security measures\",\"code\":\"OT06\"}')),
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"Fashion and Design\",\"description\":\"apparel, accessories, and aesthetic-focused design solutions\",\"code\":\"OT07\"}')),
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"Retail and Distribution\",\"description\":\"sale, delivery, and logistics of products to end-users or other businesses\",\"code\":\"OT08\"}')),
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"Education\",\"description\":\"learning, teaching, and knowledge dissemination through programs, tools, or platforms\",\"code\":\"OT09\"}'))
  ];
  List<DropdownStruct> get OrganizationTypes => _OrganizationTypes;
  set OrganizationTypes(List<DropdownStruct> value) {
    _OrganizationTypes = value;
  }

  void addToOrganizationTypes(DropdownStruct value) {
    OrganizationTypes.add(value);
  }

  void removeFromOrganizationTypes(DropdownStruct value) {
    OrganizationTypes.remove(value);
  }

  void removeAtIndexFromOrganizationTypes(int index) {
    OrganizationTypes.removeAt(index);
  }

  void updateOrganizationTypesAtIndex(
    int index,
    DropdownStruct Function(DropdownStruct) updateFn,
  ) {
    OrganizationTypes[index] = updateFn(_OrganizationTypes[index]);
  }

  void insertAtIndexInOrganizationTypes(int index, DropdownStruct value) {
    OrganizationTypes.insert(index, value);
  }

  List<DropdownStruct> _DeviceTypes = [
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"Health Rings\",\"description\":\"Wearables\",\"code\":\"DT01\"}')),
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"Smart Watches\",\"description\":\"Wearables\",\"code\":\"DT02\"}')),
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"Fitness Bands\",\"description\":\"Wearables\",\"code\":\"DT03\"}')),
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"Smart Glasses\",\"description\":\"Wearables\",\"code\":\"DT04\"}')),
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"Activity Trackers\",\"description\":\"Wearables\",\"code\":\"DT05\"}')),
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"Sleep Monitors\",\"description\":\"Wearables\",\"code\":\"DT06\"}')),
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"Heart Rate Monitors\",\"description\":\"Wearables\",\"code\":\"DT07\"}')),
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"Smart Clothing\",\"description\":\"Wearables\",\"code\":\"DT08\"}')),
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"GPS Trackers\",\"description\":\"Wearables\",\"code\":\"DT09\"}')),
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"UV Sensors\",\"description\":\"Wearables\",\"code\":\"DT10\"}')),
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"Hello World\",\"description\":\"Hello World\",\"code\":\"Hello World\"}'))
  ];
  List<DropdownStruct> get DeviceTypes => _DeviceTypes;
  set DeviceTypes(List<DropdownStruct> value) {
    _DeviceTypes = value;
  }

  void addToDeviceTypes(DropdownStruct value) {
    DeviceTypes.add(value);
  }

  void removeFromDeviceTypes(DropdownStruct value) {
    DeviceTypes.remove(value);
  }

  void removeAtIndexFromDeviceTypes(int index) {
    DeviceTypes.removeAt(index);
  }

  void updateDeviceTypesAtIndex(
    int index,
    DropdownStruct Function(DropdownStruct) updateFn,
  ) {
    DeviceTypes[index] = updateFn(_DeviceTypes[index]);
  }

  void insertAtIndexInDeviceTypes(int index, DropdownStruct value) {
    DeviceTypes.insert(index, value);
  }

  List<DropdownStruct> _UserRoles = [
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"Owner\",\"description\":\"\",\"code\":\"OWNER\"}')),
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"Admin\",\"description\":\"\",\"code\":\"ADMIN\"}')),
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"Member\",\"description\":\"\",\"code\":\"MEMBER\"}'))
  ];
  List<DropdownStruct> get UserRoles => _UserRoles;
  set UserRoles(List<DropdownStruct> value) {
    _UserRoles = value;
  }

  void addToUserRoles(DropdownStruct value) {
    UserRoles.add(value);
  }

  void removeFromUserRoles(DropdownStruct value) {
    UserRoles.remove(value);
  }

  void removeAtIndexFromUserRoles(int index) {
    UserRoles.removeAt(index);
  }

  void updateUserRolesAtIndex(
    int index,
    DropdownStruct Function(DropdownStruct) updateFn,
  ) {
    UserRoles[index] = updateFn(_UserRoles[index]);
  }

  void insertAtIndexInUserRoles(int index, DropdownStruct value) {
    UserRoles.insert(index, value);
  }

  List<DropdownStruct> _DeviceTransferTypes = [
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"Live Bluetooth Low Energy\",\"description\":\"Real-time, continuous data streaming for dynamic health monitoring.\",\"code\":\"LBLE\"}')),
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"Static Bluetooth Low Energy\",\"description\":\"One-time data transfer for intermittent diagnostics and results.\",\"code\":\"SBLE\"}')),
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"Static NFC\",\"description\":\"Quick, contactless data exchange for static health information.\",\"code\":\"SNFC\"}'))
  ];
  List<DropdownStruct> get DeviceTransferTypes => _DeviceTransferTypes;
  set DeviceTransferTypes(List<DropdownStruct> value) {
    _DeviceTransferTypes = value;
  }

  void addToDeviceTransferTypes(DropdownStruct value) {
    DeviceTransferTypes.add(value);
  }

  void removeFromDeviceTransferTypes(DropdownStruct value) {
    DeviceTransferTypes.remove(value);
  }

  void removeAtIndexFromDeviceTransferTypes(int index) {
    DeviceTransferTypes.removeAt(index);
  }

  void updateDeviceTransferTypesAtIndex(
    int index,
    DropdownStruct Function(DropdownStruct) updateFn,
  ) {
    DeviceTransferTypes[index] = updateFn(_DeviceTransferTypes[index]);
  }

  void insertAtIndexInDeviceTransferTypes(int index, DropdownStruct value) {
    DeviceTransferTypes.insert(index, value);
  }

  List<DropdownStruct> _DeviceProfileModes = [
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"Production\",\"description\":\"Live environment for real-world use and operations.\",\"code\":\"PROD\"}')),
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"Development\",\"description\":\"Testing environment for development and debugging.\",\"code\":\"DEVM\"}'))
  ];
  List<DropdownStruct> get DeviceProfileModes => _DeviceProfileModes;
  set DeviceProfileModes(List<DropdownStruct> value) {
    _DeviceProfileModes = value;
  }

  void addToDeviceProfileModes(DropdownStruct value) {
    DeviceProfileModes.add(value);
  }

  void removeFromDeviceProfileModes(DropdownStruct value) {
    DeviceProfileModes.remove(value);
  }

  void removeAtIndexFromDeviceProfileModes(int index) {
    DeviceProfileModes.removeAt(index);
  }

  void updateDeviceProfileModesAtIndex(
    int index,
    DropdownStruct Function(DropdownStruct) updateFn,
  ) {
    DeviceProfileModes[index] = updateFn(_DeviceProfileModes[index]);
  }

  void insertAtIndexInDeviceProfileModes(int index, DropdownStruct value) {
    DeviceProfileModes.insert(index, value);
  }

  List<DropdownStruct> _DeviceVariableTypes = [
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"String\",\"description\":\"A series of characters\",\"code\":\"STRING\"}')),
    DropdownStruct.fromSerializableMap(jsonDecode(
        '{\"display\":\"Decimal\",\"description\":\"A series of numbers\",\"code\":\"DECIMAL\"}'))
  ];
  List<DropdownStruct> get DeviceVariableTypes => _DeviceVariableTypes;
  set DeviceVariableTypes(List<DropdownStruct> value) {
    _DeviceVariableTypes = value;
  }

  void addToDeviceVariableTypes(DropdownStruct value) {
    DeviceVariableTypes.add(value);
  }

  void removeFromDeviceVariableTypes(DropdownStruct value) {
    DeviceVariableTypes.remove(value);
  }

  void removeAtIndexFromDeviceVariableTypes(int index) {
    DeviceVariableTypes.removeAt(index);
  }

  void updateDeviceVariableTypesAtIndex(
    int index,
    DropdownStruct Function(DropdownStruct) updateFn,
  ) {
    DeviceVariableTypes[index] = updateFn(_DeviceVariableTypes[index]);
  }

  void insertAtIndexInDeviceVariableTypes(int index, DropdownStruct value) {
    DeviceVariableTypes.insert(index, value);
  }

  List<DropdownStruct> _EmptyDropdown = [];
  List<DropdownStruct> get EmptyDropdown => _EmptyDropdown;
  set EmptyDropdown(List<DropdownStruct> value) {
    _EmptyDropdown = value;
  }

  void addToEmptyDropdown(DropdownStruct value) {
    EmptyDropdown.add(value);
  }

  void removeFromEmptyDropdown(DropdownStruct value) {
    EmptyDropdown.remove(value);
  }

  void removeAtIndexFromEmptyDropdown(int index) {
    EmptyDropdown.removeAt(index);
  }

  void updateEmptyDropdownAtIndex(
    int index,
    DropdownStruct Function(DropdownStruct) updateFn,
  ) {
    EmptyDropdown[index] = updateFn(_EmptyDropdown[index]);
  }

  void insertAtIndexInEmptyDropdown(int index, DropdownStruct value) {
    EmptyDropdown.insert(index, value);
  }

  List<DropdownStruct> _DeviceVariablePresetIntegrations = [];
  List<DropdownStruct> get DeviceVariablePresetIntegrations =>
      _DeviceVariablePresetIntegrations;
  set DeviceVariablePresetIntegrations(List<DropdownStruct> value) {
    _DeviceVariablePresetIntegrations = value;
  }

  void addToDeviceVariablePresetIntegrations(DropdownStruct value) {
    DeviceVariablePresetIntegrations.add(value);
  }

  void removeFromDeviceVariablePresetIntegrations(DropdownStruct value) {
    DeviceVariablePresetIntegrations.remove(value);
  }

  void removeAtIndexFromDeviceVariablePresetIntegrations(int index) {
    DeviceVariablePresetIntegrations.removeAt(index);
  }

  void updateDeviceVariablePresetIntegrationsAtIndex(
    int index,
    DropdownStruct Function(DropdownStruct) updateFn,
  ) {
    DeviceVariablePresetIntegrations[index] =
        updateFn(_DeviceVariablePresetIntegrations[index]);
  }

  void insertAtIndexInDeviceVariablePresetIntegrations(
      int index, DropdownStruct value) {
    DeviceVariablePresetIntegrations.insert(index, value);
  }
}
