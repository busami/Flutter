// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CitiesStruct extends FFFirebaseStruct {
  CitiesStruct({
    String? image,
    String? title,
    String? subtitle,
    String? views,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _image = image,
        _title = title,
        _subtitle = subtitle,
        _views = views,
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

  // "subtitle" field.
  String? _subtitle;
  String get subtitle => _subtitle ?? '';
  set subtitle(String? val) => _subtitle = val;

  bool hasSubtitle() => _subtitle != null;

  // "views" field.
  String? _views;
  String get views => _views ?? '';
  set views(String? val) => _views = val;

  bool hasViews() => _views != null;

  static CitiesStruct fromMap(Map<String, dynamic> data) => CitiesStruct(
        image: data['image'] as String?,
        title: data['title'] as String?,
        subtitle: data['subtitle'] as String?,
        views: data['views'] as String?,
      );

  static CitiesStruct? maybeFromMap(dynamic data) =>
      data is Map ? CitiesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'title': _title,
        'subtitle': _subtitle,
        'views': _views,
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
        'subtitle': serializeParam(
          _subtitle,
          ParamType.String,
        ),
        'views': serializeParam(
          _views,
          ParamType.String,
        ),
      }.withoutNulls;

  static CitiesStruct fromSerializableMap(Map<String, dynamic> data) =>
      CitiesStruct(
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
        subtitle: deserializeParam(
          data['subtitle'],
          ParamType.String,
          false,
        ),
        views: deserializeParam(
          data['views'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CitiesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CitiesStruct &&
        image == other.image &&
        title == other.title &&
        subtitle == other.subtitle &&
        views == other.views;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([image, title, subtitle, views]);
}

CitiesStruct createCitiesStruct({
  String? image,
  String? title,
  String? subtitle,
  String? views,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CitiesStruct(
      image: image,
      title: title,
      subtitle: subtitle,
      views: views,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CitiesStruct? updateCitiesStruct(
  CitiesStruct? cities, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cities
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCitiesStructData(
  Map<String, dynamic> firestoreData,
  CitiesStruct? cities,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cities == null) {
    return;
  }
  if (cities.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cities.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final citiesData = getCitiesFirestoreData(cities, forFieldValue);
  final nestedData = citiesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cities.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCitiesFirestoreData(
  CitiesStruct? cities, [
  bool forFieldValue = false,
]) {
  if (cities == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cities.toMap());

  // Add any Firestore field values
  cities.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCitiesListFirestoreData(
  List<CitiesStruct>? citiess,
) =>
    citiess?.map((e) => getCitiesFirestoreData(e, true)).toList() ?? [];
