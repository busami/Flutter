import '../database.dart';

class StreetsTable extends SupabaseTable<StreetsRow> {
  @override
  String get tableName => 'streets';

  @override
  StreetsRow createRow(Map<String, dynamic> data) => StreetsRow(data);
}

class StreetsRow extends SupabaseDataRow {
  StreetsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StreetsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get areaId => getField<String>('area_id');
  set areaId(String? value) => setField<String>('area_id', value);

  String? get nameAr => getField<String>('name_ar');
  set nameAr(String? value) => setField<String>('name_ar', value);

  String? get nameEn => getField<String>('name_en');
  set nameEn(String? value) => setField<String>('name_en', value);

  bool? get isCommercialStreet => getField<bool>('is_commercial_street');
  set isCommercialStreet(bool? value) =>
      setField<bool>('is_commercial_street', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
