// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class LanguageStruct extends FFFirebaseStruct {
  LanguageStruct({
    String? title,
    String? langCode,
    String? countryFlag,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _langCode = langCode,
        _countryFlag = countryFlag,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "lang_code" field.
  String? _langCode;
  String get langCode => _langCode ?? '';
  set langCode(String? val) => _langCode = val;

  bool hasLangCode() => _langCode != null;

  // "country_flag" field.
  String? _countryFlag;
  String get countryFlag => _countryFlag ?? '';
  set countryFlag(String? val) => _countryFlag = val;

  bool hasCountryFlag() => _countryFlag != null;

  static LanguageStruct fromMap(Map<String, dynamic> data) => LanguageStruct(
        title: data['title'] as String?,
        langCode: data['lang_code'] as String?,
        countryFlag: data['country_flag'] as String?,
      );

  static LanguageStruct? maybeFromMap(dynamic data) =>
      data is Map ? LanguageStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'lang_code': _langCode,
        'country_flag': _countryFlag,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'lang_code': serializeParam(
          _langCode,
          ParamType.String,
        ),
        'country_flag': serializeParam(
          _countryFlag,
          ParamType.String,
        ),
      }.withoutNulls;

  static LanguageStruct fromSerializableMap(Map<String, dynamic> data) =>
      LanguageStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        langCode: deserializeParam(
          data['lang_code'],
          ParamType.String,
          false,
        ),
        countryFlag: deserializeParam(
          data['country_flag'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LanguageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LanguageStruct &&
        title == other.title &&
        langCode == other.langCode &&
        countryFlag == other.countryFlag;
  }

  @override
  int get hashCode => const ListEquality().hash([title, langCode, countryFlag]);
}

LanguageStruct createLanguageStruct({
  String? title,
  String? langCode,
  String? countryFlag,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LanguageStruct(
      title: title,
      langCode: langCode,
      countryFlag: countryFlag,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LanguageStruct? updateLanguageStruct(
  LanguageStruct? language, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    language
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLanguageStructData(
  Map<String, dynamic> firestoreData,
  LanguageStruct? language,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (language == null) {
    return;
  }
  if (language.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && language.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final languageData = getLanguageFirestoreData(language, forFieldValue);
  final nestedData = languageData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = language.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLanguageFirestoreData(
  LanguageStruct? language, [
  bool forFieldValue = false,
]) {
  if (language == null) {
    return {};
  }
  final firestoreData = mapToFirestore(language.toMap());

  // Add any Firestore field values
  language.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLanguageListFirestoreData(
  List<LanguageStruct>? languages,
) =>
    languages?.map((e) => getLanguageFirestoreData(e, true)).toList() ?? [];
