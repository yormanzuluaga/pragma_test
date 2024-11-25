// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      idUser: (json['id_user'] as num?)?.toInt(),
      name: json['nombre'] as String?,
      lastName: json['apellido'] as String?,
      documentType: json['docu_tipo'] as String?,
      documentNumber: (json['docu_nro'] as num?)?.toInt(),
      genre: json['sexo'] as String?,
      email: json['email'] as String?,
      state: json['estado'] as String?,
      newPass: (json['passNew'] as num?)?.toInt(),
      contra: json['contra'] as String?,
      inte: json['inte'] as String?,
      lifePolicy: json['polizaLife'] as String?,
      insurancePolicy: json['polizaSeguros'] as String?,
      prepaid: json['prepaga'] as String?,
      birthday: json['nacimiento'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id_user': instance.idUser,
      'nombre': instance.name,
      'apellido': instance.lastName,
      'docu_tipo': instance.documentType,
      'docu_nro': instance.documentNumber,
      'sexo': instance.genre,
      'email': instance.email,
      'estado': instance.state,
      'passNew': instance.newPass,
      'contra': instance.contra,
      'inte': instance.inte,
      'polizaLife': instance.lifePolicy,
      'polizaSeguros': instance.insurancePolicy,
      'prepaga': instance.prepaid,
      'nacimiento': instance.birthday,
    };
