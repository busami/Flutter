import '../database.dart';

class TranslationsTable extends SupabaseTable<TranslationsRow> {
  @override
  String get tableName => 'translations';

  @override
  TranslationsRow createRow(Map<String, dynamic> data) => TranslationsRow(data);
}

class TranslationsRow extends SupabaseDataRow {
  TranslationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TranslationsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get key => getField<String>('key');
  set key(String? value) => setField<String>('key', value);

  String? get textAr => getField<String>('text_ar');
  set textAr(String? value) => setField<String>('text_ar', value);

  String? get textEn => getField<String>('text_en');
  set textEn(String? value) => setField<String>('text_en', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
