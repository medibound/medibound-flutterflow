import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

List<RoledUserStruct> allRoledUsers(DocumentReference doc) {
  // Returns a list of3 Roled Users (all with the roles of MEMBER,ADMIN, OWNER) that all use the same user document reference
  return [
    createRoledUserStruct(user: doc, role: OrganizationRoleCode.MEMBER),
    createRoledUserStruct(user: doc, role: OrganizationRoleCode.ADMIN),
    createRoledUserStruct(user: doc, role: OrganizationRoleCode.OWNER),
  ];
}

List<DropdownStruct> arraysToDropdown(
  List<String> displays,
  List<String> descriptions,
  List<String> codes,
) {
  // take three arrays of strings and combine them into a list of dropdown datatypes
  List<DropdownStruct> dropdownList = [];

  for (int i = 0; i < displays.length; i++) {
    DropdownStruct dropdown = DropdownStruct(
      display: toTitleCase(displays[i]),
      description: descriptions[i],
      code: codes[i],
    );
    dropdownList.add(dropdown);
  }

  return dropdownList;
}

String? toTitleCase(String input) {
  // convert a string to title case
  if (input.isEmpty) {
    return input;
  }

  List<String> words = input.split(' ');
  List<String> titleCaseWords = [];

  for (String word in words) {
    String firstLetter = word.substring(0, 1).toUpperCase();
    String restOfWord = word.substring(1).toLowerCase();
    titleCaseWords.add('$firstLetter$restOfWord');
  }

  return titleCaseWords.join(' ');
}
