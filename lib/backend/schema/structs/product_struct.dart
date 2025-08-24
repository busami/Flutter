// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ProductStruct extends FFFirebaseStruct {
  ProductStruct({
    String? title,
    String? category,
    String? cover,
    double? salePrice,
    double? regularPrice,
    double? rating,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _category = category,
        _cover = cover,
        _salePrice = salePrice,
        _regularPrice = regularPrice,
        _rating = rating,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "cover" field.
  String? _cover;
  String get cover => _cover ?? '';
  set cover(String? val) => _cover = val;

  bool hasCover() => _cover != null;

  // "salePrice" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  set salePrice(double? val) => _salePrice = val;

  void incrementSalePrice(double amount) => salePrice = salePrice + amount;

  bool hasSalePrice() => _salePrice != null;

  // "regularPrice" field.
  double? _regularPrice;
  double get regularPrice => _regularPrice ?? 0.0;
  set regularPrice(double? val) => _regularPrice = val;

  void incrementRegularPrice(double amount) =>
      regularPrice = regularPrice + amount;

  bool hasRegularPrice() => _regularPrice != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  set rating(double? val) => _rating = val;

  void incrementRating(double amount) => rating = rating + amount;

  bool hasRating() => _rating != null;

  static ProductStruct fromMap(Map<String, dynamic> data) => ProductStruct(
        title: data['title'] as String?,
        category: data['category'] as String?,
        cover: data['cover'] as String?,
        salePrice: castToType<double>(data['salePrice']),
        regularPrice: castToType<double>(data['regularPrice']),
        rating: castToType<double>(data['rating']),
      );

  static ProductStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProductStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'category': _category,
        'cover': _cover,
        'salePrice': _salePrice,
        'regularPrice': _regularPrice,
        'rating': _rating,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'cover': serializeParam(
          _cover,
          ParamType.String,
        ),
        'salePrice': serializeParam(
          _salePrice,
          ParamType.double,
        ),
        'regularPrice': serializeParam(
          _regularPrice,
          ParamType.double,
        ),
        'rating': serializeParam(
          _rating,
          ParamType.double,
        ),
      }.withoutNulls;

  static ProductStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        cover: deserializeParam(
          data['cover'],
          ParamType.String,
          false,
        ),
        salePrice: deserializeParam(
          data['salePrice'],
          ParamType.double,
          false,
        ),
        regularPrice: deserializeParam(
          data['regularPrice'],
          ParamType.double,
          false,
        ),
        rating: deserializeParam(
          data['rating'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductStruct &&
        title == other.title &&
        category == other.category &&
        cover == other.cover &&
        salePrice == other.salePrice &&
        regularPrice == other.regularPrice &&
        rating == other.rating;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([title, category, cover, salePrice, regularPrice, rating]);
}

ProductStruct createProductStruct({
  String? title,
  String? category,
  String? cover,
  double? salePrice,
  double? regularPrice,
  double? rating,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductStruct(
      title: title,
      category: category,
      cover: cover,
      salePrice: salePrice,
      regularPrice: regularPrice,
      rating: rating,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductStruct? updateProductStruct(
  ProductStruct? product, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    product
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductStructData(
  Map<String, dynamic> firestoreData,
  ProductStruct? product,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (product == null) {
    return;
  }
  if (product.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && product.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productData = getProductFirestoreData(product, forFieldValue);
  final nestedData = productData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = product.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductFirestoreData(
  ProductStruct? product, [
  bool forFieldValue = false,
]) {
  if (product == null) {
    return {};
  }
  final firestoreData = mapToFirestore(product.toMap());

  // Add any Firestore field values
  product.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductListFirestoreData(
  List<ProductStruct>? products,
) =>
    products?.map((e) => getProductFirestoreData(e, true)).toList() ?? [];
