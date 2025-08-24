import '../database.dart';

class ApiRateLimitsTable extends SupabaseTable<ApiRateLimitsRow> {
  @override
  String get tableName => 'api_rate_limits';

  @override
  ApiRateLimitsRow createRow(Map<String, dynamic> data) =>
      ApiRateLimitsRow(data);
}

class ApiRateLimitsRow extends SupabaseDataRow {
  ApiRateLimitsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ApiRateLimitsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get endpoint => getField<String>('endpoint');
  set endpoint(String? value) => setField<String>('endpoint', value);

  int? get requestsCount => getField<int>('requests_count');
  set requestsCount(int? value) => setField<int>('requests_count', value);

  DateTime? get windowStart => getField<DateTime>('window_start');
  set windowStart(DateTime? value) => setField<DateTime>('window_start', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
