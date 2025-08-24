import '../database.dart';

class LeadDistributionRulesTable
    extends SupabaseTable<LeadDistributionRulesRow> {
  @override
  String get tableName => 'lead_distribution_rules';

  @override
  LeadDistributionRulesRow createRow(Map<String, dynamic> data) =>
      LeadDistributionRulesRow(data);
}

class LeadDistributionRulesRow extends SupabaseDataRow {
  LeadDistributionRulesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LeadDistributionRulesTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  String? get governorate => getField<String>('governorate');
  set governorate(String? value) => setField<String>('governorate', value);

  String? get area => getField<String>('area');
  set area(String? value) => setField<String>('area', value);

  String? get propertyType => getField<String>('property_type');
  set propertyType(String? value) => setField<String>('property_type', value);

  int? get priceMin => getField<int>('price_min');
  set priceMin(int? value) => setField<int>('price_min', value);

  int? get priceMax => getField<int>('price_max');
  set priceMax(int? value) => setField<int>('price_max', value);

  String? get assignedBrokerId => getField<String>('assigned_broker_id');
  set assignedBrokerId(String? value) =>
      setField<String>('assigned_broker_id', value);

  int? get priority => getField<int>('priority');
  set priority(int? value) => setField<int>('priority', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
