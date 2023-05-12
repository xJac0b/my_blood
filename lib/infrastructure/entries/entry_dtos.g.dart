// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entry_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EntryDto _$$_EntryDtoFromJson(Map<String, dynamic> json) => _$_EntryDto(
      id: json['id'] as String,
      title: json['title'] as String,
      date: DateTime.parse(json['date'] as String),
      results: (json['results'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as Map<String, dynamic>).map(
              (k, e) => MapEntry(
                  k,
                  (e as Map<String, dynamic>).map(
                    (k, e) => MapEntry(k, (e as num).toDouble()),
                  )),
            )),
      ),
    );

Map<String, dynamic> _$$_EntryDtoToJson(_$_EntryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'date': instance.date.toIso8601String(),
      'results': instance.results,
    };
