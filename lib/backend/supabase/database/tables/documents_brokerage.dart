import '../database.dart';

class DocumentsBrokerageTable extends SupabaseTable<DocumentsBrokerageRow> {
  @override
  String get tableName => 'documents_brokerage';

  @override
  DocumentsBrokerageRow createRow(Map<String, dynamic> data) =>
      DocumentsBrokerageRow(data);
}

class DocumentsBrokerageRow extends SupabaseDataRow {
  DocumentsBrokerageRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DocumentsBrokerageTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get propertyId => getField<String>('property_id');
  set propertyId(String? value) => setField<String>('property_id', value);

  String? get clientId => getField<String>('client_id');
  set clientId(String? value) => setField<String>('client_id', value);

  String? get documentType => getField<String>('document_type');
  set documentType(String? value) => setField<String>('document_type', value);

  String? get documentNameAr => getField<String>('document_name_ar');
  set documentNameAr(String? value) =>
      setField<String>('document_name_ar', value);

  String? get documentNameEn => getField<String>('document_name_en');
  set documentNameEn(String? value) =>
      setField<String>('document_name_en', value);

  String? get documentNumber => getField<String>('document_number');
  set documentNumber(String? value) =>
      setField<String>('document_number', value);

  DateTime? get issueDate => getField<DateTime>('issue_date');
  set issueDate(DateTime? value) => setField<DateTime>('issue_date', value);

  DateTime? get expiryDate => getField<DateTime>('expiry_date');
  set expiryDate(DateTime? value) => setField<DateTime>('expiry_date', value);

  String? get issuingAuthority => getField<String>('issuing_authority');
  set issuingAuthority(String? value) =>
      setField<String>('issuing_authority', value);

  String? get fileUrl => getField<String>('file_url');
  set fileUrl(String? value) => setField<String>('file_url', value);

  int? get fileSize => getField<int>('file_size');
  set fileSize(int? value) => setField<int>('file_size', value);

  String? get fileType => getField<String>('file_type');
  set fileType(String? value) => setField<String>('file_type', value);

  bool? get isVerified => getField<bool>('is_verified');
  set isVerified(bool? value) => setField<bool>('is_verified', value);

  String? get verifiedBy => getField<String>('verified_by');
  set verifiedBy(String? value) => setField<String>('verified_by', value);

  DateTime? get verifiedAt => getField<DateTime>('verified_at');
  set verifiedAt(DateTime? value) => setField<DateTime>('verified_at', value);

  bool? get isConfidential => getField<bool>('is_confidential');
  set isConfidential(bool? value) => setField<bool>('is_confidential', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  String? get uploadedBy => getField<String>('uploaded_by');
  set uploadedBy(String? value) => setField<String>('uploaded_by', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);
}
