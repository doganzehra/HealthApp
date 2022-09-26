// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_foods_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserFoodsRecord> _$userFoodsRecordSerializer =
    new _$UserFoodsRecordSerializer();

class _$UserFoodsRecordSerializer
    implements StructuredSerializer<UserFoodsRecord> {
  @override
  final Iterable<Type> types = const [UserFoodsRecord, _$UserFoodsRecord];
  @override
  final String wireName = 'UserFoodsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UserFoodsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.foodCategory;
    if (value != null) {
      result
        ..add('food_category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.foodName;
    if (value != null) {
      result
        ..add('food_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  UserFoodsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserFoodsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'food_category':
          result.foodCategory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'food_name':
          result.foodName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$UserFoodsRecord extends UserFoodsRecord {
  @override
  final String uid;
  @override
  final DateTime date;
  @override
  final String foodCategory;
  @override
  final String foodName;
  @override
  final DocumentReference<Object> reference;

  factory _$UserFoodsRecord([void Function(UserFoodsRecordBuilder) updates]) =>
      (new UserFoodsRecordBuilder()..update(updates)).build();

  _$UserFoodsRecord._(
      {this.uid, this.date, this.foodCategory, this.foodName, this.reference})
      : super._();

  @override
  UserFoodsRecord rebuild(void Function(UserFoodsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserFoodsRecordBuilder toBuilder() =>
      new UserFoodsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserFoodsRecord &&
        uid == other.uid &&
        date == other.date &&
        foodCategory == other.foodCategory &&
        foodName == other.foodName &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, uid.hashCode), date.hashCode),
                foodCategory.hashCode),
            foodName.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserFoodsRecord')
          ..add('uid', uid)
          ..add('date', date)
          ..add('foodCategory', foodCategory)
          ..add('foodName', foodName)
          ..add('reference', reference))
        .toString();
  }
}

class UserFoodsRecordBuilder
    implements Builder<UserFoodsRecord, UserFoodsRecordBuilder> {
  _$UserFoodsRecord _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  String _foodCategory;
  String get foodCategory => _$this._foodCategory;
  set foodCategory(String foodCategory) => _$this._foodCategory = foodCategory;

  String _foodName;
  String get foodName => _$this._foodName;
  set foodName(String foodName) => _$this._foodName = foodName;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UserFoodsRecordBuilder() {
    UserFoodsRecord._initializeBuilder(this);
  }

  UserFoodsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _date = $v.date;
      _foodCategory = $v.foodCategory;
      _foodName = $v.foodName;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserFoodsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserFoodsRecord;
  }

  @override
  void update(void Function(UserFoodsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserFoodsRecord build() {
    final _$result = _$v ??
        new _$UserFoodsRecord._(
            uid: uid,
            date: date,
            foodCategory: foodCategory,
            foodName: foodName,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
