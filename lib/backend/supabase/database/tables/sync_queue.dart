import '../database.dart';

class SyncQueueTable extends SupabaseTable<SyncQueueRow> {
  @override
  String get tableName => 'sync_queue';

  @override
  SyncQueueRow createRow(Map<String, dynamic> data) => SyncQueueRow(data);
}

class SyncQueueRow extends SupabaseDataRow {
  SyncQueueRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SyncQueueTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get operation => getField<String>('operation');
  set operation(String? value) => setField<String>('operation', value);

  String? get tableNameField => getField<String>('table_name');
  set tableNameField(String? value) => setField<String>('table_name', value);

  String? get recordId => getField<String>('record_id');
  set recordId(String? value) => setField<String>('record_id', value);

  dynamic get dataField => getField<dynamic>('data');
  set dataField(dynamic value) => setField<dynamic>('data', value);

  bool? get synced => getField<bool>('synced');
  set synced(bool? value) => setField<bool>('synced', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
