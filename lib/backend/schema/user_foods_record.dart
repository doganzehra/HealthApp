import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_foods_record.g.dart';

abstract class UserFoodsRecord
    implements Built<UserFoodsRecord, UserFoodsRecordBuilder> {
  static Serializer<UserFoodsRecord> get serializer =>
      _$userFoodsRecordSerializer;

  @nullable
  String get uid;

  @nullable
  DateTime get date;

  @nullable
  @BuiltValueField(wireName: 'food_category')
  String get foodCategory;

  @nullable
  @BuiltValueField(wireName: 'food_name')
  String get foodName;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UserFoodsRecordBuilder builder) => builder
    ..uid = ''
    ..foodCategory = ''
    ..foodName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_foods');

  static Stream<UserFoodsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UserFoodsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UserFoodsRecord._();
  factory UserFoodsRecord([void Function(UserFoodsRecordBuilder) updates]) =
      _$UserFoodsRecord;

  static UserFoodsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUserFoodsRecordData({
  String uid,
  DateTime date,
  String foodCategory,
  String foodName,
}) =>
    serializers.toFirestore(
        UserFoodsRecord.serializer,
        UserFoodsRecord((u) => u
          ..uid = uid
          ..date = date
          ..foodCategory = foodCategory
          ..foodName = foodName));
