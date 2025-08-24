import '../database.dart';

class NotificationsTable extends SupabaseTable<NotificationsRow> {
  @override
  String get tableName => 'notifications';

  @override
  NotificationsRow createRow(Map<String, dynamic> data) =>
      NotificationsRow(data);
}

class NotificationsRow extends SupabaseDataRow {
  NotificationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NotificationsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get titleAr => getField<String>('title_ar');
  set titleAr(String? value) => setField<String>('title_ar', value);

  String? get titleEn => getField<String>('title_en');
  set titleEn(String? value) => setField<String>('title_en', value);

  String? get bodyAr => getField<String>('body_ar');
  set bodyAr(String? value) => setField<String>('body_ar', value);

  String? get bodyEn => getField<String>('body_en');
  set bodyEn(String? value) => setField<String>('body_en', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get entityType => getField<String>('entity_type');
  set entityType(String? value) => setField<String>('entity_type', value);

  String? get entityId => getField<String>('entity_id');
  set entityId(String? value) => setField<String>('entity_id', value);

  List<String> get channels => getListField<String>('channels');
  set channels(List<String>? value) => setListField<String>('channels', value);

  bool? get isRead => getField<bool>('is_read');
  set isRead(bool? value) => setField<bool>('is_read', value);

  DateTime? get readAt => getField<DateTime>('read_at');
  set readAt(DateTime? value) => setField<DateTime>('read_at', value);

  bool? get smsSent => getField<bool>('sms_sent');
  set smsSent(bool? value) => setField<bool>('sms_sent', value);

  DateTime? get smsSentAt => getField<DateTime>('sms_sent_at');
  set smsSentAt(DateTime? value) => setField<DateTime>('sms_sent_at', value);

  bool? get whatsappSent => getField<bool>('whatsapp_sent');
  set whatsappSent(bool? value) => setField<bool>('whatsapp_sent', value);

  DateTime? get whatsappSentAt => getField<DateTime>('whatsapp_sent_at');
  set whatsappSentAt(DateTime? value) =>
      setField<DateTime>('whatsapp_sent_at', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
