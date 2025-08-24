import '../database.dart';

class BrokerageDetailsTable extends SupabaseTable<BrokerageDetailsRow> {
  @override
  String get tableName => 'brokerage_details';

  @override
  BrokerageDetailsRow createRow(Map<String, dynamic> data) =>
      BrokerageDetailsRow(data);
}

class BrokerageDetailsRow extends SupabaseDataRow {
  BrokerageDetailsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BrokerageDetailsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get propertyId => getField<String>('property_id');
  set propertyId(String? value) => setField<String>('property_id', value);

  String? get propertyStatus => getField<String>('property_status');
  set propertyStatus(String? value) =>
      setField<String>('property_status', value);

  int? get askingPrice => getField<int>('asking_price');
  set askingPrice(int? value) => setField<int>('asking_price', value);

  int? get finalSalePrice => getField<int>('final_sale_price');
  set finalSalePrice(int? value) => setField<int>('final_sale_price', value);

  double? get pricePerSqm => getField<double>('price_per_sqm');
  set pricePerSqm(double? value) => setField<double>('price_per_sqm', value);

  String? get listingType => getField<String>('listing_type');
  set listingType(String? value) => setField<String>('listing_type', value);

  String? get visibility => getField<String>('visibility');
  set visibility(String? value) => setField<String>('visibility', value);

  String? get approvalStatus => getField<String>('approval_status');
  set approvalStatus(String? value) =>
      setField<String>('approval_status', value);

  bool? get isFeatured => getField<bool>('is_featured');
  set isFeatured(bool? value) => setField<bool>('is_featured', value);

  DateTime? get featuredUntil => getField<DateTime>('featured_until');
  set featuredUntil(DateTime? value) =>
      setField<DateTime>('featured_until', value);

  bool? get exclusiveListing => getField<bool>('exclusive_listing');
  set exclusiveListing(bool? value) =>
      setField<bool>('exclusive_listing', value);

  DateTime? get exclusiveUntil => getField<DateTime>('exclusive_until');
  set exclusiveUntil(DateTime? value) =>
      setField<DateTime>('exclusive_until', value);

  double? get commissionRate => getField<double>('commission_rate');
  set commissionRate(double? value) =>
      setField<double>('commission_rate', value);

  int? get commissionAmount => getField<int>('commission_amount');
  set commissionAmount(int? value) => setField<int>('commission_amount', value);

  bool? get isRented => getField<bool>('is_rented');
  set isRented(bool? value) => setField<bool>('is_rented', value);

  int? get rentalPrice => getField<int>('rental_price');
  set rentalPrice(int? value) => setField<int>('rental_price', value);

  String? get rentalPeriod => getField<String>('rental_period');
  set rentalPeriod(String? value) => setField<String>('rental_period', value);

  String? get marketingNotes => getField<String>('marketing_notes');
  set marketingNotes(String? value) =>
      setField<String>('marketing_notes', value);

  String? get propertyDescription => getField<String>('property_description');
  set propertyDescription(String? value) =>
      setField<String>('property_description', value);

  String? get propertyHighlights => getField<String>('property_highlights');
  set propertyHighlights(String? value) =>
      setField<String>('property_highlights', value);

  DateTime? get listedDate => getField<DateTime>('listed_date');
  set listedDate(DateTime? value) => setField<DateTime>('listed_date', value);

  DateTime? get firstShowingDate => getField<DateTime>('first_showing_date');
  set firstShowingDate(DateTime? value) =>
      setField<DateTime>('first_showing_date', value);

  DateTime? get lastShownDate => getField<DateTime>('last_shown_date');
  set lastShownDate(DateTime? value) =>
      setField<DateTime>('last_shown_date', value);

  DateTime? get offerReceivedDate => getField<DateTime>('offer_received_date');
  set offerReceivedDate(DateTime? value) =>
      setField<DateTime>('offer_received_date', value);

  DateTime? get contractDate => getField<DateTime>('contract_date');
  set contractDate(DateTime? value) =>
      setField<DateTime>('contract_date', value);

  DateTime? get closingDate => getField<DateTime>('closing_date');
  set closingDate(DateTime? value) => setField<DateTime>('closing_date', value);

  String? get assignedBrokerId => getField<String>('assigned_broker_id');
  set assignedBrokerId(String? value) =>
      setField<String>('assigned_broker_id', value);

  String? get listingAgentId => getField<String>('listing_agent_id');
  set listingAgentId(String? value) =>
      setField<String>('listing_agent_id', value);

  String? get sellingAgentId => getField<String>('selling_agent_id');
  set sellingAgentId(String? value) =>
      setField<String>('selling_agent_id', value);

  String? get buyerAgentId => getField<String>('buyer_agent_id');
  set buyerAgentId(String? value) => setField<String>('buyer_agent_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
