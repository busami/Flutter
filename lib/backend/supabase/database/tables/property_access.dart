import '../database.dart';

class PropertyAccessTable extends SupabaseTable<PropertyAccessRow> {
  @override
  String get tableName => 'property_access';

  @override
  PropertyAccessRow createRow(Map<String, dynamic> data) =>
      PropertyAccessRow(data);
}

class PropertyAccessRow extends SupabaseDataRow {
  PropertyAccessRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PropertyAccessTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get propertyId => getField<String>('property_id');
  set propertyId(String? value) => setField<String>('property_id', value);

  String? get propertyType => getField<String>('property_type');
  set propertyType(String? value) => setField<String>('property_type', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get clientId => getField<String>('client_id');
  set clientId(String? value) => setField<String>('client_id', value);

  String? get grantedBy => getField<String>('granted_by');
  set grantedBy(String? value) => setField<String>('granted_by', value);

  DateTime? get grantedAt => getField<DateTime>('granted_at');
  set grantedAt(DateTime? value) => setField<DateTime>('granted_at', value);

  DateTime? get expiresAt => getField<DateTime>('expires_at');
  set expiresAt(DateTime? value) => setField<DateTime>('expires_at', value);
}
