import '../database.dart';

class SearchLogsTable extends SupabaseTable<SearchLogsRow> {
  @override
  String get tableName => 'search_logs';

  @override
  SearchLogsRow createRow(Map<String, dynamic> data) => SearchLogsRow(data);
}

class SearchLogsRow extends SupabaseDataRow {
  SearchLogsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SearchLogsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get searchQuery => getField<String>('search_query');
  set searchQuery(String? value) => setField<String>('search_query', value);

  dynamic get filtersUsed => getField<dynamic>('filters_used');
  set filtersUsed(dynamic value) => setField<dynamic>('filters_used', value);

  int? get resultsCount => getField<int>('results_count');
  set resultsCount(int? value) => setField<int>('results_count', value);

  List<String> get clickedResults => getListField<String>('clicked_results');
  set clickedResults(List<String>? value) =>
      setListField<String>('clicked_results', value);

  String? get searchType => getField<String>('search_type');
  set searchType(String? value) => setField<String>('search_type', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
