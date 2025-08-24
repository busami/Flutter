import '../database.dart';

class TransactionsTable extends SupabaseTable<TransactionsRow> {
  @override
  String get tableName => 'transactions';

  @override
  TransactionsRow createRow(Map<String, dynamic> data) => TransactionsRow(data);
}

class TransactionsRow extends SupabaseDataRow {
  TransactionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TransactionsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get propertyId => getField<String>('property_id');
  set propertyId(String? value) => setField<String>('property_id', value);

  String? get propertyType => getField<String>('property_type');
  set propertyType(String? value) => setField<String>('property_type', value);

  String? get buyerId => getField<String>('buyer_id');
  set buyerId(String? value) => setField<String>('buyer_id', value);

  String? get sellerId => getField<String>('seller_id');
  set sellerId(String? value) => setField<String>('seller_id', value);

  int? get salePrice => getField<int>('sale_price');
  set salePrice(int? value) => setField<int>('sale_price', value);

  DateTime? get saleDate => getField<DateTime>('sale_date');
  set saleDate(DateTime? value) => setField<DateTime>('sale_date', value);

  String? get contractNumber => getField<String>('contract_number');
  set contractNumber(String? value) =>
      setField<String>('contract_number', value);

  double? get commissionPercentage => getField<double>('commission_percentage');
  set commissionPercentage(double? value) =>
      setField<double>('commission_percentage', value);

  int? get commissionAmount => getField<int>('commission_amount');
  set commissionAmount(int? value) => setField<int>('commission_amount', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);
}
