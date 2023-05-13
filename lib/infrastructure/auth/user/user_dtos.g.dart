// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      id: json['id'] as String,
      filled: json['filled'] as bool,
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      weight: (json['weight'] as num).toDouble(),
      male: json['male'] as bool,
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'filled': instance.filled,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'weight': instance.weight,
      'male': instance.male,
    };
