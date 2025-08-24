import '../database.dart';

class CommunicationsValuationTable
    extends SupabaseTable<CommunicationsValuationRow> {
  @override
  String get tableName => 'communications_valuation';

  @override
  CommunicationsValuationRow createRow(Map<String, dynamic> data) =>
      CommunicationsValuationRow(data);
}

class CommunicationsValuationRow extends SupabaseDataRow {
  CommunicationsValuationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CommunicationsValuationTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get propertyId => getField<String>('property_id');
  set propertyId(String? value) => setField<String>('property_id', value);

  String? get valuationDetailsId => getField<String>('valuation_details_id');
  set valuationDetailsId(String? value) =>
      setField<String>('valuation_details_id', value);

  String? get clientId => getField<String>('client_id');
  set clientId(String? value) => setField<String>('client_id', value);

  String? get inspectionId => getField<String>('inspection_id');
  set inspectionId(String? value) => setField<String>('inspection_id', value);

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

  String? get communicationPurpose => getField<String>('communication_purpose');
  set communicationPurpose(String? value) =>
      setField<String>('communication_purpose', value);

  dynamic get metadata => getField<dynamic>('metadata');
  set metadata(dynamic value) => setField<dynamic>('metadata', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);
}
