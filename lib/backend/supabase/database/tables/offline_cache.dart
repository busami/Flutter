import '../database.dart';

class OfflineCacheTable extends SupabaseTable<OfflineCacheRow> {
  @override
  String get tableName => 'offline_cache';

  @override
  OfflineCacheRow createRow(Map<String, dynamic> data) => OfflineCacheRow(data);
}

class OfflineCacheRow extends SupabaseDataRow {
  OfflineCacheRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OfflineCacheTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get cacheKey => getField<String>('cache_key');
  set cacheKey(String? value) => setField<String>('cache_key', value);

  dynamic get dataField => getField<dynamic>('data');
  set dataField(dynamic value) => setField<dynamic>('data', value);

  DateTime? get expiresAt => getField<DateTime>('expires_at');
  set expiresAt(DateTime? value) => setField<DateTime>('expires_at', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
