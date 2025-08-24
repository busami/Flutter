import '../database.dart';

class AreasTable extends SupabaseTable<AreasRow> {
  @override
  String get tableName => 'areas';

  @override
  AreasRow createRow(Map<String, dynamic> data) => AreasRow(data);
}

class AreasRow extends SupabaseDataRow {
  AreasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AreasTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get governorateId => getField<String>('governorate_id');
  set governorateId(String? value) => setField<String>('governorate_id', value);

  String? get nameAr => getField<String>('name_ar');
  set nameAr(String? value) => setField<String>('name_ar', value);

  String? get nameEn => getField<String>('name_en');
  set nameEn(String? value) => setField<String>('name_en', value);

  List<String> get blockNumbers => getListField<String>('block_numbers');
  set blockNumbers(List<String>? value) =>
      setListField<String>('block_numbers', value);

  String? get paciCode => getField<String>('paci_code');
  set paciCode(String? value) => setField<String>('paci_code', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
