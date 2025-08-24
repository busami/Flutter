import '../database.dart';

class DocumentsValuationTable extends SupabaseTable<DocumentsValuationRow> {
  @override
  String get tableName => 'documents_valuation';

  @override
  DocumentsValuationRow createRow(Map<String, dynamic> data) =>
      DocumentsValuationRow(data);
}

class DocumentsValuationRow extends SupabaseDataRow {
  DocumentsValuationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DocumentsValuationTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get valuationId => getField<String>('valuation_id');
  set valuationId(String? value) => setField<String>('valuation_id', value);

  String? get documentType => getField<String>('document_type');
  set documentType(String? value) => setField<String>('document_type', value);

  String? get storageProvider => getField<String>('storage_provider');
  set storageProvider(String? value) =>
      setField<String>('storage_provider', value);

  String? get storageUrl => getField<String>('storage_url');
  set storageUrl(String? value) => setField<String>('storage_url', value);

  String? get storageKey => getField<String>('storage_key');
  set storageKey(String? value) => setField<String>('storage_key', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get fileName => getField<String>('file_name');
  set fileName(String? value) => setField<String>('file_name', value);

  int? get fileSize => getField<int>('file_size');
  set fileSize(int? value) => setField<int>('file_size', value);

  String? get mimeType => getField<String>('mime_type');
  set mimeType(String? value) => setField<String>('mime_type', value);

  bool? get isFinal => getField<bool>('is_final');
  set isFinal(bool? value) => setField<bool>('is_final', value);

  String? get uploadedBy => getField<String>('uploaded_by');
  set uploadedBy(String? value) => setField<String>('uploaded_by', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
