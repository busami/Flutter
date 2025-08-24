import '../database.dart';

class InspectionsTable extends SupabaseTable<InspectionsRow> {
  @override
  String get tableName => 'inspections';

  @override
  InspectionsRow createRow(Map<String, dynamic> data) => InspectionsRow(data);
}

class InspectionsRow extends SupabaseDataRow {
  InspectionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => InspectionsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get valuationId => getField<String>('valuation_id');
  set valuationId(String? value) => setField<String>('valuation_id', value);

  String? get inspectorId => getField<String>('inspector_id');
  set inspectorId(String? value) => setField<String>('inspector_id', value);

  dynamic get inspectionData => getField<dynamic>('inspection_data');
  set inspectionData(dynamic value) =>
      setField<dynamic>('inspection_data', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime? get completedAt => getField<DateTime>('completed_at');
  set completedAt(DateTime? value) => setField<DateTime>('completed_at', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
