import '../database.dart';

class PaciStreetCacheTable extends SupabaseTable<PaciStreetCacheRow> {
  @override
  String get tableName => 'paci_street_cache';

  @override
  PaciStreetCacheRow createRow(Map<String, dynamic> data) =>
      PaciStreetCacheRow(data);
}

class PaciStreetCacheRow extends SupabaseDataRow {
  PaciStreetCacheRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PaciStreetCacheTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get streetId => getField<String>('street_id');
  set streetId(String? value) => setField<String>('street_id', value);

  String? get streetNameAr => getField<String>('street_name_ar');
  set streetNameAr(String? value) => setField<String>('street_name_ar', value);

  String? get streetNameEn => getField<String>('street_name_en');
  set streetNameEn(String? value) => setField<String>('street_name_en', value);

  String? get streetType => getField<String>('street_type');
  set streetType(String? value) => setField<String>('street_type', value);

  double? get streetWidth => getField<double>('street_width');
  set streetWidth(double? value) => setField<double>('street_width', value);

  String? get governorateAr => getField<String>('governorate_ar');
  set governorateAr(String? value) => setField<String>('governorate_ar', value);

  String? get areaAr => getField<String>('area_ar');
  set areaAr(String? value) => setField<String>('area_ar', value);

  String? get block => getField<String>('block');
  set block(String? value) => setField<String>('block', value);

  dynamic get streetGeometry => getField<dynamic>('street_geometry');
  set streetGeometry(dynamic value) =>
      setField<dynamic>('street_geometry', value);

  dynamic get paciResponse => getField<dynamic>('paci_response');
  set paciResponse(dynamic value) => setField<dynamic>('paci_response', value);

  DateTime? get lastSynced => getField<DateTime>('last_synced');
  set lastSynced(DateTime? value) => setField<DateTime>('last_synced', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
