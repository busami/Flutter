import '../database.dart';

class PaciAddressesTable extends SupabaseTable<PaciAddressesRow> {
  @override
  String get tableName => 'paci_addresses';

  @override
  PaciAddressesRow createRow(Map<String, dynamic> data) =>
      PaciAddressesRow(data);
}

class PaciAddressesRow extends SupabaseDataRow {
  PaciAddressesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PaciAddressesTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get paciNumber => getField<String>('paci_number');
  set paciNumber(String? value) => setField<String>('paci_number', value);

  String? get addressAr => getField<String>('address_ar');
  set addressAr(String? value) => setField<String>('address_ar', value);

  String? get addressEn => getField<String>('address_en');
  set addressEn(String? value) => setField<String>('address_en', value);

  String? get governorateAr => getField<String>('governorate_ar');
  set governorateAr(String? value) => setField<String>('governorate_ar', value);

  String? get governorateEn => getField<String>('governorate_en');
  set governorateEn(String? value) => setField<String>('governorate_en', value);

  String? get areaAr => getField<String>('area_ar');
  set areaAr(String? value) => setField<String>('area_ar', value);

  String? get areaEn => getField<String>('area_en');
  set areaEn(String? value) => setField<String>('area_en', value);

  String? get block => getField<String>('block');
  set block(String? value) => setField<String>('block', value);

  String? get street => getField<String>('street');
  set street(String? value) => setField<String>('street', value);

  String? get building => getField<String>('building');
  set building(String? value) => setField<String>('building', value);

  double? get latitude => getField<double>('latitude');
  set latitude(double? value) => setField<double>('latitude', value);

  double? get longitude => getField<double>('longitude');
  set longitude(double? value) => setField<double>('longitude', value);

  dynamic get attributes => getField<dynamic>('attributes');
  set attributes(dynamic value) => setField<dynamic>('attributes', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get paciQrCode => getField<String>('paci_qr_code');
  set paciQrCode(String? value) => setField<String>('paci_qr_code', value);

  dynamic get mapBounds => getField<dynamic>('map_bounds');
  set mapBounds(dynamic value) => setField<dynamic>('map_bounds', value);

  String? get paciZoneId => getField<String>('paci_zone_id');
  set paciZoneId(String? value) => setField<String>('paci_zone_id', value);

  DateTime? get verifiedAt => getField<DateTime>('verified_at');
  set verifiedAt(DateTime? value) => setField<DateTime>('verified_at', value);

  String? get verificationSource => getField<String>('verification_source');
  set verificationSource(String? value) =>
      setField<String>('verification_source', value);
}
