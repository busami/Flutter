import '../database.dart';

class KuwaitAreasTable extends SupabaseTable<KuwaitAreasRow> {
  @override
  String get tableName => 'kuwait_areas';

  @override
  KuwaitAreasRow createRow(Map<String, dynamic> data) => KuwaitAreasRow(data);
}

class KuwaitAreasRow extends SupabaseDataRow {
  KuwaitAreasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => KuwaitAreasTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get governorateAr => getField<String>('governorate_ar');
  set governorateAr(String? value) => setField<String>('governorate_ar', value);

  String? get governorateEn => getField<String>('governorate_en');
  set governorateEn(String? value) => setField<String>('governorate_en', value);

  String? get governorateCode => getField<String>('governorate_code');
  set governorateCode(String? value) =>
      setField<String>('governorate_code', value);

  String? get areaAr => getField<String>('area_ar');
  set areaAr(String? value) => setField<String>('area_ar', value);

  String? get areaEn => getField<String>('area_en');
  set areaEn(String? value) => setField<String>('area_en', value);

  String? get areaCode => getField<String>('area_code');
  set areaCode(String? value) => setField<String>('area_code', value);

  dynamic get blocks => getField<dynamic>('blocks');
  set blocks(dynamic value) => setField<dynamic>('blocks', value);

  String? get paciZoneId => getField<String>('paci_zone_id');
  set paciZoneId(String? value) => setField<String>('paci_zone_id', value);

  dynamic get mapBounds => getField<dynamic>('map_bounds');
  set mapBounds(dynamic value) => setField<dynamic>('map_bounds', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
