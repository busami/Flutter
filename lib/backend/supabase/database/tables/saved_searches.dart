import '../database.dart';

class SavedSearchesTable extends SupabaseTable<SavedSearchesRow> {
  @override
  String get tableName => 'saved_searches';

  @override
  SavedSearchesRow createRow(Map<String, dynamic> data) =>
      SavedSearchesRow(data);
}

class SavedSearchesRow extends SupabaseDataRow {
  SavedSearchesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SavedSearchesTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get clientId => getField<String>('client_id');
  set clientId(String? value) => setField<String>('client_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  dynamic get searchCriteria => getField<dynamic>('search_criteria');
  set searchCriteria(dynamic value) =>
      setField<dynamic>('search_criteria', value);

  bool? get alertEnabled => getField<bool>('alert_enabled');
  set alertEnabled(bool? value) => setField<bool>('alert_enabled', value);

  String? get alertFrequency => getField<String>('alert_frequency');
  set alertFrequency(String? value) =>
      setField<String>('alert_frequency', value);

  DateTime? get lastAlertSent => getField<DateTime>('last_alert_sent');
  set lastAlertSent(DateTime? value) =>
      setField<DateTime>('last_alert_sent', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
