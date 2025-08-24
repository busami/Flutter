import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PassbookRecord extends FirestoreRecord {
  PassbookRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _type = snapshotData['type'] as String?;
    _amount = castToType<double>(snapshotData['amount']);
    _timestamp = snapshotData['timestamp'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('passbook')
          : FirebaseFirestore.instance.collectionGroup('passbook');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('passbook').doc(id);

  static Stream<PassbookRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PassbookRecord.fromSnapshot(s));

  static Future<PassbookRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PassbookRecord.fromSnapshot(s));

  static PassbookRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PassbookRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PassbookRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PassbookRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PassbookRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PassbookRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPassbookRecordData({
  String? type,
  double? amount,
  DateTime? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
      'amount': amount,
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class PassbookRecordDocumentEquality implements Equality<PassbookRecord> {
  const PassbookRecordDocumentEquality();

  @override
  bool equals(PassbookRecord? e1, PassbookRecord? e2) {
    return e1?.type == e2?.type &&
        e1?.amount == e2?.amount &&
        e1?.timestamp == e2?.timestamp;
  }

  @override
  int hash(PassbookRecord? e) =>
      const ListEquality().hash([e?.type, e?.amount, e?.timestamp]);

  @override
  bool isValidKey(Object? o) => o is PassbookRecord;
}
