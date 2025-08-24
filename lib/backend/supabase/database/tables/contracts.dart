import '../database.dart';

class ContractsTable extends SupabaseTable<ContractsRow> {
  @override
  String get tableName => 'contracts';

  @override
  ContractsRow createRow(Map<String, dynamic> data) => ContractsRow(data);
}

class ContractsRow extends SupabaseDataRow {
  ContractsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ContractsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get templateId => getField<String>('template_id');
  set templateId(String? value) => setField<String>('template_id', value);

  String? get propertyId => getField<String>('property_id');
  set propertyId(String? value) => setField<String>('property_id', value);

  String? get propertyType => getField<String>('property_type');
  set propertyType(String? value) => setField<String>('property_type', value);

  String? get finalContent => getField<String>('final_content');
  set finalContent(String? value) => setField<String>('final_content', value);

  dynamic get variablesData => getField<dynamic>('variables_data');
  set variablesData(dynamic value) =>
      setField<dynamic>('variables_data', value);

  dynamic get parties => getField<dynamic>('parties');
  set parties(dynamic value) => setField<dynamic>('parties', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  dynamic get signatureData => getField<dynamic>('signature_data');
  set signatureData(dynamic value) =>
      setField<dynamic>('signature_data', value);

  DateTime? get signedAt => getField<DateTime>('signed_at');
  set signedAt(DateTime? value) => setField<DateTime>('signed_at', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);
}
