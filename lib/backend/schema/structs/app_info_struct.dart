// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AppInfoStruct extends FFFirebaseStruct {
  AppInfoStruct({
    String? logo,
    String? title,
    String? subTitle,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _logo = logo,
        _title = title,
        _subTitle = subTitle,
        super(firestoreUtilData);

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  set logo(String? val) => _logo = val;

  bool hasLogo() => _logo != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "subTitle" field.
  String? _subTitle;
  String get subTitle => _subTitle ?? '';
  set subTitle(String? val) => _subTitle = val;

  bool hasSubTitle() => _subTitle != null;

  static AppInfoStruct fromMap(Map<String, dynamic> data) => AppInfoStruct(
        logo: data['logo'] as String?,
        title: data['title'] as String?,
        subTitle: data['subTitle'] as String?,
      );

  static AppInfoStruct? maybeFromMap(dynamic data) =>
      data is Map ? AppInfoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'logo': _logo,
        'title': _title,
        'subTitle': _subTitle,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'logo': serializeParam(
          _logo,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'subTitle': serializeParam(
          _subTitle,
          ParamType.String,
        ),
      }.withoutNulls;

  static AppInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      AppInfoStruct(
        logo: deserializeParam(
          data['logo'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        subTitle: deserializeParam(
          data['subTitle'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AppInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AppInfoStruct &&
        logo == other.logo &&
        title == other.title &&
        subTitle == other.subTitle;
  }

  @override
  int get hashCode => const ListEquality().hash([logo, title, subTitle]);
}

AppInfoStruct createAppInfoStruct({
  String? logo,
  String? title,
  String? subTitle,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AppInfoStruct(
      logo: logo,
      title: title,
      subTitle: subTitle,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AppInfoStruct? updateAppInfoStruct(
  AppInfoStruct? appInfo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    appInfo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAppInfoStructData(
  Map<String, dynamic> firestoreData,
  AppInfoStruct? appInfo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (appInfo == null) {
    return;
  }
  if (appInfo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && appInfo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final appInfoData = getAppInfoFirestoreData(appInfo, forFieldValue);
  final nestedData = appInfoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = appInfo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAppInfoFirestoreData(
  AppInfoStruct? appInfo, [
  bool forFieldValue = false,
]) {
  if (appInfo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(appInfo.toMap());

  // Add any Firestore field values
  appInfo.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAppInfoListFirestoreData(
  List<AppInfoStruct>? appInfos,
) =>
    appInfos?.map((e) => getAppInfoFirestoreData(e, true)).toList() ?? [];
