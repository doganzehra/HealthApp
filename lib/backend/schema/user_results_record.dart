import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_results_record.g.dart';

abstract class UserResultsRecord
    implements Built<UserResultsRecord, UserResultsRecordBuilder> {
  static Serializer<UserResultsRecord> get serializer =>
      _$userResultsRecordSerializer;

  @nullable
  String get uid;

  @nullable
  DateTime get date;

  @nullable
  @BuiltValueField(wireName: 'result_name')
  String get resultName;

  @nullable
  String get symptom;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UserResultsRecordBuilder builder) => builder
    ..uid = ''
    ..resultName = ''
    ..symptom = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_results');

  static Stream<UserResultsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UserResultsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UserResultsRecord._();
  factory UserResultsRecord([void Function(UserResultsRecordBuilder) updates]) =
      _$UserResultsRecord;

  static UserResultsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUserResultsRecordData({
  String uid,
  DateTime date,
  String resultName,
  String symptom,
}) =>
    serializers.toFirestore(
        UserResultsRecord.serializer,
        UserResultsRecord((u) => u
          ..uid = uid
          ..date = date
          ..resultName = resultName
          ..symptom = symptom));
