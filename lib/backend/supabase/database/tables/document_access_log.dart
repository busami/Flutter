import '../database.dart';

class DocumentAccessLogTable extends SupabaseTable<DocumentAccessLogRow> {
  @override
  String get tableName => 'document_access_log';

  @override
  DocumentAccessLogRow createRow(Map<String, dynamic> data) =>
      DocumentAccessLogRow(data);
}

class DocumentAccessLogRow extends SupabaseDataRow {
  DocumentAccessLogRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DocumentAccessLogTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get documentId => getField<String>('document_id');
  set documentId(String? value) => setField<String>('document_id', value);

  String? get accessedBy => getField<String>('accessed_by');
  set accessedBy(String? value) => setField<String>('accessed_by', value);

  String? get accessType => getField<String>('access_type');
  set accessType(String? value) => setField<String>('access_type', value);

  String? get ipAddress => getField<String>('ip_address');
  set ipAddress(String? value) => setField<String>('ip_address', value);

  String? get userAgent => getField<String>('user_agent');
  set userAgent(String? value) => setField<String>('user_agent', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
