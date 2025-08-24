import '../database.dart';

class CommissionSplitsTable extends SupabaseTable<CommissionSplitsRow> {
  @override
  String get tableName => 'commission_splits';

  @override
  CommissionSplitsRow createRow(Map<String, dynamic> data) =>
      CommissionSplitsRow(data);
}

class CommissionSplitsRow extends SupabaseDataRow {
  CommissionSplitsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CommissionSplitsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get transactionId => getField<String>('transaction_id');
  set transactionId(String? value) => setField<String>('transaction_id', value);

  String? get brokerId => getField<String>('broker_id');
  set brokerId(String? value) => setField<String>('broker_id', value);

  double? get splitPercentage => getField<double>('split_percentage');
  set splitPercentage(double? value) =>
      setField<double>('split_percentage', value);

  int? get amount => getField<int>('amount');
  set amount(int? value) => setField<int>('amount', value);

  bool? get isPaid => getField<bool>('is_paid');
  set isPaid(bool? value) => setField<bool>('is_paid', value);

  DateTime? get paidDate => getField<DateTime>('paid_date');
  set paidDate(DateTime? value) => setField<DateTime>('paid_date', value);

  String? get paymentReference => getField<String>('payment_reference');
  set paymentReference(String? value) =>
      setField<String>('payment_reference', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
