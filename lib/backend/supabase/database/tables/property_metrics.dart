import '../database.dart';

class PropertyMetricsTable extends SupabaseTable<PropertyMetricsRow> {
  @override
  String get tableName => 'property_metrics';

  @override
  PropertyMetricsRow createRow(Map<String, dynamic> data) =>
      PropertyMetricsRow(data);
}

class PropertyMetricsRow extends SupabaseDataRow {
  PropertyMetricsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PropertyMetricsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get propertyId => getField<String>('property_id');
  set propertyId(String? value) => setField<String>('property_id', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  int? get viewsCount => getField<int>('views_count');
  set viewsCount(int? value) => setField<int>('views_count', value);

  int? get inquiriesCount => getField<int>('inquiries_count');
  set inquiriesCount(int? value) => setField<int>('inquiries_count', value);

  int? get whatsappClicks => getField<int>('whatsapp_clicks');
  set whatsappClicks(int? value) => setField<int>('whatsapp_clicks', value);

  int? get phoneReveals => getField<int>('phone_reveals');
  set phoneReveals(int? value) => setField<int>('phone_reveals', value);

  int? get savedCount => getField<int>('saved_count');
  set savedCount(int? value) => setField<int>('saved_count', value);

  int? get avgViewDuration => getField<int>('avg_view_duration');
  set avgViewDuration(int? value) => setField<int>('avg_view_duration', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
