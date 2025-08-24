import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "oid" field.
  String? _oid;
  String get oid => _oid ?? '';
  bool hasOid() => _oid != null;

  // "timestampt" field.
  DateTime? _timestampt;
  DateTime? get timestampt => _timestampt;
  bool hasTimestampt() => _timestampt != null;

  // "status" field.
  OrderStatus? _status;
  OrderStatus? get status => _status;
  bool hasStatus() => _status != null;

  // "items" field.
  List<ProductStruct>? _items;
  List<ProductStruct> get items => _items ?? const [];
  bool hasItems() => _items != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _oid = snapshotData['oid'] as String?;
    _timestampt = snapshotData['timestampt'] as DateTime?;
    _status = snapshotData['status'] is OrderStatus
        ? snapshotData['status']
        : deserializeEnum<OrderStatus>(snapshotData['status']);
    _items = getStructList(
      snapshotData['items'],
      ProductStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  DocumentReference? user,
  String? oid,
  DateTime? timestampt,
  OrderStatus? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'oid': oid,
      'timestampt': timestampt,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.user == e2?.user &&
        e1?.oid == e2?.oid &&
        e1?.timestampt == e2?.timestampt &&
        e1?.status == e2?.status &&
        listEquality.equals(e1?.items, e2?.items);
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality()
      .hash([e?.user, e?.oid, e?.timestampt, e?.status, e?.items]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
