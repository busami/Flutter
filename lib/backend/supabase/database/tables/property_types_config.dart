import '../database.dart';

class PropertyTypesConfigTable extends SupabaseTable<PropertyTypesConfigRow> {
  @override
  String get tableName => 'property_types_config';

  @override
  PropertyTypesConfigRow createRow(Map<String, dynamic> data) =>
      PropertyTypesConfigRow(data);
}

class PropertyTypesConfigRow extends SupabaseDataRow {
  PropertyTypesConfigRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PropertyTypesConfigTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get ownershipType => getField<String>('ownership_type');
  set ownershipType(String? value) => setField<String>('ownership_type', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  String? get subtype => getField<String>('subtype');
  set subtype(String? value) => setField<String>('subtype', value);

  String? get issuingAuthority => getField<String>('issuing_authority');
  set issuingAuthority(String? value) =>
      setField<String>('issuing_authority', value);

  String? get nameAr => getField<String>('name_ar');
  set nameAr(String? value) => setField<String>('name_ar', value);

  String? get nameEn => getField<String>('name_en');
  set nameEn(String? value) => setField<String>('name_en', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
