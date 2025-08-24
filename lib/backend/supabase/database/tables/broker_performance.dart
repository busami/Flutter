import '../database.dart';

class BrokerPerformanceTable extends SupabaseTable<BrokerPerformanceRow> {
  @override
  String get tableName => 'broker_performance';

  @override
  BrokerPerformanceRow createRow(Map<String, dynamic> data) =>
      BrokerPerformanceRow(data);
}

class BrokerPerformanceRow extends SupabaseDataRow {
  BrokerPerformanceRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BrokerPerformanceTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get brokerId => getField<String>('broker_id');
  set brokerId(String? value) => setField<String>('broker_id', value);

  DateTime? get periodStart => getField<DateTime>('period_start');
  set periodStart(DateTime? value) => setField<DateTime>('period_start', value);

  DateTime? get periodEnd => getField<DateTime>('period_end');
  set periodEnd(DateTime? value) => setField<DateTime>('period_end', value);

  int? get propertiesListed => getField<int>('properties_listed');
  set propertiesListed(int? value) => setField<int>('properties_listed', value);

  int? get propertiesSold => getField<int>('properties_sold');
  set propertiesSold(int? value) => setField<int>('properties_sold', value);

  int? get totalSalesValue => getField<int>('total_sales_value');
  set totalSalesValue(int? value) => setField<int>('total_sales_value', value);

  int? get totalCommission => getField<int>('total_commission');
  set totalCommission(int? value) => setField<int>('total_commission', value);

  double? get avgDaysToSell => getField<double>('avg_days_to_sell');
  set avgDaysToSell(double? value) =>
      setField<double>('avg_days_to_sell', value);

  int? get inquiriesReceived => getField<int>('inquiries_received');
  set inquiriesReceived(int? value) =>
      setField<int>('inquiries_received', value);

  int? get inquiriesConverted => getField<int>('inquiries_converted');
  set inquiriesConverted(int? value) =>
      setField<int>('inquiries_converted', value);

  int? get viewingsConducted => getField<int>('viewings_conducted');
  set viewingsConducted(int? value) =>
      setField<int>('viewings_conducted', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
