// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_symptoms_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserSymptomsRecord> _$userSymptomsRecordSerializer =
    new _$UserSymptomsRecordSerializer();

class _$UserSymptomsRecordSerializer
    implements StructuredSerializer<UserSymptomsRecord> {
  @override
  final Iterable<Type> types = const [UserSymptomsRecord, _$UserSymptomsRecord];
  @override
  final String wireName = 'UserSymptomsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UserSymptomsRecord object,
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
    value = object.symptomName;
    if (value != null) {
      result
        ..add('symptom_name')
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
  UserSymptomsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserSymptomsRecordBuilder();

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
        case 'symptom_name':
          result.symptomName = serializers.deserialize(value,
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

class _$UserSymptomsRecord extends UserSymptomsRecord {
  @override
  final String uid;
  @override
  final DateTime date;
  @override
  final String symptomName;
  @override
  final DocumentReference<Object> reference;

  factory _$UserSymptomsRecord(
          [void Function(UserSymptomsRecordBuilder) updates]) =>
      (new UserSymptomsRecordBuilder()..update(updates)).build();

  _$UserSymptomsRecord._(
      {this.uid, this.date, this.symptomName, this.reference})
      : super._();

  @override
  UserSymptomsRecord rebuild(
          void Function(UserSymptomsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserSymptomsRecordBuilder toBuilder() =>
      new UserSymptomsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSymptomsRecord &&
        uid == other.uid &&
        date == other.date &&
        symptomName == other.symptomName &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, uid.hashCode), date.hashCode), symptomName.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserSymptomsRecord')
          ..add('uid', uid)
          ..add('date', date)
          ..add('symptomName', symptomName)
          ..add('reference', reference))
        .toString();
  }
}

class UserSymptomsRecordBuilder
    implements Builder<UserSymptomsRecord, UserSymptomsRecordBuilder> {
  _$UserSymptomsRecord _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  String _symptomName;
  String get symptomName => _$this._symptomName;
  set symptomName(String symptomName) => _$this._symptomName = symptomName;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UserSymptomsRecordBuilder() {
    UserSymptomsRecord._initializeBuilder(this);
  }

  UserSymptomsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _date = $v.date;
      _symptomName = $v.symptomName;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserSymptomsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserSymptomsRecord;
  }

  @override
  void update(void Function(UserSymptomsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserSymptomsRecord build() {
    final _$result = _$v ??
        new _$UserSymptomsRecord._(
            uid: uid,
            date: date,
            symptomName: symptomName,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
