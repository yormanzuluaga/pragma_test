// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: 'id_user')
  int? get idUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'nombre')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'apellido')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'docu_tipo')
  String? get documentType => throw _privateConstructorUsedError;
  @JsonKey(name: 'docu_nro')
  int? get documentNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'sexo')
  String? get genre => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'estado')
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'passNew')
  int? get newPass => throw _privateConstructorUsedError;
  String? get contra => throw _privateConstructorUsedError;
  String? get inte => throw _privateConstructorUsedError;
  @JsonKey(name: 'polizaLife')
  String? get lifePolicy => throw _privateConstructorUsedError;
  @JsonKey(name: 'polizaSeguros')
  String? get insurancePolicy => throw _privateConstructorUsedError;
  @JsonKey(name: 'prepaga')
  String? get prepaid => throw _privateConstructorUsedError;
  @JsonKey(name: 'nacimiento')
  String? get birthday => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_user') int? idUser,
      @JsonKey(name: 'nombre') String? name,
      @JsonKey(name: 'apellido') String? lastName,
      @JsonKey(name: 'docu_tipo') String? documentType,
      @JsonKey(name: 'docu_nro') int? documentNumber,
      @JsonKey(name: 'sexo') String? genre,
      String? email,
      @JsonKey(name: 'estado') String? state,
      @JsonKey(name: 'passNew') int? newPass,
      String? contra,
      String? inte,
      @JsonKey(name: 'polizaLife') String? lifePolicy,
      @JsonKey(name: 'polizaSeguros') String? insurancePolicy,
      @JsonKey(name: 'prepaga') String? prepaid,
      @JsonKey(name: 'nacimiento') String? birthday});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUser = freezed,
    Object? name = freezed,
    Object? lastName = freezed,
    Object? documentType = freezed,
    Object? documentNumber = freezed,
    Object? genre = freezed,
    Object? email = freezed,
    Object? state = freezed,
    Object? newPass = freezed,
    Object? contra = freezed,
    Object? inte = freezed,
    Object? lifePolicy = freezed,
    Object? insurancePolicy = freezed,
    Object? prepaid = freezed,
    Object? birthday = freezed,
  }) {
    return _then(_value.copyWith(
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      documentType: freezed == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as String?,
      documentNumber: freezed == documentNumber
          ? _value.documentNumber
          : documentNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      genre: freezed == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      newPass: freezed == newPass
          ? _value.newPass
          : newPass // ignore: cast_nullable_to_non_nullable
              as int?,
      contra: freezed == contra
          ? _value.contra
          : contra // ignore: cast_nullable_to_non_nullable
              as String?,
      inte: freezed == inte
          ? _value.inte
          : inte // ignore: cast_nullable_to_non_nullable
              as String?,
      lifePolicy: freezed == lifePolicy
          ? _value.lifePolicy
          : lifePolicy // ignore: cast_nullable_to_non_nullable
              as String?,
      insurancePolicy: freezed == insurancePolicy
          ? _value.insurancePolicy
          : insurancePolicy // ignore: cast_nullable_to_non_nullable
              as String?,
      prepaid: freezed == prepaid
          ? _value.prepaid
          : prepaid // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_user') int? idUser,
      @JsonKey(name: 'nombre') String? name,
      @JsonKey(name: 'apellido') String? lastName,
      @JsonKey(name: 'docu_tipo') String? documentType,
      @JsonKey(name: 'docu_nro') int? documentNumber,
      @JsonKey(name: 'sexo') String? genre,
      String? email,
      @JsonKey(name: 'estado') String? state,
      @JsonKey(name: 'passNew') int? newPass,
      String? contra,
      String? inte,
      @JsonKey(name: 'polizaLife') String? lifePolicy,
      @JsonKey(name: 'polizaSeguros') String? insurancePolicy,
      @JsonKey(name: 'prepaga') String? prepaid,
      @JsonKey(name: 'nacimiento') String? birthday});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUser = freezed,
    Object? name = freezed,
    Object? lastName = freezed,
    Object? documentType = freezed,
    Object? documentNumber = freezed,
    Object? genre = freezed,
    Object? email = freezed,
    Object? state = freezed,
    Object? newPass = freezed,
    Object? contra = freezed,
    Object? inte = freezed,
    Object? lifePolicy = freezed,
    Object? insurancePolicy = freezed,
    Object? prepaid = freezed,
    Object? birthday = freezed,
  }) {
    return _then(_$UserImpl(
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      documentType: freezed == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as String?,
      documentNumber: freezed == documentNumber
          ? _value.documentNumber
          : documentNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      genre: freezed == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      newPass: freezed == newPass
          ? _value.newPass
          : newPass // ignore: cast_nullable_to_non_nullable
              as int?,
      contra: freezed == contra
          ? _value.contra
          : contra // ignore: cast_nullable_to_non_nullable
              as String?,
      inte: freezed == inte
          ? _value.inte
          : inte // ignore: cast_nullable_to_non_nullable
              as String?,
      lifePolicy: freezed == lifePolicy
          ? _value.lifePolicy
          : lifePolicy // ignore: cast_nullable_to_non_nullable
              as String?,
      insurancePolicy: freezed == insurancePolicy
          ? _value.insurancePolicy
          : insurancePolicy // ignore: cast_nullable_to_non_nullable
              as String?,
      prepaid: freezed == prepaid
          ? _value.prepaid
          : prepaid // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {@JsonKey(name: 'id_user') this.idUser,
      @JsonKey(name: 'nombre') this.name,
      @JsonKey(name: 'apellido') this.lastName,
      @JsonKey(name: 'docu_tipo') this.documentType,
      @JsonKey(name: 'docu_nro') this.documentNumber,
      @JsonKey(name: 'sexo') this.genre,
      this.email,
      @JsonKey(name: 'estado') this.state,
      @JsonKey(name: 'passNew') this.newPass,
      this.contra,
      this.inte,
      @JsonKey(name: 'polizaLife') this.lifePolicy,
      @JsonKey(name: 'polizaSeguros') this.insurancePolicy,
      @JsonKey(name: 'prepaga') this.prepaid,
      @JsonKey(name: 'nacimiento') this.birthday});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey(name: 'id_user')
  final int? idUser;
  @override
  @JsonKey(name: 'nombre')
  final String? name;
  @override
  @JsonKey(name: 'apellido')
  final String? lastName;
  @override
  @JsonKey(name: 'docu_tipo')
  final String? documentType;
  @override
  @JsonKey(name: 'docu_nro')
  final int? documentNumber;
  @override
  @JsonKey(name: 'sexo')
  final String? genre;
  @override
  final String? email;
  @override
  @JsonKey(name: 'estado')
  final String? state;
  @override
  @JsonKey(name: 'passNew')
  final int? newPass;
  @override
  final String? contra;
  @override
  final String? inte;
  @override
  @JsonKey(name: 'polizaLife')
  final String? lifePolicy;
  @override
  @JsonKey(name: 'polizaSeguros')
  final String? insurancePolicy;
  @override
  @JsonKey(name: 'prepaga')
  final String? prepaid;
  @override
  @JsonKey(name: 'nacimiento')
  final String? birthday;

  @override
  String toString() {
    return 'User(idUser: $idUser, name: $name, lastName: $lastName, documentType: $documentType, documentNumber: $documentNumber, genre: $genre, email: $email, state: $state, newPass: $newPass, contra: $contra, inte: $inte, lifePolicy: $lifePolicy, insurancePolicy: $insurancePolicy, prepaid: $prepaid, birthday: $birthday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.documentType, documentType) ||
                other.documentType == documentType) &&
            (identical(other.documentNumber, documentNumber) ||
                other.documentNumber == documentNumber) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.newPass, newPass) || other.newPass == newPass) &&
            (identical(other.contra, contra) || other.contra == contra) &&
            (identical(other.inte, inte) || other.inte == inte) &&
            (identical(other.lifePolicy, lifePolicy) ||
                other.lifePolicy == lifePolicy) &&
            (identical(other.insurancePolicy, insurancePolicy) ||
                other.insurancePolicy == insurancePolicy) &&
            (identical(other.prepaid, prepaid) || other.prepaid == prepaid) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      idUser,
      name,
      lastName,
      documentType,
      documentNumber,
      genre,
      email,
      state,
      newPass,
      contra,
      inte,
      lifePolicy,
      insurancePolicy,
      prepaid,
      birthday);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@JsonKey(name: 'id_user') final int? idUser,
      @JsonKey(name: 'nombre') final String? name,
      @JsonKey(name: 'apellido') final String? lastName,
      @JsonKey(name: 'docu_tipo') final String? documentType,
      @JsonKey(name: 'docu_nro') final int? documentNumber,
      @JsonKey(name: 'sexo') final String? genre,
      final String? email,
      @JsonKey(name: 'estado') final String? state,
      @JsonKey(name: 'passNew') final int? newPass,
      final String? contra,
      final String? inte,
      @JsonKey(name: 'polizaLife') final String? lifePolicy,
      @JsonKey(name: 'polizaSeguros') final String? insurancePolicy,
      @JsonKey(name: 'prepaga') final String? prepaid,
      @JsonKey(name: 'nacimiento') final String? birthday}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @JsonKey(name: 'id_user')
  int? get idUser;
  @override
  @JsonKey(name: 'nombre')
  String? get name;
  @override
  @JsonKey(name: 'apellido')
  String? get lastName;
  @override
  @JsonKey(name: 'docu_tipo')
  String? get documentType;
  @override
  @JsonKey(name: 'docu_nro')
  int? get documentNumber;
  @override
  @JsonKey(name: 'sexo')
  String? get genre;
  @override
  String? get email;
  @override
  @JsonKey(name: 'estado')
  String? get state;
  @override
  @JsonKey(name: 'passNew')
  int? get newPass;
  @override
  String? get contra;
  @override
  String? get inte;
  @override
  @JsonKey(name: 'polizaLife')
  String? get lifePolicy;
  @override
  @JsonKey(name: 'polizaSeguros')
  String? get insurancePolicy;
  @override
  @JsonKey(name: 'prepaga')
  String? get prepaid;
  @override
  @JsonKey(name: 'nacimiento')
  String? get birthday;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
