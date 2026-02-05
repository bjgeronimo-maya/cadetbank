// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegistrationFormState {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get mobileNumber => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationFormStateCopyWith<RegistrationFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationFormStateCopyWith<$Res> {
  factory $RegistrationFormStateCopyWith(RegistrationFormState value,
          $Res Function(RegistrationFormState) then) =
      _$RegistrationFormStateCopyWithImpl<$Res, RegistrationFormState>;
  @useResult
  $Res call({String name, String email, String mobileNumber, String password});
}

/// @nodoc
class _$RegistrationFormStateCopyWithImpl<$Res,
        $Val extends RegistrationFormState>
    implements $RegistrationFormStateCopyWith<$Res> {
  _$RegistrationFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? mobileNumber = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegistrationFormStateImplCopyWith<$Res>
    implements $RegistrationFormStateCopyWith<$Res> {
  factory _$$RegistrationFormStateImplCopyWith(
          _$RegistrationFormStateImpl value,
          $Res Function(_$RegistrationFormStateImpl) then) =
      __$$RegistrationFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, String mobileNumber, String password});
}

/// @nodoc
class __$$RegistrationFormStateImplCopyWithImpl<$Res>
    extends _$RegistrationFormStateCopyWithImpl<$Res,
        _$RegistrationFormStateImpl>
    implements _$$RegistrationFormStateImplCopyWith<$Res> {
  __$$RegistrationFormStateImplCopyWithImpl(_$RegistrationFormStateImpl _value,
      $Res Function(_$RegistrationFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? mobileNumber = null,
    Object? password = null,
  }) {
    return _then(_$RegistrationFormStateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegistrationFormStateImpl implements _RegistrationFormState {
  const _$RegistrationFormStateImpl(
      {this.name = '',
      this.email = '',
      this.mobileNumber = '',
      this.password = ''});

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String mobileNumber;
  @override
  @JsonKey()
  final String password;

  @override
  String toString() {
    return 'RegistrationFormState(name: $name, email: $email, mobileNumber: $mobileNumber, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationFormStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, mobileNumber, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationFormStateImplCopyWith<_$RegistrationFormStateImpl>
      get copyWith => __$$RegistrationFormStateImplCopyWithImpl<
          _$RegistrationFormStateImpl>(this, _$identity);
}

abstract class _RegistrationFormState implements RegistrationFormState {
  const factory _RegistrationFormState(
      {final String name,
      final String email,
      final String mobileNumber,
      final String password}) = _$RegistrationFormStateImpl;

  @override
  String get name;
  @override
  String get email;
  @override
  String get mobileNumber;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$RegistrationFormStateImplCopyWith<_$RegistrationFormStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
