import '../database.dart';

class BuildingRatiosTable extends SupabaseTable<BuildingRatiosRow> {
  @override
  String get tableName => 'building_ratios';

  @override
  BuildingRatiosRow createRow(Map<String, dynamic> data) =>
      BuildingRatiosRow(data);
}

class BuildingRatiosRow extends SupabaseDataRow {
  BuildingRatiosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BuildingRatiosTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get propertyTypeId => getField<String>('property_type_id');
  set propertyTypeId(String? value) =>
      setField<String>('property_type_id', value);

  String? get areaId => getField<String>('area_id');
  set areaId(String? value) => setField<String>('area_id', value);

  String? get streetId => getField<String>('street_id');
  set streetId(String? value) => setField<String>('street_id', value);

  String? get floorType => getField<String>('floor_type');
  set floorType(String? value) => setField<String>('floor_type', value);

  double? get ratio => getField<double>('ratio');
  set ratio(double? value) => setField<double>('ratio', value);

  double? get minAreaSqm => getField<double>('min_area_sqm');
  set minAreaSqm(double? value) => setField<double>('min_area_sqm', value);

  String? get conditionsAr => getField<String>('conditions_ar');
  set conditionsAr(String? value) => setField<String>('conditions_ar', value);

  String? get conditionsEn => getField<String>('conditions_en');
  set conditionsEn(String? value) => setField<String>('conditions_en', value);

  bool? get isInsideKuwaitCity => getField<bool>('is_inside_kuwait_city');
  set isInsideKuwaitCity(bool? value) =>
      setField<bool>('is_inside_kuwait_city', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
