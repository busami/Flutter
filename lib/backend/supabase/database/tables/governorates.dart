import '../database.dart';

class GovernoratesTable extends SupabaseTable<GovernoratesRow> {
  @override
  String get tableName => 'governorates';

  @override
  GovernoratesRow createRow(Map<String, dynamic> data) => GovernoratesRow(data);
}

class GovernoratesRow extends SupabaseDataRow {
  GovernoratesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GovernoratesTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get nameAr => getField<String>('name_ar');
  set nameAr(String? value) => setField<String>('name_ar', value);

  String? get nameEn => getField<String>('name_en');
  set nameEn(String? value) => setField<String>('name_en', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  bool? get isInsideKuwaitCity => getField<bool>('is_inside_kuwait_city');
  set isInsideKuwaitCity(bool? value) =>
      setField<bool>('is_inside_kuwait_city', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
