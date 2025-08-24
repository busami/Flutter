import '../database.dart';

class TasksBrokerageTable extends SupabaseTable<TasksBrokerageRow> {
  @override
  String get tableName => 'tasks_brokerage';

  @override
  TasksBrokerageRow createRow(Map<String, dynamic> data) =>
      TasksBrokerageRow(data);
}

class TasksBrokerageRow extends SupabaseDataRow {
  TasksBrokerageRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TasksBrokerageTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get propertyId => getField<String>('property_id');
  set propertyId(String? value) => setField<String>('property_id', value);

  String? get brokerageDetailsId => getField<String>('brokerage_details_id');
  set brokerageDetailsId(String? value) =>
      setField<String>('brokerage_details_id', value);

  String? get clientId => getField<String>('client_id');
  set clientId(String? value) => setField<String>('client_id', value);

  String? get inquiryId => getField<String>('inquiry_id');
  set inquiryId(String? value) => setField<String>('inquiry_id', value);

  String? get taskType => getField<String>('task_type');
  set taskType(String? value) => setField<String>('task_type', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get priority => getField<String>('priority');
  set priority(String? value) => setField<String>('priority', value);

  String? get assignedTo => getField<String>('assigned_to');
  set assignedTo(String? value) => setField<String>('assigned_to', value);

  String? get assignedBy => getField<String>('assigned_by');
  set assignedBy(String? value) => setField<String>('assigned_by', value);

  DateTime? get dueDate => getField<DateTime>('due_date');
  set dueDate(DateTime? value) => setField<DateTime>('due_date', value);

  DateTime? get completedAt => getField<DateTime>('completed_at');
  set completedAt(DateTime? value) => setField<DateTime>('completed_at', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get reminderBefore => getField<String>('reminder_before');
  set reminderBefore(String? value) =>
      setField<String>('reminder_before', value);

  bool? get reminderSent => getField<bool>('reminder_sent');
  set reminderSent(bool? value) => setField<bool>('reminder_sent', value);

  DateTime? get reminderSentAt => getField<DateTime>('reminder_sent_at');
  set reminderSentAt(DateTime? value) =>
      setField<DateTime>('reminder_sent_at', value);

  bool? get isRecurring => getField<bool>('is_recurring');
  set isRecurring(bool? value) => setField<bool>('is_recurring', value);

  String? get recurrencePattern => getField<String>('recurrence_pattern');
  set recurrencePattern(String? value) =>
      setField<String>('recurrence_pattern', value);

  DateTime? get recurrenceEndDate => getField<DateTime>('recurrence_end_date');
  set recurrenceEndDate(DateTime? value) =>
      setField<DateTime>('recurrence_end_date', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
