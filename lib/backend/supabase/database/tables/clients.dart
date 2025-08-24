import '../database.dart';

class ClientsTable extends SupabaseTable<ClientsRow> {
  @override
  String get tableName => 'clients';

  @override
  ClientsRow createRow(Map<String, dynamic> data) => ClientsRow(data);
}

class ClientsRow extends SupabaseDataRow {
  ClientsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ClientsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get fullNameAr => getField<String>('full_name_ar');
  set fullNameAr(String? value) => setField<String>('full_name_ar', value);

  String? get fullNameEn => getField<String>('full_name_en');
  set fullNameEn(String? value) => setField<String>('full_name_en', value);

  String? get calledName => getField<String>('called_name');
  set calledName(String? value) => setField<String>('called_name', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get clientType => getField<String>('client_type');
  set clientType(String? value) => setField<String>('client_type', value);

  int? get budgetMin => getField<int>('budget_min');
  set budgetMin(int? value) => setField<int>('budget_min', value);

  int? get budgetMax => getField<int>('budget_max');
  set budgetMax(int? value) => setField<int>('budget_max', value);

  List<String> get preferredGovernorates =>
      getListField<String>('preferred_governorates');
  set preferredGovernorates(List<String>? value) =>
      setListField<String>('preferred_governorates', value);

  List<String> get preferredAreas => getListField<String>('preferred_areas');
  set preferredAreas(List<String>? value) =>
      setListField<String>('preferred_areas', value);

  List<String> get preferredPropertyTypes =>
      getListField<String>('preferred_property_types');
  set preferredPropertyTypes(List<String>? value) =>
      setListField<String>('preferred_property_types', value);

  int? get minBedrooms => getField<int>('min_bedrooms');
  set minBedrooms(int? value) => setField<int>('min_bedrooms', value);

  int? get minBathrooms => getField<int>('min_bathrooms');
  set minBathrooms(int? value) => setField<int>('min_bathrooms', value);

  double? get areaSqmMin => getField<double>('area_sqm_min');
  set areaSqmMin(double? value) => setField<double>('area_sqm_min', value);

  double? get areaSqmMax => getField<double>('area_sqm_max');
  set areaSqmMax(double? value) => setField<double>('area_sqm_max', value);

  dynamic get mustHaveFeatures => getField<dynamic>('must_have_features');
  set mustHaveFeatures(dynamic value) =>
      setField<dynamic>('must_have_features', value);

  List<String> get dealBreakers => getListField<String>('deal_breakers');
  set dealBreakers(List<String>? value) =>
      setListField<String>('deal_breakers', value);

  String? get timelineToPurchase => getField<String>('timeline_to_purchase');
  set timelineToPurchase(String? value) =>
      setField<String>('timeline_to_purchase', value);

  String? get financingType => getField<String>('financing_type');
  set financingType(String? value) => setField<String>('financing_type', value);

  dynamic get ownedProperties => getField<dynamic>('owned_properties');
  set ownedProperties(dynamic value) =>
      setField<dynamic>('owned_properties', value);

  String? get source => getField<String>('source');
  set source(String? value) => setField<String>('source', value);

  String? get assignedBrokerId => getField<String>('assigned_broker_id');
  set assignedBrokerId(String? value) =>
      setField<String>('assigned_broker_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  String? get convertedToUserId => getField<String>('converted_to_user_id');
  set convertedToUserId(String? value) =>
      setField<String>('converted_to_user_id', value);

  DateTime? get convertedAt => getField<DateTime>('converted_at');
  set convertedAt(DateTime? value) => setField<DateTime>('converted_at', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  List<String> get businessType => getListField<String>('business_type');
  set businessType(List<String>? value) =>
      setListField<String>('business_type', value);

  String? get clientRole => getField<String>('client_role');
  set clientRole(String? value) => setField<String>('client_role', value);

  String? get companyName => getField<String>('company_name');
  set companyName(String? value) => setField<String>('company_name', value);

  String? get companyRegistration => getField<String>('company_registration');
  set companyRegistration(String? value) =>
      setField<String>('company_registration', value);

  bool? get isCompany => getField<bool>('is_company');
  set isCompany(bool? value) => setField<bool>('is_company', value);

  dynamic get valuationHistory => getField<dynamic>('valuation_history');
  set valuationHistory(dynamic value) =>
      setField<dynamic>('valuation_history', value);
}
