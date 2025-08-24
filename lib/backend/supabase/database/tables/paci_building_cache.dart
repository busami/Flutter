import '../database.dart';

class PaciBuildingCacheTable extends SupabaseTable<PaciBuildingCacheRow> {
  @override
  String get tableName => 'paci_building_cache';

  @override
  PaciBuildingCacheRow createRow(Map<String, dynamic> data) =>
      PaciBuildingCacheRow(data);
}

class PaciBuildingCacheRow extends SupabaseDataRow {
  PaciBuildingCacheRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PaciBuildingCacheTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get buildingId => getField<String>('building_id');
  set buildingId(String? value) => setField<String>('building_id', value);

  String? get paciNumber => getField<String>('paci_number');
  set paciNumber(String? value) => setField<String>('paci_number', value);

  String? get buildingType => getField<String>('building_type');
  set buildingType(String? value) => setField<String>('building_type', value);

  double? get buildingHeight => getField<double>('building_height');
  set buildingHeight(double? value) =>
      setField<double>('building_height', value);

  int? get floorsCount => getField<int>('floors_count');
  set floorsCount(int? value) => setField<int>('floors_count', value);

  int? get constructionYear => getField<int>('construction_year');
  set constructionYear(int? value) => setField<int>('construction_year', value);

  double? get buildingAreaSqm => getField<double>('building_area_sqm');
  set buildingAreaSqm(double? value) =>
      setField<double>('building_area_sqm', value);

  dynamic get buildingFootprint => getField<dynamic>('building_footprint');
  set buildingFootprint(dynamic value) =>
      setField<dynamic>('building_footprint', value);

  String? get constructionStatus => getField<String>('construction_status');
  set constructionStatus(String? value) =>
      setField<String>('construction_status', value);

  String? get occupancyStatus => getField<String>('occupancy_status');
  set occupancyStatus(String? value) =>
      setField<String>('occupancy_status', value);

  String? get structuralType => getField<String>('structural_type');
  set structuralType(String? value) =>
      setField<String>('structural_type', value);

  String? get architecturalStyle => getField<String>('architectural_style');
  set architecturalStyle(String? value) =>
      setField<String>('architectural_style', value);

  dynamic get paciResponse => getField<dynamic>('paci_response');
  set paciResponse(dynamic value) => setField<dynamic>('paci_response', value);

  DateTime? get lastSynced => getField<DateTime>('last_synced');
  set lastSynced(DateTime? value) => setField<DateTime>('last_synced', value);

  String? get syncStatus => getField<String>('sync_status');
  set syncStatus(String? value) => setField<String>('sync_status', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
