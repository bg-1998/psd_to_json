// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'psd_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PsdEntity _$PsdEntityFromJson(Map<String, dynamic> json) => PsdEntity(
  width: (json['width'] as num?)?.toDouble(),
  height: (json['height'] as num?)?.toDouble(),
  channels: (json['channels'] as num?)?.toInt(),
  bitsPerChannel: (json['bitsPerChannel'] as num?)?.toInt(),
  colorMode: (json['colorMode'] as num?)?.toInt(),
  children: (json['children'] as List<dynamic>?)
      ?.map((e) => PsdChildEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PsdEntityToJson(PsdEntity instance) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'channels': instance.channels,
  'bitsPerChannel': instance.bitsPerChannel,
  'colorMode': instance.colorMode,
  'children': instance.children,
};
