// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CompaniesStruct extends FFFirebaseStruct {
  CompaniesStruct({
    String? image,
    String? title,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _image = image,
        _title = title,
        super(firestoreUtilData);

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  static CompaniesStruct fromMap(Map<String, dynamic> data) => CompaniesStruct(
        image: data['image'] as String?,
        title: data['title'] as String?,
      );

  static CompaniesStruct? maybeFromMap(dynamic data) => data is Map
      ? CompaniesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'title': _title,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
      }.withoutNulls;

  static CompaniesStruct fromSerializableMap(Map<String, dynamic> data) =>
      CompaniesStruct(
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CompaniesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CompaniesStruct &&
        image == other.image &&
        title == other.title;
  }

  @override
  int get hashCode => const ListEquality().hash([image, title]);
}

CompaniesStruct createCompaniesStruct({
  String? image,
  String? title,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CompaniesStruct(
      image: image,
      title: title,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CompaniesStruct? updateCompaniesStruct(
  CompaniesStruct? companies, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    companies
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCompaniesStructData(
  Map<String, dynamic> firestoreData,
  CompaniesStruct? companies,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (companies == null) {
    return;
  }
  if (companies.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && companies.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final companiesData = getCompaniesFirestoreData(companies, forFieldValue);
  final nestedData = companiesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = companies.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCompaniesFirestoreData(
  CompaniesStruct? companies, [
  bool forFieldValue = false,
]) {
  if (companies == null) {
    return {};
  }
  final firestoreData = mapToFirestore(companies.toMap());

  // Add any Firestore field values
  companies.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCompaniesListFirestoreData(
  List<CompaniesStruct>? companiess,
) =>
    companiess?.map((e) => getCompaniesFirestoreData(e, true)).toList() ?? [];
