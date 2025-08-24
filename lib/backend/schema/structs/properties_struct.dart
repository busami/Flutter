// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PropertiesStruct extends FFFirebaseStruct {
  PropertiesStruct({
    String? image,
    String? title,
    String? price,
    String? location,
    String? bad,
    String? bath,
    String? spft,
    String? rating,
    String? time,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _image = image,
        _title = title,
        _price = price,
        _location = location,
        _bad = bad,
        _bath = bath,
        _spft = spft,
        _rating = rating,
        _time = time,
        super(firestoreUtilData);

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  set price(String? val) => _price = val;

  bool hasPrice() => _price != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  set location(String? val) => _location = val;

  bool hasLocation() => _location != null;

  // "bad" field.
  String? _bad;
  String get bad => _bad ?? '';
  set bad(String? val) => _bad = val;

  bool hasBad() => _bad != null;

  // "bath" field.
  String? _bath;
  String get bath => _bath ?? '';
  set bath(String? val) => _bath = val;

  bool hasBath() => _bath != null;

  // "spft" field.
  String? _spft;
  String get spft => _spft ?? '';
  set spft(String? val) => _spft = val;

  bool hasSpft() => _spft != null;

  // "rating" field.
  String? _rating;
  String get rating => _rating ?? '';
  set rating(String? val) => _rating = val;

  bool hasRating() => _rating != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  set time(String? val) => _time = val;

  bool hasTime() => _time != null;

  static PropertiesStruct fromMap(Map<String, dynamic> data) =>
      PropertiesStruct(
        image: data['Image'] as String?,
        title: data['title'] as String?,
        price: data['price'] as String?,
        location: data['location'] as String?,
        bad: data['bad'] as String?,
        bath: data['bath'] as String?,
        spft: data['spft'] as String?,
        rating: data['rating'] as String?,
        time: data['time'] as String?,
      );

  static PropertiesStruct? maybeFromMap(dynamic data) => data is Map
      ? PropertiesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Image': _image,
        'title': _title,
        'price': _price,
        'location': _location,
        'bad': _bad,
        'bath': _bath,
        'spft': _spft,
        'rating': _rating,
        'time': _time,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Image': serializeParam(
          _image,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.String,
        ),
        'location': serializeParam(
          _location,
          ParamType.String,
        ),
        'bad': serializeParam(
          _bad,
          ParamType.String,
        ),
        'bath': serializeParam(
          _bath,
          ParamType.String,
        ),
        'spft': serializeParam(
          _spft,
          ParamType.String,
        ),
        'rating': serializeParam(
          _rating,
          ParamType.String,
        ),
        'time': serializeParam(
          _time,
          ParamType.String,
        ),
      }.withoutNulls;

  static PropertiesStruct fromSerializableMap(Map<String, dynamic> data) =>
      PropertiesStruct(
        image: deserializeParam(
          data['Image'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.String,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.String,
          false,
        ),
        bad: deserializeParam(
          data['bad'],
          ParamType.String,
          false,
        ),
        bath: deserializeParam(
          data['bath'],
          ParamType.String,
          false,
        ),
        spft: deserializeParam(
          data['spft'],
          ParamType.String,
          false,
        ),
        rating: deserializeParam(
          data['rating'],
          ParamType.String,
          false,
        ),
        time: deserializeParam(
          data['time'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PropertiesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PropertiesStruct &&
        image == other.image &&
        title == other.title &&
        price == other.price &&
        location == other.location &&
        bad == other.bad &&
        bath == other.bath &&
        spft == other.spft &&
        rating == other.rating &&
        time == other.time;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([image, title, price, location, bad, bath, spft, rating, time]);
}

PropertiesStruct createPropertiesStruct({
  String? image,
  String? title,
  String? price,
  String? location,
  String? bad,
  String? bath,
  String? spft,
  String? rating,
  String? time,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PropertiesStruct(
      image: image,
      title: title,
      price: price,
      location: location,
      bad: bad,
      bath: bath,
      spft: spft,
      rating: rating,
      time: time,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PropertiesStruct? updatePropertiesStruct(
  PropertiesStruct? properties, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    properties
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPropertiesStructData(
  Map<String, dynamic> firestoreData,
  PropertiesStruct? properties,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (properties == null) {
    return;
  }
  if (properties.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && properties.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final propertiesData = getPropertiesFirestoreData(properties, forFieldValue);
  final nestedData = propertiesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = properties.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPropertiesFirestoreData(
  PropertiesStruct? properties, [
  bool forFieldValue = false,
]) {
  if (properties == null) {
    return {};
  }
  final firestoreData = mapToFirestore(properties.toMap());

  // Add any Firestore field values
  properties.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPropertiesListFirestoreData(
  List<PropertiesStruct>? propertiess,
) =>
    propertiess?.map((e) => getPropertiesFirestoreData(e, true)).toList() ?? [];
