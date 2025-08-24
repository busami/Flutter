import '../database.dart';

class PropertiesTable extends SupabaseTable<PropertiesRow> {
  @override
  String get tableName => 'properties';

  @override
  PropertiesRow createRow(Map<String, dynamic> data) => PropertiesRow(data);
}

class PropertiesRow extends SupabaseDataRow {
  PropertiesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PropertiesTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  int? get sequenceNumber => getField<int>('sequence_number');
  set sequenceNumber(int? value) => setField<int>('sequence_number', value);

  String? get paciNumber => getField<String>('paci_number');
  set paciNumber(String? value) => setField<String>('paci_number', value);

  String? get propertyType => getField<String>('property_type');
  set propertyType(String? value) => setField<String>('property_type', value);

  String? get businessType => getField<String>('business_type');
  set businessType(String? value) => setField<String>('business_type', value);

  String? get governorate => getField<String>('governorate');
  set governorate(String? value) => setField<String>('governorate', value);

  String? get area => getField<String>('area');
  set area(String? value) => setField<String>('area', value);

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

  String? get nearestLandmark => getField<String>('nearest_landmark');
  set nearestLandmark(String? value) =>
      setField<String>('nearest_landmark', value);

  String? get ownerName => getField<String>('owner_name');
  set ownerName(String? value) => setField<String>('owner_name', value);

  String? get ownerPhone => getField<String>('owner_phone');
  set ownerPhone(String? value) => setField<String>('owner_phone', value);

  String? get ownerClientId => getField<String>('owner_client_id');
  set ownerClientId(String? value) =>
      setField<String>('owner_client_id', value);

  String? get documentNumber => getField<String>('document_number');
  set documentNumber(String? value) =>
      setField<String>('document_number', value);

  DateTime? get documentDate => getField<DateTime>('document_date');
  set documentDate(DateTime? value) =>
      setField<DateTime>('document_date', value);

  int? get bedrooms => getField<int>('bedrooms');
  set bedrooms(int? value) => setField<int>('bedrooms', value);

  int? get bathrooms => getField<int>('bathrooms');
  set bathrooms(int? value) => setField<int>('bathrooms', value);

  int? get floors => getField<int>('floors');
  set floors(int? value) => setField<int>('floors', value);

  int? get buildingAge => getField<int>('building_age');
  set buildingAge(int? value) => setField<int>('building_age', value);

  int? get parkingSpaces => getField<int>('parking_spaces');
  set parkingSpaces(int? value) => setField<int>('parking_spaces', value);

  String? get propertyCondition => getField<String>('property_condition');
  set propertyCondition(String? value) =>
      setField<String>('property_condition', value);

  dynamic get propertyPhotos => getField<dynamic>('property_photos');
  set propertyPhotos(dynamic value) =>
      setField<dynamic>('property_photos', value);

  String? get virtualTourUrl => getField<String>('virtual_tour_url');
  set virtualTourUrl(String? value) =>
      setField<String>('virtual_tour_url', value);

  String? get floorPlanUrl => getField<String>('floor_plan_url');
  set floorPlanUrl(String? value) => setField<String>('floor_plan_url', value);

  dynamic get additionalFeatures => getField<dynamic>('additional_features');
  set additionalFeatures(dynamic value) =>
      setField<dynamic>('additional_features', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);

  String? get searchVector => getField<String>('search_vector');
  set searchVector(String? value) => setField<String>('search_vector', value);

  int? get viewCount => getField<int>('view_count');
  set viewCount(int? value) => setField<int>('view_count', value);

  int? get saveCount => getField<int>('save_count');
  set saveCount(int? value) => setField<int>('save_count', value);

  int? get inquiryCount => getField<int>('inquiry_count');
  set inquiryCount(int? value) => setField<int>('inquiry_count', value);

  String? get currentOwnershipId => getField<String>('current_ownership_id');
  set currentOwnershipId(String? value) =>
      setField<String>('current_ownership_id', value);

  bool? get hasMultipleOwners => getField<bool>('has_multiple_owners');
  set hasMultipleOwners(bool? value) =>
      setField<bool>('has_multiple_owners', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get visibility => getField<String>('visibility');
  set visibility(String? value) => setField<String>('visibility', value);

  String? get referenceNumber => getField<String>('reference_number');
  set referenceNumber(String? value) =>
      setField<String>('reference_number', value);

  String? get ownershipType => getField<String>('ownership_type');
  set ownershipType(String? value) => setField<String>('ownership_type', value);

  String? get propertyTypeId => getField<String>('property_type_id');
  set propertyTypeId(String? value) =>
      setField<String>('property_type_id', value);

  String? get governorateId => getField<String>('governorate_id');
  set governorateId(String? value) => setField<String>('governorate_id', value);

  String? get areaId => getField<String>('area_id');
  set areaId(String? value) => setField<String>('area_id', value);

  String? get streetId => getField<String>('street_id');
  set streetId(String? value) => setField<String>('street_id', value);

  String? get buildingNumber => getField<String>('building_number');
  set buildingNumber(String? value) =>
      setField<String>('building_number', value);

  String? get floorNumber => getField<String>('floor_number');
  set floorNumber(String? value) => setField<String>('floor_number', value);

  String? get unitNumber => getField<String>('unit_number');
  set unitNumber(String? value) => setField<String>('unit_number', value);

  double? get landAreaSqm => getField<double>('land_area_sqm');
  set landAreaSqm(double? value) => setField<double>('land_area_sqm', value);

  double? get builtAreaSqm => getField<double>('built_area_sqm');
  set builtAreaSqm(double? value) => setField<double>('built_area_sqm', value);

  double? get buildingRatio => getField<double>('building_ratio');
  set buildingRatio(double? value) => setField<double>('building_ratio', value);

  int? get numberOfFloors => getField<int>('number_of_floors');
  set numberOfFloors(int? value) => setField<int>('number_of_floors', value);

  int? get numberOfUnits => getField<int>('number_of_units');
  set numberOfUnits(int? value) => setField<int>('number_of_units', value);

  int? get yearBuilt => getField<int>('year_built');
  set yearBuilt(int? value) => setField<int>('year_built', value);

  double? get askingPrice => getField<double>('asking_price');
  set askingPrice(double? value) => setField<double>('asking_price', value);

  double? get soldPrice => getField<double>('sold_price');
  set soldPrice(double? value) => setField<double>('sold_price', value);

  double? get rentalIncome => getField<double>('rental_income');
  set rentalIncome(double? value) => setField<double>('rental_income', value);

  String? get titleAr => getField<String>('title_ar');
  set titleAr(String? value) => setField<String>('title_ar', value);

  String? get titleEn => getField<String>('title_en');
  set titleEn(String? value) => setField<String>('title_en', value);

  String? get descriptionAr => getField<String>('description_ar');
  set descriptionAr(String? value) => setField<String>('description_ar', value);

  String? get descriptionEn => getField<String>('description_en');
  set descriptionEn(String? value) => setField<String>('description_en', value);

  List<String> get featuresAr => getListField<String>('features_ar');
  set featuresAr(List<String>? value) =>
      setListField<String>('features_ar', value);

  List<String> get featuresEn => getListField<String>('features_en');
  set featuresEn(List<String>? value) =>
      setListField<String>('features_en', value);

  String? get ownerId => getField<String>('owner_id');
  set ownerId(String? value) => setField<String>('owner_id', value);

  String? get brokerId => getField<String>('broker_id');
  set brokerId(String? value) => setField<String>('broker_id', value);

  DateTime? get listingDate => getField<DateTime>('listing_date');
  set listingDate(DateTime? value) => setField<DateTime>('listing_date', value);

  DateTime? get availableDate => getField<DateTime>('available_date');
  set availableDate(DateTime? value) =>
      setField<DateTime>('available_date', value);

  DateTime? get soldDate => getField<DateTime>('sold_date');
  set soldDate(DateTime? value) => setField<DateTime>('sold_date', value);

  DateTime? get contractStartDate => getField<DateTime>('contract_start_date');
  set contractStartDate(DateTime? value) =>
      setField<DateTime>('contract_start_date', value);

  DateTime? get contractEndDate => getField<DateTime>('contract_end_date');
  set contractEndDate(DateTime? value) =>
      setField<DateTime>('contract_end_date', value);

  bool? get isFeatured => getField<bool>('is_featured');
  set isFeatured(bool? value) => setField<bool>('is_featured', value);

  bool? get isExclusive => getField<bool>('is_exclusive');
  set isExclusive(bool? value) => setField<bool>('is_exclusive', value);

  bool? get allowCommissionSharing =>
      getField<bool>('allow_commission_sharing');
  set allowCommissionSharing(bool? value) =>
      setField<bool>('allow_commission_sharing', value);

  double? get commissionPercentage => getField<double>('commission_percentage');
  set commissionPercentage(double? value) =>
      setField<double>('commission_percentage', value);

  String? get updatedBy => getField<String>('updated_by');
  set updatedBy(String? value) => setField<String>('updated_by', value);
}
