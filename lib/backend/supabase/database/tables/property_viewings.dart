import '../database.dart';

class PropertyViewingsTable extends SupabaseTable<PropertyViewingsRow> {
  @override
  String get tableName => 'property_viewings';

  @override
  PropertyViewingsRow createRow(Map<String, dynamic> data) =>
      PropertyViewingsRow(data);
}

class PropertyViewingsRow extends SupabaseDataRow {
  PropertyViewingsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PropertyViewingsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get viewingNumber => getField<String>('viewing_number');
  set viewingNumber(String? value) => setField<String>('viewing_number', value);

  String? get propertyId => getField<String>('property_id');
  set propertyId(String? value) => setField<String>('property_id', value);

  String? get inquiryId => getField<String>('inquiry_id');
  set inquiryId(String? value) => setField<String>('inquiry_id', value);

  DateTime? get scheduledDate => getField<DateTime>('scheduled_date');
  set scheduledDate(DateTime? value) =>
      setField<DateTime>('scheduled_date', value);

  DateTime? get actualDate => getField<DateTime>('actual_date');
  set actualDate(DateTime? value) => setField<DateTime>('actual_date', value);

  int? get durationMinutes => getField<int>('duration_minutes');
  set durationMinutes(int? value) => setField<int>('duration_minutes', value);

  String? get clientId => getField<String>('client_id');
  set clientId(String? value) => setField<String>('client_id', value);

  String? get clientName => getField<String>('client_name');
  set clientName(String? value) => setField<String>('client_name', value);

  String? get clientPhone => getField<String>('client_phone');
  set clientPhone(String? value) => setField<String>('client_phone', value);

  String? get brokerId => getField<String>('broker_id');
  set brokerId(String? value) => setField<String>('broker_id', value);

  String? get agentId => getField<String>('agent_id');
  set agentId(String? value) => setField<String>('agent_id', value);

  String? get meetingPoint => getField<String>('meeting_point');
  set meetingPoint(String? value) => setField<String>('meeting_point', value);

  String? get specialInstructions => getField<String>('special_instructions');
  set specialInstructions(String? value) =>
      setField<String>('special_instructions', value);

  String? get clientFeedback => getField<String>('client_feedback');
  set clientFeedback(String? value) =>
      setField<String>('client_feedback', value);

  String? get brokerNotes => getField<String>('broker_notes');
  set brokerNotes(String? value) => setField<String>('broker_notes', value);

  int? get interestLevel => getField<int>('interest_level');
  set interestLevel(int? value) => setField<int>('interest_level', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get cancellationReason => getField<String>('cancellation_reason');
  set cancellationReason(String? value) =>
      setField<String>('cancellation_reason', value);

  String? get cancelledBy => getField<String>('cancelled_by');
  set cancelledBy(String? value) => setField<String>('cancelled_by', value);

  DateTime? get cancelledAt => getField<DateTime>('cancelled_at');
  set cancelledAt(DateTime? value) => setField<DateTime>('cancelled_at', value);

  bool? get followUpRequired => getField<bool>('follow_up_required');
  set followUpRequired(bool? value) =>
      setField<bool>('follow_up_required', value);

  DateTime? get followUpDate => getField<DateTime>('follow_up_date');
  set followUpDate(DateTime? value) =>
      setField<DateTime>('follow_up_date', value);

  String? get followUpNotes => getField<String>('follow_up_notes');
  set followUpNotes(String? value) =>
      setField<String>('follow_up_notes', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);
}
