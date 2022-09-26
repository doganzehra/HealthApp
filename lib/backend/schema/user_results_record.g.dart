// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_results_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserResultsRecord> _$userResultsRecordSerializer =
    new _$UserResultsRecordSerializer();

class _$UserResultsRecordSerializer
    implements StructuredSerializer<UserResultsRecord> {
  @override
  final Iterable<Type> types = const [UserResultsRecord, _$UserResultsRecord];
  @override
  final String wireName = 'UserResultsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UserResultsRecord object,
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
    value = object.resultName;
    if (value != null) {
      result
        ..add('result_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.symptom;
    if (value != null) {
      result
        ..add('symptom')
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
  UserResultsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserResultsRecordBuilder();

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
        case 'result_name':
          result.resultName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'symptom':
          result.symptom = serializers.deserialize(value,
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

class _$UserResultsRecord extends UserResultsRecord {
  @override
  final String uid;
  @override
  final DateTime date;
  @override
  final String resultName;
  @override
  final String symptom;
  @override
  final DocumentReference<Object> reference;

  factory _$UserResultsRecord(
          [void Function(UserResultsRecordBuilder) updates]) =>
      (new UserResultsRecordBuilder()..update(updates)).build();

  _$UserResultsRecord._(
      {this.uid, this.date, this.resultName, this.symptom, this.reference})
      : super._();

  @override
  UserResultsRecord rebuild(void Function(UserResultsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserResultsRecordBuilder toBuilder() =>
      new UserResultsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserResultsRecord &&
        uid == other.uid &&
        date == other.date &&
        resultName == other.resultName &&
        symptom == other.symptom &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, uid.hashCode), date.hashCode), resultName.hashCode),
            symptom.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserResultsRecord')
          ..add('uid', uid)
          ..add('date', date)
          ..add('resultName', resultName)
          ..add('symptom', symptom)
          ..add('reference', reference))
        .toString();
  }
}

class UserResultsRecordBuilder
    implements Builder<UserResultsRecord, UserResultsRecordBuilder> {
  _$UserResultsRecord _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  String _resultName;
  String get resultName => _$this._resultName;
  set resultName(String resultName) => _$this._resultName = resultName;

  String _symptom;
  String get symptom => _$this._symptom;
  set symptom(String symptom) => _$this._symptom = symptom;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UserResultsRecordBuilder() {
    UserResultsRecord._initializeBuilder(this);
  }

  UserResultsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _date = $v.date;
      _resultName = $v.resultName;
      _symptom = $v.symptom;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserResultsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserResultsRecord;
  }

  @override
  void update(void Function(UserResultsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserResultsRecord build() {
    final _$result = _$v ??
        new _$UserResultsRecord._(
            uid: uid,
            date: date,
            resultName: resultName,
            symptom: symptom,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
