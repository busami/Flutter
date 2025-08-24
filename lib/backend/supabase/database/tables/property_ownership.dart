import '../database.dart';

class PropertyOwnershipTable extends SupabaseTable<PropertyOwnershipRow> {
  @override
  String get tableName => 'property_ownership';

  @override
  PropertyOwnershipRow createRow(Map<String, dynamic> data) =>
      PropertyOwnershipRow(data);
}

class PropertyOwnershipRow extends SupabaseDataRow {
  PropertyOwnershipRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PropertyOwnershipTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get propertyId => getField<String>('property_id');
  set propertyId(String? value) => setField<String>('property_id', value);

  String? get ownerName => getField<String>('owner_name');
  set ownerName(String? value) => setField<String>('owner_name', value);

  String? get ownerPhone => getField<String>('owner_phone');
  set ownerPhone(String? value) => setField<String>('owner_phone', value);

  String? get ownerCivilId => getField<String>('owner_civil_id');
  set ownerCivilId(String? value) => setField<String>('owner_civil_id', value);

  String? get ownerClientId => getField<String>('owner_client_id');
  set ownerClientId(String? value) =>
      setField<String>('owner_client_id', value);

  DateTime? get ownershipStartDate =>
      getField<DateTime>('ownership_start_date');
  set ownershipStartDate(DateTime? value) =>
      setField<DateTime>('ownership_start_date', value);

  DateTime? get ownershipEndDate => getField<DateTime>('ownership_end_date');
  set ownershipEndDate(DateTime? value) =>
      setField<DateTime>('ownership_end_date', value);

  String? get documentType => getField<String>('document_type');
  set documentType(String? value) => setField<String>('document_type', value);

  String? get documentNumber => getField<String>('document_number');
  set documentNumber(String? value) =>
      setField<String>('document_number', value);

  DateTime? get documentDate => getField<DateTime>('document_date');
  set documentDate(DateTime? value) =>
      setField<DateTime>('document_date', value);

  String? get documentIssuer => getField<String>('document_issuer');
  set documentIssuer(String? value) =>
      setField<String>('document_issuer', value);

  int? get purchasePrice => getField<int>('purchase_price');
  set purchasePrice(int? value) => setField<int>('purchase_price', value);

  String? get transferType => getField<String>('transfer_type');
  set transferType(String? value) => setField<String>('transfer_type', value);

  double? get ownershipPercentage => getField<double>('ownership_percentage');
  set ownershipPercentage(double? value) =>
      setField<double>('ownership_percentage', value);

  bool? get isPrimaryOwner => getField<bool>('is_primary_owner');
  set isPrimaryOwner(bool? value) => setField<bool>('is_primary_owner', value);

  dynamic get coOwners => getField<dynamic>('co_owners');
  set coOwners(dynamic value) => setField<dynamic>('co_owners', value);

  bool? get isVerified => getField<bool>('is_verified');
  set isVerified(bool? value) => setField<bool>('is_verified', value);

  String? get verifiedBy => getField<String>('verified_by');
  set verifiedBy(String? value) => setField<String>('verified_by', value);

  DateTime? get verifiedAt => getField<DateTime>('verified_at');
  set verifiedAt(DateTime? value) => setField<DateTime>('verified_at', value);

  String? get verificationNotes => getField<String>('verification_notes');
  set verificationNotes(String? value) =>
      setField<String>('verification_notes', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
