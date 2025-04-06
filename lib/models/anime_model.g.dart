// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AnimeModel _$AnimeModelFromJson(Map<String, dynamic> json) => _AnimeModel(
      name: json['name'] as String,
      age: (json['age'] as num).toInt(),
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$AnimeModelToJson(_AnimeModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'id': instance.id,
    };
