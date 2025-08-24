import '../database.dart';

class PropertyInquiriesTable extends SupabaseTable<PropertyInquiriesRow> {
  @override
  String get tableName => 'property_inquiries';

  @override
  PropertyInquiriesRow createRow(Map<String, dynamic> data) =>
      PropertyInquiriesRow(data);
}

class PropertyInquiriesRow extends SupabaseDataRow {
  PropertyInquiriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PropertyInquiriesTable();

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

  String? get fullName => getField<String>('full_name');
  set fullName(String? value) => setField<String>('full_name', value);

  String? get calledName => getField<String>('called_name');
  set calledName(String? value) => setField<String>('called_name', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get budgetRange => getField<String>('budget_range');
  set budgetRange(String? value) => setField<String>('budget_range', value);

  String? get message => getField<String>('message');
  set message(String? value) => setField<String>('message', value);

  String? get howFound => getField<String>('how_found');
  set howFound(String? value) => setField<String>('how_found', value);

  bool? get isQualified => getField<bool>('is_qualified');
  set isQualified(bool? value) => setField<bool>('is_qualified', value);

  String? get qualificationNotes => getField<String>('qualification_notes');
  set qualificationNotes(String? value) =>
      setField<String>('qualification_notes', value);

  String? get urgencyLevel => getField<String>('urgency_level');
  set urgencyLevel(String? value) => setField<String>('urgency_level', value);

  String? get assignedTo => getField<String>('assigned_to');
  set assignedTo(String? value) => setField<String>('assigned_to', value);

  DateTime? get assignedAt => getField<DateTime>('assigned_at');
  set assignedAt(DateTime? value) => setField<DateTime>('assigned_at', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get sourceIp => getField<String>('source_ip');
  set sourceIp(String? value) => setField<String>('source_ip', value);

  String? get userAgent => getField<String>('user_agent');
  set userAgent(String? value) => setField<String>('user_agent', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  int? get leadScore => getField<int>('lead_score');
  set leadScore(int? value) => setField<int>('lead_score', value);
}
