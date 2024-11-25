import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class User with _$User {
  const factory User({
    @JsonKey(name: 'id_user') int? idUser,
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
    @JsonKey(name: 'nacimiento') String? birthday,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
