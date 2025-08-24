import '../database.dart';

class CommunicationsBrokerageTable
    extends SupabaseTable<CommunicationsBrokerageRow> {
  @override
  String get tableName => 'communications_brokerage';

  @override
  CommunicationsBrokerageRow createRow(Map<String, dynamic> data) =>
      CommunicationsBrokerageRow(data);
}

class CommunicationsBrokerageRow extends SupabaseDataRow {
  CommunicationsBrokerageRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CommunicationsBrokerageTable();

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

  String? get appointmentId => getField<String>('appointment_id');
  set appointmentId(String? value) => setField<String>('appointment_id', value);

  String? get communicationType => getField<String>('communication_type');
  set communicationType(String? value) =>
      setField<String>('communication_type', value);

  String? get direction => getField<String>('direction');
  set direction(String? value) => setField<String>('direction', value);

  String? get fromUserId => getField<String>('from_user_id');
  set fromUserId(String? value) => setField<String>('from_user_id', value);

  String? get toUserId => getField<String>('to_user_id');
  set toUserId(String? value) => setField<String>('to_user_id', value);

  String? get toClientId => getField<String>('to_client_id');
  set toClientId(String? value) => setField<String>('to_client_id', value);

  String? get subject => getField<String>('subject');
  set subject(String? value) => setField<String>('subject', value);

  String? get content => getField<String>('content');
  set content(String? value) => setField<String>('content', value);

  int? get durationSeconds => getField<int>('duration_seconds');
  set durationSeconds(int? value) => setField<int>('duration_seconds', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get outcome => getField<String>('outcome');
  set outcome(String? value) => setField<String>('outcome', value);

  String? get nextAction => getField<String>('next_action');
  set nextAction(String? value) => setField<String>('next_action', value);

  DateTime? get nextActionDate => getField<DateTime>('next_action_date');
  set nextActionDate(DateTime? value) =>
      setField<DateTime>('next_action_date', value);

  dynamic get metadata => getField<dynamic>('metadata');
  set metadata(dynamic value) => setField<dynamic>('metadata', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);
}
