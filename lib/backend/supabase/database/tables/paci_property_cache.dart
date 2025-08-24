import '../database.dart';

class PaciPropertyCacheTable extends SupabaseTable<PaciPropertyCacheRow> {
  @override
  String get tableName => 'paci_property_cache';

  @override
  PaciPropertyCacheRow createRow(Map<String, dynamic> data) =>
      PaciPropertyCacheRow(data);
}

class PaciPropertyCacheRow extends SupabaseDataRow {
  PaciPropertyCacheRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PaciPropertyCacheTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get paciNumber => getField<String>('paci_number');
  set paciNumber(String? value) => setField<String>('paci_number', value);

  String? get governorateAr => getField<String>('governorate_ar');
  set governorateAr(String? value) => setField<String>('governorate_ar', value);

  String? get governorateEn => getField<String>('governorate_en');
  set governorateEn(String? value) => setField<String>('governorate_en', value);

  String? get areaAr => getField<String>('area_ar');
  set areaAr(String? value) => setField<String>('area_ar', value);

  String? get areaEn => getField<String>('area_en');
  set areaEn(String? value) => setField<String>('area_en', value);

  String? get blockNumber => getField<String>('block_number');
  set blockNumber(String? value) => setField<String>('block_number', value);

  String? get plotNumber => getField<String>('plot_number');
  set plotNumber(String? value) => setField<String>('plot_number', value);

  String? get street => getField<String>('street');
  set street(String? value) => setField<String>('street', value);

  String? get building => getField<String>('building');
  set building(String? value) => setField<String>('building', value);

  double? get areaSqm => getField<double>('area_sqm');
  set areaSqm(double? value) => setField<double>('area_sqm', value);

  double? get latitude => getField<double>('latitude');
  set latitude(double? value) => setField<double>('latitude', value);

  double? get longitude => getField<double>('longitude');
  set longitude(double? value) => setField<double>('longitude', value);

  dynamic get paciResponse => getField<dynamic>('paci_response');
  set paciResponse(dynamic value) => setField<dynamic>('paci_response', value);

  DateTime? get lastSynced => getField<DateTime>('last_synced');
  set lastSynced(DateTime? value) => setField<DateTime>('last_synced', value);

  String? get syncStatus => getField<String>('sync_status');
  set syncStatus(String? value) => setField<String>('sync_status', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get ownerCivilId => getField<String>('owner_civil_id');
  set ownerCivilId(String? value) => setField<String>('owner_civil_id', value);

  DateTime? get registrationDate => getField<DateTime>('registration_date');
  set registrationDate(DateTime? value) =>
      setField<DateTime>('registration_date', value);

  String? get propertyUse => getField<String>('property_use');
  set propertyUse(String? value) => setField<String>('property_use', value);

  String? get zoningClassification => getField<String>('zoning_classification');
  set zoningClassification(String? value) =>
      setField<String>('zoning_classification', value);

  String? get landUse => getField<String>('land_use');
  set landUse(String? value) => setField<String>('land_use', value);

  String? get municipalNumber => getField<String>('municipal_number');
  set municipalNumber(String? value) =>
      setField<String>('municipal_number', value);
}
