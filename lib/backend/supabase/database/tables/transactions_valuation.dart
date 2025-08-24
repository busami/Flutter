import '../database.dart';

class TransactionsValuationTable
    extends SupabaseTable<TransactionsValuationRow> {
  @override
  String get tableName => 'transactions_valuation';

  @override
  TransactionsValuationRow createRow(Map<String, dynamic> data) =>
      TransactionsValuationRow(data);
}

class TransactionsValuationRow extends SupabaseDataRow {
  TransactionsValuationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TransactionsValuationTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get transactionType => getField<String>('transaction_type');
  set transactionType(String? value) =>
      setField<String>('transaction_type', value);

  String? get propertyId => getField<String>('property_id');
  set propertyId(String? value) => setField<String>('property_id', value);

  String? get valuationDetailsId => getField<String>('valuation_details_id');
  set valuationDetailsId(String? value) =>
      setField<String>('valuation_details_id', value);

  String? get clientId => getField<String>('client_id');
  set clientId(String? value) => setField<String>('client_id', value);

  int? get feeAmount => getField<int>('fee_amount');
  set feeAmount(int? value) => setField<int>('fee_amount', value);

  int? get vatAmount => getField<int>('vat_amount');
  set vatAmount(int? value) => setField<int>('vat_amount', value);

  int? get totalAmount => getField<int>('total_amount');
  set totalAmount(int? value) => setField<int>('total_amount', value);

  String? get currency => getField<String>('currency');
  set currency(String? value) => setField<String>('currency', value);

  String? get paymentMethod => getField<String>('payment_method');
  set paymentMethod(String? value) => setField<String>('payment_method', value);

  String? get paymentReference => getField<String>('payment_reference');
  set paymentReference(String? value) =>
      setField<String>('payment_reference', value);

  String? get invoiceNumber => getField<String>('invoice_number');
  set invoiceNumber(String? value) => setField<String>('invoice_number', value);

  String? get kfhPaymentId => getField<String>('kfh_payment_id');
  set kfhPaymentId(String? value) => setField<String>('kfh_payment_id', value);

  String? get kfhPaymentLink => getField<String>('kfh_payment_link');
  set kfhPaymentLink(String? value) =>
      setField<String>('kfh_payment_link', value);

  DateTime? get invoiceDate => getField<DateTime>('invoice_date');
  set invoiceDate(DateTime? value) => setField<DateTime>('invoice_date', value);

  DateTime? get dueDate => getField<DateTime>('due_date');
  set dueDate(DateTime? value) => setField<DateTime>('due_date', value);

  DateTime? get paymentDate => getField<DateTime>('payment_date');
  set paymentDate(DateTime? value) => setField<DateTime>('payment_date', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  bool? get isRefund => getField<bool>('is_refund');
  set isRefund(bool? value) => setField<bool>('is_refund', value);

  String? get originalTransactionId =>
      getField<String>('original_transaction_id');
  set originalTransactionId(String? value) =>
      setField<String>('original_transaction_id', value);

  String? get refundReason => getField<String>('refund_reason');
  set refundReason(String? value) => setField<String>('refund_reason', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
