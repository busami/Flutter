import '../database.dart';

class BranchesTable extends SupabaseTable<BranchesRow> {
  @override
  String get tableName => 'branches';

  @override
  BranchesRow createRow(Map<String, dynamic> data) => BranchesRow(data);
}

class BranchesRow extends SupabaseDataRow {
  BranchesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BranchesTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get nameAr => getField<String>('name_ar');
  set nameAr(String? value) => setField<String>('name_ar', value);

  String? get nameEn => getField<String>('name_en');
  set nameEn(String? value) => setField<String>('name_en', value);

  String? get addressAr => getField<String>('address_ar');
  set addressAr(String? value) => setField<String>('address_ar', value);

  String? get addressEn => getField<String>('address_en');
  set addressEn(String? value) => setField<String>('address_en', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  dynamic get location => getField<dynamic>('location');
  set location(dynamic value) => setField<dynamic>('location', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
