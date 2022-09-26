import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_symptoms_record.g.dart';

abstract class UserSymptomsRecord
    implements Built<UserSymptomsRecord, UserSymptomsRecordBuilder> {
  static Serializer<UserSymptomsRecord> get serializer =>
      _$userSymptomsRecordSerializer;

  @nullable
  String get uid;

  @nullable
  DateTime get date;

  @nullable
  @BuiltValueField(wireName: 'symptom_name')
  String get symptomName;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UserSymptomsRecordBuilder builder) => builder
    ..uid = ''
    ..symptomName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_symptoms');

  static Stream<UserSymptomsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UserSymptomsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  UserSymptomsRecord._();
  factory UserSymptomsRecord(
          [void Function(UserSymptomsRecordBuilder) updates]) =
      _$UserSymptomsRecord;

  static UserSymptomsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUserSymptomsRecordData({
  String uid,
  DateTime date,
  String symptomName,
}) =>
    serializers.toFirestore(
        UserSymptomsRecord.serializer,
        UserSymptomsRecord((u) => u
          ..uid = uid
          ..date = date
          ..symptomName = symptomName));
