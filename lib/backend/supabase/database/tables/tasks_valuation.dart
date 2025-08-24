import '../database.dart';

class TasksValuationTable extends SupabaseTable<TasksValuationRow> {
  @override
  String get tableName => 'tasks_valuation';

  @override
  TasksValuationRow createRow(Map<String, dynamic> data) =>
      TasksValuationRow(data);
}

class TasksValuationRow extends SupabaseDataRow {
  TasksValuationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TasksValuationTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get propertyId => getField<String>('property_id');
  set propertyId(String? value) => setField<String>('property_id', value);

  String? get valuationDetailsId => getField<String>('valuation_details_id');
  set valuationDetailsId(String? value) =>
      setField<String>('valuation_details_id', value);

  String? get inspectionId => getField<String>('inspection_id');
  set inspectionId(String? value) => setField<String>('inspection_id', value);

  String? get clientId => getField<String>('client_id');
  set clientId(String? value) => setField<String>('client_id', value);

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

  String? get milestone => getField<String>('milestone');
  set milestone(String? value) => setField<String>('milestone', value);

  String? get reminderBefore => getField<String>('reminder_before');
  set reminderBefore(String? value) =>
      setField<String>('reminder_before', value);

  bool? get reminderSent => getField<bool>('reminder_sent');
  set reminderSent(bool? value) => setField<bool>('reminder_sent', value);

  DateTime? get reminderSentAt => getField<DateTime>('reminder_sent_at');
  set reminderSentAt(DateTime? value) =>
      setField<DateTime>('reminder_sent_at', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
