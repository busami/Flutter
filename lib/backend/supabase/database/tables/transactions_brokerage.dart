import '../database.dart';

class TransactionsBrokerageTable
    extends SupabaseTable<TransactionsBrokerageRow> {
  @override
  String get tableName => 'transactions_brokerage';

  @override
  TransactionsBrokerageRow createRow(Map<String, dynamic> data) =>
      TransactionsBrokerageRow(data);
}

class TransactionsBrokerageRow extends SupabaseDataRow {
  TransactionsBrokerageRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TransactionsBrokerageTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get transactionType => getField<String>('transaction_type');
  set transactionType(String? value) =>
      setField<String>('transaction_type', value);

  String? get propertyId => getField<String>('property_id');
  set propertyId(String? value) => setField<String>('property_id', value);

  String? get brokerageDetailsId => getField<String>('brokerage_details_id');
  set brokerageDetailsId(String? value) =>
      setField<String>('brokerage_details_id', value);

  String? get buyerClientId => getField<String>('buyer_client_id');
  set buyerClientId(String? value) =>
      setField<String>('buyer_client_id', value);

  String? get sellerClientId => getField<String>('seller_client_id');
  set sellerClientId(String? value) =>
      setField<String>('seller_client_id', value);

  int? get salePrice => getField<int>('sale_price');
  set salePrice(int? value) => setField<int>('sale_price', value);

  double? get commissionPercentage => getField<double>('commission_percentage');
  set commissionPercentage(double? value) =>
      setField<double>('commission_percentage', value);

  int? get commissionAmount => getField<int>('commission_amount');
  set commissionAmount(int? value) => setField<int>('commission_amount', value);

  String? get paymentMethod => getField<String>('payment_method');
  set paymentMethod(String? value) => setField<String>('payment_method', value);

  String? get paymentReference => getField<String>('payment_reference');
  set paymentReference(String? value) =>
      setField<String>('payment_reference', value);

  String? get contractNumber => getField<String>('contract_number');
  set contractNumber(String? value) =>
      setField<String>('contract_number', value);

  DateTime? get transactionDate => getField<DateTime>('transaction_date');
  set transactionDate(DateTime? value) =>
      setField<DateTime>('transaction_date', value);

  DateTime? get paymentReceivedDate =>
      getField<DateTime>('payment_received_date');
  set paymentReceivedDate(DateTime? value) =>
      setField<DateTime>('payment_received_date', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  bool? get hasSplits => getField<bool>('has_splits');
  set hasSplits(bool? value) => setField<bool>('has_splits', value);

  dynamic get splits => getField<dynamic>('splits');
  set splits(dynamic value) => setField<dynamic>('splits', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
