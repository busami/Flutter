import '../database.dart';

class MarketInsightsTable extends SupabaseTable<MarketInsightsRow> {
  @override
  String get tableName => 'market_insights';

  @override
  MarketInsightsRow createRow(Map<String, dynamic> data) =>
      MarketInsightsRow(data);
}

class MarketInsightsRow extends SupabaseDataRow {
  MarketInsightsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MarketInsightsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get governorate => getField<String>('governorate');
  set governorate(String? value) => setField<String>('governorate', value);

  String? get area => getField<String>('area');
  set area(String? value) => setField<String>('area', value);

  String? get propertyType => getField<String>('property_type');
  set propertyType(String? value) => setField<String>('property_type', value);

  DateTime? get month => getField<DateTime>('month');
  set month(DateTime? value) => setField<DateTime>('month', value);

  double? get avgPrice => getField<double>('avg_price');
  set avgPrice(double? value) => setField<double>('avg_price', value);

  double? get medianPrice => getField<double>('median_price');
  set medianPrice(double? value) => setField<double>('median_price', value);

  int? get totalListings => getField<int>('total_listings');
  set totalListings(int? value) => setField<int>('total_listings', value);

  int? get totalSold => getField<int>('total_sold');
  set totalSold(int? value) => setField<int>('total_sold', value);

  int? get avgDaysOnMarket => getField<int>('avg_days_on_market');
  set avgDaysOnMarket(int? value) => setField<int>('avg_days_on_market', value);

  double? get pricePerSqm => getField<double>('price_per_sqm');
  set pricePerSqm(double? value) => setField<double>('price_per_sqm', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
