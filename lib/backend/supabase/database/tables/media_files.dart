import '../database.dart';

class MediaFilesTable extends SupabaseTable<MediaFilesRow> {
  @override
  String get tableName => 'media_files';

  @override
  MediaFilesRow createRow(Map<String, dynamic> data) => MediaFilesRow(data);
}

class MediaFilesRow extends SupabaseDataRow {
  MediaFilesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MediaFilesTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get entityId => getField<String>('entity_id');
  set entityId(String? value) => setField<String>('entity_id', value);

  String? get entityType => getField<String>('entity_type');
  set entityType(String? value) => setField<String>('entity_type', value);

  String? get fileType => getField<String>('file_type');
  set fileType(String? value) => setField<String>('file_type', value);

  String? get fileCategory => getField<String>('file_category');
  set fileCategory(String? value) => setField<String>('file_category', value);

  String? get storageUrl => getField<String>('storage_url');
  set storageUrl(String? value) => setField<String>('storage_url', value);

  String? get cdnUrl => getField<String>('cdn_url');
  set cdnUrl(String? value) => setField<String>('cdn_url', value);

  String? get thumbnailUrl => getField<String>('thumbnail_url');
  set thumbnailUrl(String? value) => setField<String>('thumbnail_url', value);

  dynamic get fileMeta => getField<dynamic>('file_meta');
  set fileMeta(dynamic value) => setField<dynamic>('file_meta', value);

  bool? get isPrimary => getField<bool>('is_primary');
  set isPrimary(bool? value) => setField<bool>('is_primary', value);

  bool? get isPublic => getField<bool>('is_public');
  set isPublic(bool? value) => setField<bool>('is_public', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get uploadedBy => getField<String>('uploaded_by');
  set uploadedBy(String? value) => setField<String>('uploaded_by', value);
}
