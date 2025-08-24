import '../database.dart';

class PropertyViewsTable extends SupabaseTable<PropertyViewsRow> {
  @override
  String get tableName => 'property_views';

  @override
  PropertyViewsRow createRow(Map<String, dynamic> data) =>
      PropertyViewsRow(data);
}

class PropertyViewsRow extends SupabaseDataRow {
  PropertyViewsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PropertyViewsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get propertyId => getField<String>('property_id');
  set propertyId(String? value) => setField<String>('property_id', value);

  String? get propertyType => getField<String>('property_type');
  set propertyType(String? value) => setField<String>('property_type', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get sessionId => getField<String>('session_id');
  set sessionId(String? value) => setField<String>('session_id', value);

  int? get viewDuration => getField<int>('view_duration');
  set viewDuration(int? value) => setField<int>('view_duration', value);

  int? get viewedImagesCount => getField<int>('viewed_images_count');
  set viewedImagesCount(int? value) =>
      setField<int>('viewed_images_count', value);

  bool? get viewedDocuments => getField<bool>('viewed_documents');
  set viewedDocuments(bool? value) => setField<bool>('viewed_documents', value);

  bool? get clickedWhatsapp => getField<bool>('clicked_whatsapp');
  set clickedWhatsapp(bool? value) => setField<bool>('clicked_whatsapp', value);

  String? get referrer => getField<String>('referrer');
  set referrer(String? value) => setField<String>('referrer', value);

  String? get deviceType => getField<String>('device_type');
  set deviceType(String? value) => setField<String>('device_type', value);

  String? get browser => getField<String>('browser');
  set browser(String? value) => setField<String>('browser', value);

  String? get os => getField<String>('os');
  set os(String? value) => setField<String>('os', value);

  String? get ipAddress => getField<String>('ip_address');
  set ipAddress(String? value) => setField<String>('ip_address', value);

  String? get country => getField<String>('country');
  set country(String? value) => setField<String>('country', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
