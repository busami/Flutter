import '../database.dart';

class ValuationDetailsTable extends SupabaseTable<ValuationDetailsRow> {
  @override
  String get tableName => 'valuation_details';

  @override
  ValuationDetailsRow createRow(Map<String, dynamic> data) =>
      ValuationDetailsRow(data);
}

class ValuationDetailsRow extends SupabaseDataRow {
  ValuationDetailsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ValuationDetailsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get propertyId => getField<String>('property_id');
  set propertyId(String? value) => setField<String>('property_id', value);

  int? get valuationYear => getField<int>('valuation_year');
  set valuationYear(int? value) => setField<int>('valuation_year', value);

  DateTime? get valuationDate => getField<DateTime>('valuation_date');
  set valuationDate(DateTime? value) =>
      setField<DateTime>('valuation_date', value);

  String? get reportNumber => getField<String>('report_number');
  set reportNumber(String? value) => setField<String>('report_number', value);

  String? get valuationPurpose => getField<String>('valuation_purpose');
  set valuationPurpose(String? value) =>
      setField<String>('valuation_purpose', value);

  String? get valuationMethod => getField<String>('valuation_method');
  set valuationMethod(String? value) =>
      setField<String>('valuation_method', value);

  String? get applicantClientId => getField<String>('applicant_client_id');
  set applicantClientId(String? value) =>
      setField<String>('applicant_client_id', value);

  int? get landValue => getField<int>('land_value');
  set landValue(int? value) => setField<int>('land_value', value);

  int? get buildingValue => getField<int>('building_value');
  set buildingValue(int? value) => setField<int>('building_value', value);

  int? get totalCostValue => getField<int>('total_cost_value');
  set totalCostValue(int? value) => setField<int>('total_cost_value', value);

  dynamic get propertyIncome => getField<dynamic>('property_income');
  set propertyIncome(dynamic value) =>
      setField<dynamic>('property_income', value);

  int? get fees => getField<int>('fees');
  set fees(int? value) => setField<int>('fees', value);

  String? get paymentStatus => getField<String>('payment_status');
  set paymentStatus(String? value) => setField<String>('payment_status', value);

  String? get valuationStatus => getField<String>('valuation_status');
  set valuationStatus(String? value) =>
      setField<String>('valuation_status', value);

  String? get inspectionStatus => getField<String>('inspection_status');
  set inspectionStatus(String? value) =>
      setField<String>('inspection_status', value);

  DateTime? get inspectionDate => getField<DateTime>('inspection_date');
  set inspectionDate(DateTime? value) =>
      setField<DateTime>('inspection_date', value);

  String? get assignedValuerId => getField<String>('assigned_valuer_id');
  set assignedValuerId(String? value) =>
      setField<String>('assigned_valuer_id', value);

  String? get assignedInspectorId => getField<String>('assigned_inspector_id');
  set assignedInspectorId(String? value) =>
      setField<String>('assigned_inspector_id', value);

  String? get valuerRegistrationNumber =>
      getField<String>('valuer_registration_number');
  set valuerRegistrationNumber(String? value) =>
      setField<String>('valuer_registration_number', value);

  String? get valuerClassification => getField<String>('valuer_classification');
  set valuerClassification(String? value) =>
      setField<String>('valuer_classification', value);

  DateTime? get reportIssuanceDate =>
      getField<DateTime>('report_issuance_date');
  set reportIssuanceDate(DateTime? value) =>
      setField<DateTime>('report_issuance_date', value);

  DateTime? get deliveredDate => getField<DateTime>('delivered_date');
  set deliveredDate(DateTime? value) =>
      setField<DateTime>('delivered_date', value);

  dynamic get deliveryConfirmation =>
      getField<dynamic>('delivery_confirmation');
  set deliveryConfirmation(dynamic value) =>
      setField<dynamic>('delivery_confirmation', value);

  dynamic get valuationDetails => getField<dynamic>('valuation_details');
  set valuationDetails(dynamic value) =>
      setField<dynamic>('valuation_details', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get ownershipId => getField<String>('ownership_id');
  set ownershipId(String? value) => setField<String>('ownership_id', value);

  String? get ownerAtValuation => getField<String>('owner_at_valuation');
  set ownerAtValuation(String? value) =>
      setField<String>('owner_at_valuation', value);

  String? get ownerPhoneAtValuation =>
      getField<String>('owner_phone_at_valuation');
  set ownerPhoneAtValuation(String? value) =>
      setField<String>('owner_phone_at_valuation', value);
}
