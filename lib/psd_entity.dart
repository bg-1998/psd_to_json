import 'package:json_annotation/json_annotation.dart';

import 'psd_child_entity.dart';

part 'psd_entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class PsdEntity {
  final double? width;
  final double? height;
  final int? channels;
  final int? bitsPerChannel;
  final int? colorMode;
  final List<PsdChildEntity>? children;

  const PsdEntity({
    this.width,
    this.height,
    this.channels,
    this.bitsPerChannel,
    this.colorMode,
    this.children,
  });

  factory PsdEntity.fromJson(Map<String, dynamic> json) =>
      _$PsdEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PsdEntityToJson(this);

  PsdEntity copyWith({
    double? width,
    double? height,
    int? channels,
    int? bitsPerChannel,
    int? colorMode,
    List<PsdChildEntity>? children,
  }) {
    return PsdEntity(
      width: width ?? this.width,
      height: height ?? this.height,
      channels: channels ?? this.channels,
      bitsPerChannel: bitsPerChannel ?? this.bitsPerChannel,
      colorMode: colorMode ?? this.colorMode,
      children: children ?? this.children,
    );
  }
}
