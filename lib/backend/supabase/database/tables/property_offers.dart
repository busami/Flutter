import '../database.dart';

class PropertyOffersTable extends SupabaseTable<PropertyOffersRow> {
  @override
  String get tableName => 'property_offers';

  @override
  PropertyOffersRow createRow(Map<String, dynamic> data) =>
      PropertyOffersRow(data);
}

class PropertyOffersRow extends SupabaseDataRow {
  PropertyOffersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PropertyOffersTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get propertyId => getField<String>('property_id');
  set propertyId(String? value) => setField<String>('property_id', value);

  String? get buyerClientId => getField<String>('buyer_client_id');
  set buyerClientId(String? value) =>
      setField<String>('buyer_client_id', value);

  int? get offerAmount => getField<int>('offer_amount');
  set offerAmount(int? value) => setField<int>('offer_amount', value);

  DateTime? get offerDate => getField<DateTime>('offer_date');
  set offerDate(DateTime? value) => setField<DateTime>('offer_date', value);

  String? get offerStatus => getField<String>('offer_status');
  set offerStatus(String? value) => setField<String>('offer_status', value);

  int? get counterAmount => getField<int>('counter_amount');
  set counterAmount(int? value) => setField<int>('counter_amount', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
