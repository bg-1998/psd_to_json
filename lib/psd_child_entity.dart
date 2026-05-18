import 'package:json_annotation/json_annotation.dart';

part 'psd_child_entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class PsdChildEntity {
  final double? top;
  final double? left;
  final double? bottom;
  final double? right;
  final String? blendMode;
  final double? opacity;
  final bool? clipping;
  final bool? transparencyProtected;
  final bool? hidden;
  final bool? effectsOpen;
  final String? name;
  final EffectEntitys? effects;
  final TextEntity? text;
  final String? nameSource;
  final int? id;
  final bool? blendClippendElements;
  final bool? blendInteriorElements;
  final bool? knockout;
  final Protected? protected;
  final String? layerColor;
  final double? timestamp;
  final ReferencePoint? referencePoint;
  final String? imageUrl;
  final List<PsdChildEntity>? children;

  const PsdChildEntity({
    this.top,
    this.left,
    this.bottom,
    this.right,
    this.blendMode,
    this.opacity,
    this.clipping,
    this.transparencyProtected,
    this.hidden,
    this.effectsOpen,
    this.name,
    this.effects,
    this.text,
    this.nameSource,
    this.id,
    this.blendClippendElements,
    this.blendInteriorElements,
    this.knockout,
    this.protected,
    this.layerColor,
    this.timestamp,
    this.referencePoint,
    this.imageUrl,
    this.children,
  });

  factory PsdChildEntity.fromJson(Map<String, dynamic> json) =>
      _$PsdChildEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PsdChildEntityToJson(this);

  PsdChildEntity copyWith({
    double? top,
    double? left,
    double? bottom,
    double? right,
    String? blendMode,
    double? opacity,
    bool? clipping,
    bool? transparencyProtected,
    bool? hidden,
    bool? effectsOpen,
    String? name,
    EffectEntitys? effects,
    TextEntity? text,
    String? nameSource,
    int? id,
    bool? blendClippendElements,
    bool? blendInteriorElements,
    bool? knockout,
    Protected? protected,
    String? layerColor,
    double? timestamp,
    ReferencePoint? referencePoint,
    String? imageUrl,
    List<PsdChildEntity>? children,
  }) {
    return PsdChildEntity(
      top: top ?? this.top,
      left: left ?? this.left,
      bottom: bottom ?? this.bottom,
      right: right ?? this.right,
      blendMode: blendMode ?? this.blendMode,
      opacity: opacity ?? this.opacity,
      clipping: clipping ?? this.clipping,
      transparencyProtected: transparencyProtected ?? this.transparencyProtected,
      hidden: hidden ?? this.hidden,
      effectsOpen: effectsOpen ?? this.effectsOpen,
      name: name ?? this.name,
      effects: effects ?? this.effects,
      text: text ?? this.text,
      nameSource: nameSource ?? this.nameSource,
      id: id ?? this.id,
      blendClippendElements: blendClippendElements ?? this.blendClippendElements,
      blendInteriorElements: blendInteriorElements ?? this.blendInteriorElements,
      knockout: knockout ?? this.knockout,
      protected: protected ?? this.protected,
      layerColor: layerColor ?? this.layerColor,
      timestamp: timestamp ?? this.timestamp,
      referencePoint: referencePoint ?? this.referencePoint,
      imageUrl: imageUrl ?? this.imageUrl,
      children: children ?? this.children,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class EffectEntitys {
  final double? scale;
  final List<DropShadow>? dropShadow;
  final List<InnerShadow>? innerShadow;
  final OuterGlow? outerGlow;
  final InnerGlow? innerGlow;
  final Bevel? bevel;
  final List<SolidFill>? solidFill;
  final List<GradientOverlay>? gradientOverlay;
  final Satin? satin;
  final List<StrokeEntity>? stroke;

  const EffectEntitys({
    this.scale,
    this.dropShadow,
    this.innerShadow,
    this.outerGlow,
    this.innerGlow,
    this.bevel,
    this.solidFill,
    this.gradientOverlay,
    this.satin,
    this.stroke,
  });

  factory EffectEntitys.fromJson(Map<String, dynamic> json) =>
      _$EffectEntitysFromJson(json);

  Map<String, dynamic> toJson() => _$EffectEntitysToJson(this);

  EffectEntitys copyWith({
    double? scale,
    List<DropShadow>? dropShadow,
    List<InnerShadow>? innerShadow,
    OuterGlow? outerGlow,
    InnerGlow? innerGlow,
    Bevel? bevel,
    List<SolidFill>? solidFill,
    List<GradientOverlay>? gradientOverlay,
    Satin? satin,
    List<StrokeEntity>? stroke,
  }) {
    return EffectEntitys(
      scale: scale ?? this.scale,
      dropShadow: dropShadow ?? this.dropShadow,
      innerShadow: innerShadow ?? this.innerShadow,
      outerGlow: outerGlow ?? this.outerGlow,
      innerGlow: innerGlow ?? this.innerGlow,
      bevel: bevel ?? this.bevel,
      solidFill: solidFill ?? this.solidFill,
      gradientOverlay: gradientOverlay ?? this.gradientOverlay,
      satin: satin ?? this.satin,
      stroke: stroke ?? this.stroke,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class DropShadow {
  final bool? enabled;
  final bool? present;
  final bool? showInDialog;
  final String? blendMode;
  final ColorEntity? color;
  final double? opacity;
  final bool? useGlobalLight;
  final double? angle;
  final DistanceEntity? distance;
  final Choke? choke;
  final SizeEntity? size;
  final double? noise;
  final bool? antialiased;
  final Contour? contour;
  final bool? layerConceals;

  const DropShadow({
    this.enabled,
    this.present,
    this.showInDialog,
    this.blendMode,
    this.color,
    this.opacity,
    this.useGlobalLight,
    this.angle,
    this.distance,
    this.choke,
    this.size,
    this.noise,
    this.antialiased,
    this.contour,
    this.layerConceals,
  });

  factory DropShadow.fromJson(Map<String, dynamic> json) =>
      _$DropShadowFromJson(json);

  Map<String, dynamic> toJson() => _$DropShadowToJson(this);

  DropShadow copyWith({
    bool? enabled,
    bool? present,
    bool? showInDialog,
    String? blendMode,
    ColorEntity? color,
    double? opacity,
    bool? useGlobalLight,
    double? angle,
    DistanceEntity? distance,
    Choke? choke,
    SizeEntity? size,
    double? noise,
    bool? antialiased,
    Contour? contour,
    bool? layerConceals,
  }) {
    return DropShadow(
      enabled: enabled ?? this.enabled,
      present: present ?? this.present,
      showInDialog: showInDialog ?? this.showInDialog,
      blendMode: blendMode ?? this.blendMode,
      color: color ?? this.color,
      opacity: opacity ?? this.opacity,
      useGlobalLight: useGlobalLight ?? this.useGlobalLight,
      angle: angle ?? this.angle,
      distance: distance ?? this.distance,
      choke: choke ?? this.choke,
      size: size ?? this.size,
      noise: noise ?? this.noise,
      antialiased: antialiased ?? this.antialiased,
      contour: contour ?? this.contour,
      layerConceals: layerConceals ?? this.layerConceals,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class ColorEntity {
  final int? r;
  final int? g;
  final int? b;

  const ColorEntity({
    this.r,
    this.g,
    this.b,
  });

  factory ColorEntity.fromJson(Map<String, dynamic> json) =>
      _$ColorEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ColorEntityToJson(this);

  ColorEntity copyWith({
    int? r,
    int? g,
    int? b,
  }) {
    return ColorEntity(
      r: r ?? this.r,
      g: g ?? this.g,
      b: b ?? this.b,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class DistanceEntity {
  final double? value;
  final String? units;

  const DistanceEntity({
    this.value,
    this.units,
  });

  factory DistanceEntity.fromJson(Map<String, dynamic> json) =>
      _$DistanceEntityFromJson(json);

  Map<String, dynamic> toJson() => _$DistanceEntityToJson(this);

  DistanceEntity copyWith({
    double? value,
    String? units,
  }) {
    return DistanceEntity(
      value: value ?? this.value,
      units: units ?? this.units,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class Choke {
  final double? value;
  final String? units;

  const Choke({
    this.value,
    this.units,
  });

  factory Choke.fromJson(Map<String, dynamic> json) =>
      _$ChokeFromJson(json);

  Map<String, dynamic> toJson() => _$ChokeToJson(this);

  Choke copyWith({
    double? value,
    String? units,
  }) {
    return Choke(
      value: value ?? this.value,
      units: units ?? this.units,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class SizeEntity {
  final double? value;
  final String? units;

  const SizeEntity({
    this.value,
    this.units,
  });

  factory SizeEntity.fromJson(Map<String, dynamic> json) =>
      _$SizeEntityFromJson(json);

  Map<String, dynamic> toJson() => _$SizeEntityToJson(this);

  SizeEntity copyWith({
    double? value,
    String? units,
  }) {
    return SizeEntity(
      value: value ?? this.value,
      units: units ?? this.units,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class Contour {
  final String? name;
  final List<CurveEntity>? curve;

  const Contour({
    this.name,
    this.curve,
  });

  factory Contour.fromJson(Map<String, dynamic> json) =>
      _$ContourFromJson(json);

  Map<String, dynamic> toJson() => _$ContourToJson(this);

  Contour copyWith({
    String? name,
    List<CurveEntity>? curve,
  }) {
    return Contour(
      name: name ?? this.name,
      curve: curve ?? this.curve,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class CurveEntity {
  final double? x;
  final double? y;

  const CurveEntity({
    this.x,
    this.y,
  });

  factory CurveEntity.fromJson(Map<String, dynamic> json) =>
      _$CurveEntityFromJson(json);

  Map<String, dynamic> toJson() => _$CurveEntityToJson(this);

  CurveEntity copyWith({
    double? x,
    double? y,
  }) {
    return CurveEntity(
      x: x ?? this.x,
      y: y ?? this.y,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class InnerShadow {
  final bool? enabled;
  final bool? present;
  final bool? showInDialog;
  final String? blendMode;
  final ColorEntity? color;
  final double? opacity;
  final bool? useGlobalLight;
  final double? angle;
  final DistanceEntity? distance;
  final Choke? choke;
  final SizeEntity? size;
  final double? noise;
  final bool? antialiased;
  final Contour? contour;

  const InnerShadow({
    this.enabled,
    this.present,
    this.showInDialog,
    this.blendMode,
    this.color,
    this.opacity,
    this.useGlobalLight,
    this.angle,
    this.distance,
    this.choke,
    this.size,
    this.noise,
    this.antialiased,
    this.contour,
  });

  factory InnerShadow.fromJson(Map<String, dynamic> json) =>
      _$InnerShadowFromJson(json);

  Map<String, dynamic> toJson() => _$InnerShadowToJson(this);

  InnerShadow copyWith({
    bool? enabled,
    bool? present,
    bool? showInDialog,
    String? blendMode,
    ColorEntity? color,
    double? opacity,
    bool? useGlobalLight,
    double? angle,
    DistanceEntity? distance,
    Choke? choke,
    SizeEntity? size,
    double? noise,
    bool? antialiased,
    Contour? contour,
  }) {
    return InnerShadow(
      enabled: enabled ?? this.enabled,
      present: present ?? this.present,
      showInDialog: showInDialog ?? this.showInDialog,
      blendMode: blendMode ?? this.blendMode,
      color: color ?? this.color,
      opacity: opacity ?? this.opacity,
      useGlobalLight: useGlobalLight ?? this.useGlobalLight,
      angle: angle ?? this.angle,
      distance: distance ?? this.distance,
      choke: choke ?? this.choke,
      size: size ?? this.size,
      noise: noise ?? this.noise,
      antialiased: antialiased ?? this.antialiased,
      contour: contour ?? this.contour,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class OuterGlow {
  final bool? enabled;
  final bool? present;
  final bool? showInDialog;
  final String? blendMode;
  final ColorEntity? color;
  final double? opacity;
  final String? technique;
  final Choke? choke;
  final SizeEntity? size;
  final double? noise;
  final double? jitter;
  final bool? antialiased;
  final Contour? contour;
  final double? range;

  const OuterGlow({
    this.enabled,
    this.present,
    this.showInDialog,
    this.blendMode,
    this.color,
    this.opacity,
    this.technique,
    this.choke,
    this.size,
    this.noise,
    this.jitter,
    this.antialiased,
    this.contour,
    this.range,
  });

  factory OuterGlow.fromJson(Map<String, dynamic> json) =>
      _$OuterGlowFromJson(json);

  Map<String, dynamic> toJson() => _$OuterGlowToJson(this);

  OuterGlow copyWith({
    bool? enabled,
    bool? present,
    bool? showInDialog,
    String? blendMode,
    ColorEntity? color,
    double? opacity,
    String? technique,
    Choke? choke,
    SizeEntity? size,
    double? noise,
    double? jitter,
    bool? antialiased,
    Contour? contour,
    double? range,
  }) {
    return OuterGlow(
      enabled: enabled ?? this.enabled,
      present: present ?? this.present,
      showInDialog: showInDialog ?? this.showInDialog,
      blendMode: blendMode ?? this.blendMode,
      color: color ?? this.color,
      opacity: opacity ?? this.opacity,
      technique: technique ?? this.technique,
      choke: choke ?? this.choke,
      size: size ?? this.size,
      noise: noise ?? this.noise,
      jitter: jitter ?? this.jitter,
      antialiased: antialiased ?? this.antialiased,
      contour: contour ?? this.contour,
      range: range ?? this.range,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class InnerGlow {
  final bool? enabled;
  final bool? present;
  final bool? showInDialog;
  final String? blendMode;
  final ColorEntity? color;
  final double? opacity;
  final String? technique;
  final Choke? choke;
  final SizeEntity? size;
  final double? noise;
  final double? jitter;
  final bool? antialiased;
  final Contour? contour;
  final double? range;
  final String? source;

  const InnerGlow({
    this.enabled,
    this.present,
    this.showInDialog,
    this.blendMode,
    this.color,
    this.opacity,
    this.technique,
    this.choke,
    this.size,
    this.noise,
    this.jitter,
    this.antialiased,
    this.contour,
    this.range,
    this.source,
  });

  factory InnerGlow.fromJson(Map<String, dynamic> json) =>
      _$InnerGlowFromJson(json);

  Map<String, dynamic> toJson() => _$InnerGlowToJson(this);

  InnerGlow copyWith({
    bool? enabled,
    bool? present,
    bool? showInDialog,
    String? blendMode,
    ColorEntity? color,
    double? opacity,
    String? technique,
    Choke? choke,
    SizeEntity? size,
    double? noise,
    double? jitter,
    bool? antialiased,
    Contour? contour,
    double? range,
    String? source,
  }) {
    return InnerGlow(
      enabled: enabled ?? this.enabled,
      present: present ?? this.present,
      showInDialog: showInDialog ?? this.showInDialog,
      blendMode: blendMode ?? this.blendMode,
      color: color ?? this.color,
      opacity: opacity ?? this.opacity,
      technique: technique ?? this.technique,
      choke: choke ?? this.choke,
      size: size ?? this.size,
      noise: noise ?? this.noise,
      jitter: jitter ?? this.jitter,
      antialiased: antialiased ?? this.antialiased,
      contour: contour ?? this.contour,
      range: range ?? this.range,
      source: source ?? this.source,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class Bevel {
  final bool? enabled;
  final bool? present;
  final bool? showInDialog;
  final String? highlightBlendMode;
  final ColorEntity? highlightColor;
  final double? highlightOpacity;
  final String? shadowBlendMode;
  final ColorEntity? shadowColor;
  final double? shadowOpacity;
  final String? technique;
  final String? style;
  final bool? useGlobalLight;
  final double? angle;
  final double? altitude;
  final double? strength;
  final SizeEntity? size;
  final String? direction;
  final Contour? contour;
  final bool? antialiasGloss;
  final Soften? soften;
  final bool? useShape;
  final bool? useTexture;

  const Bevel({
    this.enabled,
    this.present,
    this.showInDialog,
    this.highlightBlendMode,
    this.highlightColor,
    this.highlightOpacity,
    this.shadowBlendMode,
    this.shadowColor,
    this.shadowOpacity,
    this.technique,
    this.style,
    this.useGlobalLight,
    this.angle,
    this.altitude,
    this.strength,
    this.size,
    this.direction,
    this.contour,
    this.antialiasGloss,
    this.soften,
    this.useShape,
    this.useTexture,
  });

  factory Bevel.fromJson(Map<String, dynamic> json) =>
      _$BevelFromJson(json);

  Map<String, dynamic> toJson() => _$BevelToJson(this);

  Bevel copyWith({
    bool? enabled,
    bool? present,
    bool? showInDialog,
    String? highlightBlendMode,
    ColorEntity? highlightColor,
    double? highlightOpacity,
    String? shadowBlendMode,
    ColorEntity? shadowColor,
    double? shadowOpacity,
    String? technique,
    String? style,
    bool? useGlobalLight,
    double? angle,
    double? altitude,
    double? strength,
    SizeEntity? size,
    String? direction,
    Contour? contour,
    bool? antialiasGloss,
    Soften? soften,
    bool? useShape,
    bool? useTexture,
  }) {
    return Bevel(
      enabled: enabled ?? this.enabled,
      present: present ?? this.present,
      showInDialog: showInDialog ?? this.showInDialog,
      highlightBlendMode: highlightBlendMode ?? this.highlightBlendMode,
      highlightColor: highlightColor ?? this.highlightColor,
      highlightOpacity: highlightOpacity ?? this.highlightOpacity,
      shadowBlendMode: shadowBlendMode ?? this.shadowBlendMode,
      shadowColor: shadowColor ?? this.shadowColor,
      shadowOpacity: shadowOpacity ?? this.shadowOpacity,
      technique: technique ?? this.technique,
      style: style ?? this.style,
      useGlobalLight: useGlobalLight ?? this.useGlobalLight,
      angle: angle ?? this.angle,
      altitude: altitude ?? this.altitude,
      strength: strength ?? this.strength,
      size: size ?? this.size,
      direction: direction ?? this.direction,
      contour: contour ?? this.contour,
      antialiasGloss: antialiasGloss ?? this.antialiasGloss,
      soften: soften ?? this.soften,
      useShape: useShape ?? this.useShape,
      useTexture: useTexture ?? this.useTexture,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class Soften {
  final double? value;
  final String? units;

  const Soften({
    this.value,
    this.units,
  });

  factory Soften.fromJson(Map<String, dynamic> json) =>
      _$SoftenFromJson(json);

  Map<String, dynamic> toJson() => _$SoftenToJson(this);

  Soften copyWith({
    double? value,
    String? units,
  }) {
    return Soften(
      value: value ?? this.value,
      units: units ?? this.units,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class SolidFill {
  final bool? enabled;
  final bool? present;
  final bool? showInDialog;
  final String? blendMode;
  final ColorEntity? color;
  final double? opacity;

  const SolidFill({
    this.enabled,
    this.present,
    this.showInDialog,
    this.blendMode,
    this.color,
    this.opacity,
  });

  factory SolidFill.fromJson(Map<String, dynamic> json) =>
      _$SolidFillFromJson(json);

  Map<String, dynamic> toJson() => _$SolidFillToJson(this);

  SolidFill copyWith({
    bool? enabled,
    bool? present,
    bool? showInDialog,
    String? blendMode,
    ColorEntity? color,
    double? opacity,
  }) {
    return SolidFill(
      enabled: enabled ?? this.enabled,
      present: present ?? this.present,
      showInDialog: showInDialog ?? this.showInDialog,
      blendMode: blendMode ?? this.blendMode,
      color: color ?? this.color,
      opacity: opacity ?? this.opacity,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class GradientOverlay {
  final bool? enabled;
  final bool? present;
  final bool? showInDialog;
  final String? blendMode;
  final double? opacity;
  final Gradient? gradient;
  final double? angle;
  final String? type;
  final bool? reverse;
  final bool? dither;
  final String? interpolationMethod;
  final bool? align;
  final double? scale;
  final OffsetEntity? offset;

  const GradientOverlay({
    this.enabled,
    this.present,
    this.showInDialog,
    this.blendMode,
    this.opacity,
    this.gradient,
    this.angle,
    this.type,
    this.reverse,
    this.dither,
    this.interpolationMethod,
    this.align,
    this.scale,
    this.offset,
  });

  factory GradientOverlay.fromJson(Map<String, dynamic> json) =>
      _$GradientOverlayFromJson(json);

  Map<String, dynamic> toJson() => _$GradientOverlayToJson(this);

  GradientOverlay copyWith({
    bool? enabled,
    bool? present,
    bool? showInDialog,
    String? blendMode,
    double? opacity,
    Gradient? gradient,
    double? angle,
    String? type,
    bool? reverse,
    bool? dither,
    String? interpolationMethod,
    bool? align,
    double? scale,
    OffsetEntity? offset,
  }) {
    return GradientOverlay(
      enabled: enabled ?? this.enabled,
      present: present ?? this.present,
      showInDialog: showInDialog ?? this.showInDialog,
      blendMode: blendMode ?? this.blendMode,
      opacity: opacity ?? this.opacity,
      gradient: gradient ?? this.gradient,
      angle: angle ?? this.angle,
      type: type ?? this.type,
      reverse: reverse ?? this.reverse,
      dither: dither ?? this.dither,
      interpolationMethod: interpolationMethod ?? this.interpolationMethod,
      align: align ?? this.align,
      scale: scale ?? this.scale,
      offset: offset ?? this.offset,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class Gradient {
  final String? type;
  final String? name;
  final double? smoothness;
  final List<ColorStops>? colorStops;
  final List<OpacityStops>? opacityStops;

  const Gradient({
    this.type,
    this.name,
    this.smoothness,
    this.colorStops,
    this.opacityStops,
  });

  factory Gradient.fromJson(Map<String, dynamic> json) =>
      _$GradientFromJson(json);

  Map<String, dynamic> toJson() => _$GradientToJson(this);

  Gradient copyWith({
    String? type,
    String? name,
    double? smoothness,
    List<ColorStops>? colorStops,
    List<OpacityStops>? opacityStops,
  }) {
    return Gradient(
      type: type ?? this.type,
      name: name ?? this.name,
      smoothness: smoothness ?? this.smoothness,
      colorStops: colorStops ?? this.colorStops,
      opacityStops: opacityStops ?? this.opacityStops,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class ColorStops {
  final ColorEntity? color;
  final double? location;
  final double? midpoint;

  const ColorStops({
    this.color,
    this.location,
    this.midpoint,
  });

  factory ColorStops.fromJson(Map<String, dynamic> json) =>
      _$ColorStopsFromJson(json);

  Map<String, dynamic> toJson() => _$ColorStopsToJson(this);

  ColorStops copyWith({
    ColorEntity? color,
    double? location,
    double? midpoint,
  }) {
    return ColorStops(
      color: color ?? this.color,
      location: location ?? this.location,
      midpoint: midpoint ?? this.midpoint,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class OpacityStops {
  final double? opacity;
  final double? location;
  final double? midpoint;

  const OpacityStops({
    this.opacity,
    this.location,
    this.midpoint,
  });

  factory OpacityStops.fromJson(Map<String, dynamic> json) =>
      _$OpacityStopsFromJson(json);

  Map<String, dynamic> toJson() => _$OpacityStopsToJson(this);

  OpacityStops copyWith({
    double? opacity,
    double? location,
    double? midpoint,
  }) {
    return OpacityStops(
      opacity: opacity ?? this.opacity,
      location: location ?? this.location,
      midpoint: midpoint ?? this.midpoint,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class OffsetEntity {
  final double? x;
  final double? y;

  const OffsetEntity({
    this.x,
    this.y,
  });

  factory OffsetEntity.fromJson(Map<String, dynamic> json) =>
      _$OffsetEntityFromJson(json);

  Map<String, dynamic> toJson() => _$OffsetEntityToJson(this);

  OffsetEntity copyWith({
    double? x,
    double? y,
  }) {
    return OffsetEntity(
      x: x ?? this.x,
      y: y ?? this.y,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class Satin {
  final bool? enabled;
  final bool? present;
  final bool? showInDialog;
  final String? blendMode;
  final ColorEntity? color;
  final bool? antialiased;
  final bool? invert;
  final double? opacity;
  final double? angle;
  final DistanceEntity? distance;
  final SizeEntity? size;
  final Contour? contour;

  const Satin({
    this.enabled,
    this.present,
    this.showInDialog,
    this.blendMode,
    this.color,
    this.antialiased,
    this.invert,
    this.opacity,
    this.angle,
    this.distance,
    this.size,
    this.contour,
  });

  factory Satin.fromJson(Map<String, dynamic> json) =>
      _$SatinFromJson(json);

  Map<String, dynamic> toJson() => _$SatinToJson(this);

  Satin copyWith({
    bool? enabled,
    bool? present,
    bool? showInDialog,
    String? blendMode,
    ColorEntity? color,
    bool? antialiased,
    bool? invert,
    double? opacity,
    double? angle,
    DistanceEntity? distance,
    SizeEntity? size,
    Contour? contour,
  }) {
    return Satin(
      enabled: enabled ?? this.enabled,
      present: present ?? this.present,
      showInDialog: showInDialog ?? this.showInDialog,
      blendMode: blendMode ?? this.blendMode,
      color: color ?? this.color,
      antialiased: antialiased ?? this.antialiased,
      invert: invert ?? this.invert,
      opacity: opacity ?? this.opacity,
      angle: angle ?? this.angle,
      distance: distance ?? this.distance,
      size: size ?? this.size,
      contour: contour ?? this.contour,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class StrokeEntity {
  final bool? enabled;
  final String? position;
  final String? fillType;
  final String? blendMode;
  final double? opacity;
  final SizeEntity? size;
  final bool? present;
  final bool? showInDialog;
  final bool? overprint;
  final ColorEntity? color;

  const StrokeEntity({
    this.enabled,
    this.position,
    this.fillType,
    this.blendMode,
    this.opacity,
    this.size,
    this.present,
    this.showInDialog,
    this.overprint,
    this.color,
  });

  factory StrokeEntity.fromJson(Map<String, dynamic> json) =>
      _$StrokeEntityFromJson(json);

  Map<String, dynamic> toJson() => _$StrokeEntityToJson(this);

  StrokeEntity copyWith({
    bool? enabled,
    String? position,
    String? fillType,
    String? blendMode,
    double? opacity,
    SizeEntity? size,
    bool? present,
    bool? showInDialog,
    bool? overprint,
    ColorEntity? color,
  }) {
    return StrokeEntity(
      enabled: enabled ?? this.enabled,
      position: position ?? this.position,
      fillType: fillType ?? this.fillType,
      blendMode: blendMode ?? this.blendMode,
      opacity: opacity ?? this.opacity,
      size: size ?? this.size,
      present: present ?? this.present,
      showInDialog: showInDialog ?? this.showInDialog,
      overprint: overprint ?? this.overprint,
      color: color ?? this.color,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class TextEntity {
  final List<double>? transform;
  final double? left;
  final double? top;
  final double? right;
  final double? bottom;
  final String? text;
  final int? index;
  final String? gridding;
  final String? antiAlias;
  final String? orientation;
  final Warp? warp;
  final Bounds? bounds;
  final BoundingBox? boundingBox;
  final bool? useFractionalGlyphWidths;
  final double? superscriptSize;
  final double? superscriptPosition;
  final double? subscriptSize;
  final double? subscriptPosition;
  final double? smallCapSize;
  final String? shapeType;
  final List<double>? pointBase;
  final ParagraphStyle? paragraphStyle;
  final Style? style;

  const TextEntity({
    this.transform,
    this.left,
    this.top,
    this.right,
    this.bottom,
    this.text,
    this.index,
    this.gridding,
    this.antiAlias,
    this.orientation,
    this.warp,
    this.bounds,
    this.boundingBox,
    this.useFractionalGlyphWidths,
    this.superscriptSize,
    this.superscriptPosition,
    this.subscriptSize,
    this.subscriptPosition,
    this.smallCapSize,
    this.shapeType,
    this.pointBase,
    this.paragraphStyle,
    this.style,
  });

  factory TextEntity.fromJson(Map<String, dynamic> json) =>
      _$TextEntityFromJson(json);

  Map<String, dynamic> toJson() => _$TextEntityToJson(this);

  TextEntity copyWith({
    List<double>? transform,
    double? left,
    double? top,
    double? right,
    double? bottom,
    String? text,
    int? index,
    String? gridding,
    String? antiAlias,
    String? orientation,
    Warp? warp,
    Bounds? bounds,
    BoundingBox? boundingBox,
    bool? useFractionalGlyphWidths,
    double? superscriptSize,
    double? superscriptPosition,
    double? subscriptSize,
    double? subscriptPosition,
    double? smallCapSize,
    String? shapeType,
    List<double>? pointBase,
    ParagraphStyle? paragraphStyle,
    Style? style,
  }) {
    return TextEntity(
      transform: transform ?? this.transform,
      left: left ?? this.left,
      top: top ?? this.top,
      right: right ?? this.right,
      bottom: bottom ?? this.bottom,
      text: text ?? this.text,
      index: index ?? this.index,
      gridding: gridding ?? this.gridding,
      antiAlias: antiAlias ?? this.antiAlias,
      orientation: orientation ?? this.orientation,
      warp: warp ?? this.warp,
      bounds: bounds ?? this.bounds,
      boundingBox: boundingBox ?? this.boundingBox,
      useFractionalGlyphWidths: useFractionalGlyphWidths ?? this.useFractionalGlyphWidths,
      superscriptSize: superscriptSize ?? this.superscriptSize,
      superscriptPosition: superscriptPosition ?? this.superscriptPosition,
      subscriptSize: subscriptSize ?? this.subscriptSize,
      subscriptPosition: subscriptPosition ?? this.subscriptPosition,
      smallCapSize: smallCapSize ?? this.smallCapSize,
      shapeType: shapeType ?? this.shapeType,
      pointBase: pointBase ?? this.pointBase,
      paragraphStyle: paragraphStyle ?? this.paragraphStyle,
      style: style ?? this.style,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class Warp {
  final String? style;
  final double? value;
  final double? perspective;
  final double? perspectiveOther;
  final String? rotate;

  const Warp({
    this.style,
    this.value,
    this.perspective,
    this.perspectiveOther,
    this.rotate,
  });

  factory Warp.fromJson(Map<String, dynamic> json) =>
      _$WarpFromJson(json);

  Map<String, dynamic> toJson() => _$WarpToJson(this);

  Warp copyWith({
    String? style,
    double? value,
    double? perspective,
    double? perspectiveOther,
    String? rotate,
  }) {
    return Warp(
      style: style ?? this.style,
      value: value ?? this.value,
      perspective: perspective ?? this.perspective,
      perspectiveOther: perspectiveOther ?? this.perspectiveOther,
      rotate: rotate ?? this.rotate,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class Bounds {
  final Top? top;
  final Left? left;
  final Right? right;
  final Bottom? bottom;

  const Bounds({
    this.top,
    this.left,
    this.right,
    this.bottom,
  });

  factory Bounds.fromJson(Map<String, dynamic> json) =>
      _$BoundsFromJson(json);

  Map<String, dynamic> toJson() => _$BoundsToJson(this);

  Bounds copyWith({
    Top? top,
    Left? left,
    Right? right,
    Bottom? bottom,
  }) {
    return Bounds(
      top: top ?? this.top,
      left: left ?? this.left,
      right: right ?? this.right,
      bottom: bottom ?? this.bottom,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class Top {
  final double? value;
  final String? units;

  const Top({
    this.value,
    this.units,
  });

  factory Top.fromJson(Map<String, dynamic> json) =>
      _$TopFromJson(json);

  Map<String, dynamic> toJson() => _$TopToJson(this);

  Top copyWith({
    double? value,
    String? units,
  }) {
    return Top(
      value: value ?? this.value,
      units: units ?? this.units,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class Left {
  final double? value;
  final String? units;

  const Left({
    this.value,
    this.units,
  });

  factory Left.fromJson(Map<String, dynamic> json) =>
      _$LeftFromJson(json);

  Map<String, dynamic> toJson() => _$LeftToJson(this);

  Left copyWith({
    double? value,
    String? units,
  }) {
    return Left(
      value: value ?? this.value,
      units: units ?? this.units,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class Right {
  final double? value;
  final String? units;

  const Right({
    this.value,
    this.units,
  });

  factory Right.fromJson(Map<String, dynamic> json) =>
      _$RightFromJson(json);

  Map<String, dynamic> toJson() => _$RightToJson(this);

  Right copyWith({
    double? value,
    String? units,
  }) {
    return Right(
      value: value ?? this.value,
      units: units ?? this.units,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class Bottom {
  final double? value;
  final String? units;

  const Bottom({
    this.value,
    this.units,
  });

  factory Bottom.fromJson(Map<String, dynamic> json) =>
      _$BottomFromJson(json);

  Map<String, dynamic> toJson() => _$BottomToJson(this);

  Bottom copyWith({
    double? value,
    String? units,
  }) {
    return Bottom(
      value: value ?? this.value,
      units: units ?? this.units,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class BoundingBox {
  final Top? top;
  final Left? left;
  final Right? right;
  final Bottom? bottom;

  const BoundingBox({
    this.top,
    this.left,
    this.right,
    this.bottom,
  });

  factory BoundingBox.fromJson(Map<String, dynamic> json) =>
      _$BoundingBoxFromJson(json);

  Map<String, dynamic> toJson() => _$BoundingBoxToJson(this);

  BoundingBox copyWith({
    Top? top,
    Left? left,
    Right? right,
    Bottom? bottom,
  }) {
    return BoundingBox(
      top: top ?? this.top,
      left: left ?? this.left,
      right: right ?? this.right,
      bottom: bottom ?? this.bottom,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class ParagraphStyle {
  final String? justification;
  final double? firstLineIndent;
  final double? startIndent;
  final double? endIndent;
  final double? spaceBefore;
  final double? spaceAfter;
  final bool? autoHyphenate;
  final double? hyphenatedWordSize;
  final double? preHyphen;
  final double? postHyphen;
  final double? consecutiveHyphens;
  final double? zone;
  final List<double>? wordSpacing;
  final List<double>? letterSpacing;
  final List<double>? glyphSpacing;
  final double? autoLeading;
  final double? leadingType;
  final bool? hanging;
  final bool? burasagari;
  final double? kinsokuOrder;
  final bool? everyLineComposer;

  const ParagraphStyle({
    this.justification,
    this.firstLineIndent,
    this.startIndent,
    this.endIndent,
    this.spaceBefore,
    this.spaceAfter,
    this.autoHyphenate,
    this.hyphenatedWordSize,
    this.preHyphen,
    this.postHyphen,
    this.consecutiveHyphens,
    this.zone,
    this.wordSpacing,
    this.letterSpacing,
    this.glyphSpacing,
    this.autoLeading,
    this.leadingType,
    this.hanging,
    this.burasagari,
    this.kinsokuOrder,
    this.everyLineComposer,
  });

  factory ParagraphStyle.fromJson(Map<String, dynamic> json) =>
      _$ParagraphStyleFromJson(json);

  Map<String, dynamic> toJson() => _$ParagraphStyleToJson(this);

  ParagraphStyle copyWith({
    String? justification,
    double? firstLineIndent,
    double? startIndent,
    double? endIndent,
    double? spaceBefore,
    double? spaceAfter,
    bool? autoHyphenate,
    double? hyphenatedWordSize,
    double? preHyphen,
    double? postHyphen,
    double? consecutiveHyphens,
    double? zone,
    List<double>? wordSpacing,
    List<double>? letterSpacing,
    List<double>? glyphSpacing,
    double? autoLeading,
    double? leadingType,
    bool? hanging,
    bool? burasagari,
    double? kinsokuOrder,
    bool? everyLineComposer,
  }) {
    return ParagraphStyle(
      justification: justification ?? this.justification,
      firstLineIndent: firstLineIndent ?? this.firstLineIndent,
      startIndent: startIndent ?? this.startIndent,
      endIndent: endIndent ?? this.endIndent,
      spaceBefore: spaceBefore ?? this.spaceBefore,
      spaceAfter: spaceAfter ?? this.spaceAfter,
      autoHyphenate: autoHyphenate ?? this.autoHyphenate,
      hyphenatedWordSize: hyphenatedWordSize ?? this.hyphenatedWordSize,
      preHyphen: preHyphen ?? this.preHyphen,
      postHyphen: postHyphen ?? this.postHyphen,
      consecutiveHyphens: consecutiveHyphens ?? this.consecutiveHyphens,
      zone: zone ?? this.zone,
      wordSpacing: wordSpacing ?? this.wordSpacing,
      letterSpacing: letterSpacing ?? this.letterSpacing,
      glyphSpacing: glyphSpacing ?? this.glyphSpacing,
      autoLeading: autoLeading ?? this.autoLeading,
      leadingType: leadingType ?? this.leadingType,
      hanging: hanging ?? this.hanging,
      burasagari: burasagari ?? this.burasagari,
      kinsokuOrder: kinsokuOrder ?? this.kinsokuOrder,
      everyLineComposer: everyLineComposer ?? this.everyLineComposer,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class Style {
  final Font? font;
  final double? fontSize;
  final bool? autoLeading;
  final double? leading;
  final bool? autoKerning;
  final double? kerning;
  final double? fontCaps;
  final ColorEntity? fillColor;

  const Style({
    this.font,
    this.fontSize,
    this.autoLeading,
    this.leading,
    this.autoKerning,
    this.kerning,
    this.fontCaps,
    this.fillColor,
  });

  factory Style.fromJson(Map<String, dynamic> json) =>
      _$StyleFromJson(json);

  Map<String, dynamic> toJson() => _$StyleToJson(this);

  Style copyWith({
    Font? font,
    double? fontSize,
    bool? autoLeading,
    double? leading,
    bool? autoKerning,
    double? kerning,
    double? fontCaps,
    ColorEntity? fillColor,
  }) {
    return Style(
      font: font ?? this.font,
      fontSize: fontSize ?? this.fontSize,
      autoLeading: autoLeading ?? this.autoLeading,
      leading: leading ?? this.leading,
      autoKerning: autoKerning ?? this.autoKerning,
      kerning: kerning ?? this.kerning,
      fontCaps: fontCaps ?? this.fontCaps,
      fillColor: fillColor ?? this.fillColor,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class Font {
  final String? name;
  final double? script;
  final double? type;
  final double? synthetic;

  const Font({
    this.name,
    this.script,
    this.type,
    this.synthetic,
  });

  factory Font.fromJson(Map<String, dynamic> json) =>
      _$FontFromJson(json);

  Map<String, dynamic> toJson() => _$FontToJson(this);

  Font copyWith({
    String? name,
    double? script,
    double? type,
    double? synthetic,
  }) {
    return Font(
      name: name ?? this.name,
      script: script ?? this.script,
      type: type ?? this.type,
      synthetic: synthetic ?? this.synthetic,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class Protected {
  final bool? transparency;
  final bool? composite;
  final bool? position;

  const Protected({
    this.transparency,
    this.composite,
    this.position,
  });

  factory Protected.fromJson(Map<String, dynamic> json) =>
      _$ProtectedFromJson(json);

  Map<String, dynamic> toJson() => _$ProtectedToJson(this);

  Protected copyWith({
    bool? transparency,
    bool? composite,
    bool? position,
  }) {
    return Protected(
      transparency: transparency ?? this.transparency,
      composite: composite ?? this.composite,
      position: position ?? this.position,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class ReferencePoint {
  final double? x;
  final double? y;

  const ReferencePoint({
    this.x,
    this.y,
  });

  factory ReferencePoint.fromJson(Map<String, dynamic> json) =>
      _$ReferencePointFromJson(json);

  Map<String, dynamic> toJson() => _$ReferencePointToJson(this);

  ReferencePoint copyWith({
    double? x,
    double? y,
  }) {
    return ReferencePoint(
      x: x ?? this.x,
      y: y ?? this.y,
    );
  }
}
