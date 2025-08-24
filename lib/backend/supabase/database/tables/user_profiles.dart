import '../database.dart';

class UserProfilesTable extends SupabaseTable<UserProfilesRow> {
  @override
  String get tableName => 'user_profiles';

  @override
  UserProfilesRow createRow(Map<String, dynamic> data) => UserProfilesRow(data);
}

class UserProfilesRow extends SupabaseDataRow {
  UserProfilesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserProfilesTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get calledName => getField<String>('called_name');
  set calledName(String? value) => setField<String>('called_name', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  bool? get isVerified => getField<bool>('is_verified');
  set isVerified(bool? value) => setField<bool>('is_verified', value);

  String? get preferredLanguage => getField<String>('preferred_language');
  set preferredLanguage(String? value) =>
      setField<String>('preferred_language', value);

  String? get preferredGovernorate => getField<String>('preferred_governorate');
  set preferredGovernorate(String? value) =>
      setField<String>('preferred_governorate', value);

  dynamic get notificationSettings =>
      getField<dynamic>('notification_settings');
  set notificationSettings(dynamic value) =>
      setField<dynamic>('notification_settings', value);

  String? get employeeId => getField<String>('employee_id');
  set employeeId(String? value) => setField<String>('employee_id', value);

  String? get branchId => getField<String>('branch_id');
  set branchId(String? value) => setField<String>('branch_id', value);

  dynamic get specialization => getField<dynamic>('specialization');
  set specialization(dynamic value) =>
      setField<dynamic>('specialization', value);

  DateTime? get lastLogin => getField<DateTime>('last_login');
  set lastLogin(DateTime? value) => setField<DateTime>('last_login', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  bool? get twoFactorEnabled => getField<bool>('two_factor_enabled');
  set twoFactorEnabled(bool? value) =>
      setField<bool>('two_factor_enabled', value);

  String? get twoFactorSecret => getField<String>('two_factor_secret');
  set twoFactorSecret(String? value) =>
      setField<String>('two_factor_secret', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get role => getField<String>('role');
  set role(String? value) => setField<String>('role', value);

  dynamic get preferences => getField<dynamic>('preferences');
  set preferences(dynamic value) => setField<dynamic>('preferences', value);

  String? get avatarUrl => getField<String>('avatar_url');
  set avatarUrl(String? value) => setField<String>('avatar_url', value);

  double? get rating => getField<double>('rating');
  set rating(double? value) => setField<double>('rating', value);

  int? get totalDeals => getField<int>('total_deals');
  set totalDeals(int? value) => setField<int>('total_deals', value);
}
