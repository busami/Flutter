import '../database.dart';

class PropertyAmenitiesTable extends SupabaseTable<PropertyAmenitiesRow> {
  @override
  String get tableName => 'property_amenities';

  @override
  PropertyAmenitiesRow createRow(Map<String, dynamic> data) =>
      PropertyAmenitiesRow(data);
}

class PropertyAmenitiesRow extends SupabaseDataRow {
  PropertyAmenitiesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PropertyAmenitiesTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get propertyId => getField<String>('property_id');
  set propertyId(String? value) => setField<String>('property_id', value);

  int? get bedrooms => getField<int>('bedrooms');
  set bedrooms(int? value) => setField<int>('bedrooms', value);

  int? get bathrooms => getField<int>('bathrooms');
  set bathrooms(int? value) => setField<int>('bathrooms', value);

  bool? get swimmingPool => getField<bool>('swimming_pool');
  set swimmingPool(bool? value) => setField<bool>('swimming_pool', value);

  bool? get gym => getField<bool>('gym');
  set gym(bool? value) => setField<bool>('gym', value);

  int? get parkingSpaces => getField<int>('parking_spaces');
  set parkingSpaces(int? value) => setField<int>('parking_spaces', value);

  bool? get maidRoom => getField<bool>('maid_room');
  set maidRoom(bool? value) => setField<bool>('maid_room', value);

  bool? get driverRoom => getField<bool>('driver_room');
  set driverRoom(bool? value) => setField<bool>('driver_room', value);

  bool? get centralAc => getField<bool>('central_ac');
  set centralAc(bool? value) => setField<bool>('central_ac', value);

  bool? get elevator => getField<bool>('elevator');
  set elevator(bool? value) => setField<bool>('elevator', value);

  bool? get security24h => getField<bool>('security_24h');
  set security24h(bool? value) => setField<bool>('security_24h', value);

  bool? get diwaniya => getField<bool>('diwaniya');
  set diwaniya(bool? value) => setField<bool>('diwaniya', value);

  bool? get seaView => getField<bool>('sea_view');
  set seaView(bool? value) => setField<bool>('sea_view', value);

  bool? get mainRoadAccess => getField<bool>('main_road_access');
  set mainRoadAccess(bool? value) => setField<bool>('main_road_access', value);

  bool? get cornerPlot => getField<bool>('corner_plot');
  set cornerPlot(bool? value) => setField<bool>('corner_plot', value);

  bool? get garden => getField<bool>('garden');
  set garden(bool? value) => setField<bool>('garden', value);

  bool? get privateEntrance => getField<bool>('private_entrance');
  set privateEntrance(bool? value) => setField<bool>('private_entrance', value);

  bool? get storageRoom => getField<bool>('storage_room');
  set storageRoom(bool? value) => setField<bool>('storage_room', value);

  bool? get laundryRoom => getField<bool>('laundry_room');
  set laundryRoom(bool? value) => setField<bool>('laundry_room', value);

  bool? get kitchenEquipped => getField<bool>('kitchen_equipped');
  set kitchenEquipped(bool? value) => setField<bool>('kitchen_equipped', value);

  bool? get balcony => getField<bool>('balcony');
  set balcony(bool? value) => setField<bool>('balcony', value);

  bool? get roofAccess => getField<bool>('roof_access');
  set roofAccess(bool? value) => setField<bool>('roof_access', value);

  bool? get basement => getField<bool>('basement');
  set basement(bool? value) => setField<bool>('basement', value);

  bool? get electricityMeter => getField<bool>('electricity_meter');
  set electricityMeter(bool? value) =>
      setField<bool>('electricity_meter', value);

  bool? get waterMeter => getField<bool>('water_meter');
  set waterMeter(bool? value) => setField<bool>('water_meter', value);

  bool? get internetReady => getField<bool>('internet_ready');
  set internetReady(bool? value) => setField<bool>('internet_ready', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
