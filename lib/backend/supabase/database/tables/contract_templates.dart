import '../database.dart';

class ContractTemplatesTable extends SupabaseTable<ContractTemplatesRow> {
  @override
  String get tableName => 'contract_templates';

  @override
  ContractTemplatesRow createRow(Map<String, dynamic> data) =>
      ContractTemplatesRow(data);
}

class ContractTemplatesRow extends SupabaseDataRow {
  ContractTemplatesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ContractTemplatesTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get nameAr => getField<String>('name_ar');
  set nameAr(String? value) => setField<String>('name_ar', value);

  String? get nameEn => getField<String>('name_en');
  set nameEn(String? value) => setField<String>('name_en', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get contentAr => getField<String>('content_ar');
  set contentAr(String? value) => setField<String>('content_ar', value);

  String? get contentEn => getField<String>('content_en');
  set contentEn(String? value) => setField<String>('content_en', value);

  dynamic get variables => getField<dynamic>('variables');
  set variables(dynamic value) => setField<dynamic>('variables', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
