// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'psd_child_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PsdChildEntity _$PsdChildEntityFromJson(Map<String, dynamic> json) =>
    PsdChildEntity(
      top: (json['top'] as num?)?.toDouble(),
      left: (json['left'] as num?)?.toDouble(),
      bottom: (json['bottom'] as num?)?.toDouble(),
      right: (json['right'] as num?)?.toDouble(),
      blendMode: json['blendMode'] as String?,
      opacity: (json['opacity'] as num?)?.toDouble(),
      clipping: json['clipping'] as bool?,
      transparencyProtected: json['transparencyProtected'] as bool?,
      hidden: json['hidden'] as bool?,
      effectsOpen: json['effectsOpen'] as bool?,
      name: json['name'] as String?,
      effects: json['effects'] == null
          ? null
          : EffectEntitys.fromJson(json['effects'] as Map<String, dynamic>),
      text: json['text'] == null
          ? null
          : TextEntity.fromJson(json['text'] as Map<String, dynamic>),
      nameSource: json['nameSource'] as String?,
      id: (json['id'] as num?)?.toInt(),
      blendClippendElements: json['blendClippendElements'] as bool?,
      blendInteriorElements: json['blendInteriorElements'] as bool?,
      knockout: json['knockout'] as bool?,
      protected: json['protected'] == null
          ? null
          : Protected.fromJson(json['protected'] as Map<String, dynamic>),
      layerColor: json['layerColor'] as String?,
      timestamp: (json['timestamp'] as num?)?.toDouble(),
      referencePoint: json['referencePoint'] == null
          ? null
          : ReferencePoint.fromJson(
              json['referencePoint'] as Map<String, dynamic>,
            ),
      imageUrl: json['imageUrl'] as String?,
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => PsdChildEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PsdChildEntityToJson(PsdChildEntity instance) =>
    <String, dynamic>{
      'top': instance.top,
      'left': instance.left,
      'bottom': instance.bottom,
      'right': instance.right,
      'blendMode': instance.blendMode,
      'opacity': instance.opacity,
      'clipping': instance.clipping,
      'transparencyProtected': instance.transparencyProtected,
      'hidden': instance.hidden,
      'effectsOpen': instance.effectsOpen,
      'name': instance.name,
      'effects': instance.effects,
      'text': instance.text,
      'nameSource': instance.nameSource,
      'id': instance.id,
      'blendClippendElements': instance.blendClippendElements,
      'blendInteriorElements': instance.blendInteriorElements,
      'knockout': instance.knockout,
      'protected': instance.protected,
      'layerColor': instance.layerColor,
      'timestamp': instance.timestamp,
      'referencePoint': instance.referencePoint,
      'imageUrl': instance.imageUrl,
      'children': instance.children,
    };

EffectEntitys _$EffectEntitysFromJson(Map<String, dynamic> json) =>
    EffectEntitys(
      scale: (json['scale'] as num?)?.toDouble(),
      dropShadow: (json['dropShadow'] as List<dynamic>?)
          ?.map((e) => DropShadow.fromJson(e as Map<String, dynamic>))
          .toList(),
      innerShadow: (json['innerShadow'] as List<dynamic>?)
          ?.map((e) => InnerShadow.fromJson(e as Map<String, dynamic>))
          .toList(),
      outerGlow: json['outerGlow'] == null
          ? null
          : OuterGlow.fromJson(json['outerGlow'] as Map<String, dynamic>),
      innerGlow: json['innerGlow'] == null
          ? null
          : InnerGlow.fromJson(json['innerGlow'] as Map<String, dynamic>),
      bevel: json['bevel'] == null
          ? null
          : Bevel.fromJson(json['bevel'] as Map<String, dynamic>),
      solidFill: (json['solidFill'] as List<dynamic>?)
          ?.map((e) => SolidFill.fromJson(e as Map<String, dynamic>))
          .toList(),
      gradientOverlay: (json['gradientOverlay'] as List<dynamic>?)
          ?.map((e) => GradientOverlay.fromJson(e as Map<String, dynamic>))
          .toList(),
      satin: json['satin'] == null
          ? null
          : Satin.fromJson(json['satin'] as Map<String, dynamic>),
      stroke: (json['stroke'] as List<dynamic>?)
          ?.map((e) => StrokeEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EffectEntitysToJson(EffectEntitys instance) =>
    <String, dynamic>{
      'scale': instance.scale,
      'dropShadow': instance.dropShadow,
      'innerShadow': instance.innerShadow,
      'outerGlow': instance.outerGlow,
      'innerGlow': instance.innerGlow,
      'bevel': instance.bevel,
      'solidFill': instance.solidFill,
      'gradientOverlay': instance.gradientOverlay,
      'satin': instance.satin,
      'stroke': instance.stroke,
    };

DropShadow _$DropShadowFromJson(Map<String, dynamic> json) => DropShadow(
  enabled: json['enabled'] as bool?,
  present: json['present'] as bool?,
  showInDialog: json['showInDialog'] as bool?,
  blendMode: json['blendMode'] as String?,
  color: json['color'] == null
      ? null
      : ColorEntity.fromJson(json['color'] as Map<String, dynamic>),
  opacity: (json['opacity'] as num?)?.toDouble(),
  useGlobalLight: json['useGlobalLight'] as bool?,
  angle: (json['angle'] as num?)?.toDouble(),
  distance: json['distance'] == null
      ? null
      : DistanceEntity.fromJson(json['distance'] as Map<String, dynamic>),
  choke: json['choke'] == null
      ? null
      : Choke.fromJson(json['choke'] as Map<String, dynamic>),
  size: json['size'] == null
      ? null
      : SizeEntity.fromJson(json['size'] as Map<String, dynamic>),
  noise: (json['noise'] as num?)?.toDouble(),
  antialiased: json['antialiased'] as bool?,
  contour: json['contour'] == null
      ? null
      : Contour.fromJson(json['contour'] as Map<String, dynamic>),
  layerConceals: json['layerConceals'] as bool?,
);

Map<String, dynamic> _$DropShadowToJson(DropShadow instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'present': instance.present,
      'showInDialog': instance.showInDialog,
      'blendMode': instance.blendMode,
      'color': instance.color,
      'opacity': instance.opacity,
      'useGlobalLight': instance.useGlobalLight,
      'angle': instance.angle,
      'distance': instance.distance,
      'choke': instance.choke,
      'size': instance.size,
      'noise': instance.noise,
      'antialiased': instance.antialiased,
      'contour': instance.contour,
      'layerConceals': instance.layerConceals,
    };

ColorEntity _$ColorEntityFromJson(Map<String, dynamic> json) => ColorEntity(
  r: (json['r'] as num?)?.toInt(),
  g: (json['g'] as num?)?.toInt(),
  b: (json['b'] as num?)?.toInt(),
);

Map<String, dynamic> _$ColorEntityToJson(ColorEntity instance) =>
    <String, dynamic>{'r': instance.r, 'g': instance.g, 'b': instance.b};

DistanceEntity _$DistanceEntityFromJson(Map<String, dynamic> json) =>
    DistanceEntity(
      value: (json['value'] as num?)?.toDouble(),
      units: json['units'] as String?,
    );

Map<String, dynamic> _$DistanceEntityToJson(DistanceEntity instance) =>
    <String, dynamic>{'value': instance.value, 'units': instance.units};

Choke _$ChokeFromJson(Map<String, dynamic> json) => Choke(
  value: (json['value'] as num?)?.toDouble(),
  units: json['units'] as String?,
);

Map<String, dynamic> _$ChokeToJson(Choke instance) => <String, dynamic>{
  'value': instance.value,
  'units': instance.units,
};

SizeEntity _$SizeEntityFromJson(Map<String, dynamic> json) => SizeEntity(
  value: (json['value'] as num?)?.toDouble(),
  units: json['units'] as String?,
);

Map<String, dynamic> _$SizeEntityToJson(SizeEntity instance) =>
    <String, dynamic>{'value': instance.value, 'units': instance.units};

Contour _$ContourFromJson(Map<String, dynamic> json) => Contour(
  name: json['name'] as String?,
  curve: (json['curve'] as List<dynamic>?)
      ?.map((e) => CurveEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ContourToJson(Contour instance) => <String, dynamic>{
  'name': instance.name,
  'curve': instance.curve,
};

CurveEntity _$CurveEntityFromJson(Map<String, dynamic> json) => CurveEntity(
  x: (json['x'] as num?)?.toDouble(),
  y: (json['y'] as num?)?.toDouble(),
);

Map<String, dynamic> _$CurveEntityToJson(CurveEntity instance) =>
    <String, dynamic>{'x': instance.x, 'y': instance.y};

InnerShadow _$InnerShadowFromJson(Map<String, dynamic> json) => InnerShadow(
  enabled: json['enabled'] as bool?,
  present: json['present'] as bool?,
  showInDialog: json['showInDialog'] as bool?,
  blendMode: json['blendMode'] as String?,
  color: json['color'] == null
      ? null
      : ColorEntity.fromJson(json['color'] as Map<String, dynamic>),
  opacity: (json['opacity'] as num?)?.toDouble(),
  useGlobalLight: json['useGlobalLight'] as bool?,
  angle: (json['angle'] as num?)?.toDouble(),
  distance: json['distance'] == null
      ? null
      : DistanceEntity.fromJson(json['distance'] as Map<String, dynamic>),
  choke: json['choke'] == null
      ? null
      : Choke.fromJson(json['choke'] as Map<String, dynamic>),
  size: json['size'] == null
      ? null
      : SizeEntity.fromJson(json['size'] as Map<String, dynamic>),
  noise: (json['noise'] as num?)?.toDouble(),
  antialiased: json['antialiased'] as bool?,
  contour: json['contour'] == null
      ? null
      : Contour.fromJson(json['contour'] as Map<String, dynamic>),
);

Map<String, dynamic> _$InnerShadowToJson(InnerShadow instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'present': instance.present,
      'showInDialog': instance.showInDialog,
      'blendMode': instance.blendMode,
      'color': instance.color,
      'opacity': instance.opacity,
      'useGlobalLight': instance.useGlobalLight,
      'angle': instance.angle,
      'distance': instance.distance,
      'choke': instance.choke,
      'size': instance.size,
      'noise': instance.noise,
      'antialiased': instance.antialiased,
      'contour': instance.contour,
    };

OuterGlow _$OuterGlowFromJson(Map<String, dynamic> json) => OuterGlow(
  enabled: json['enabled'] as bool?,
  present: json['present'] as bool?,
  showInDialog: json['showInDialog'] as bool?,
  blendMode: json['blendMode'] as String?,
  color: json['color'] == null
      ? null
      : ColorEntity.fromJson(json['color'] as Map<String, dynamic>),
  opacity: (json['opacity'] as num?)?.toDouble(),
  technique: json['technique'] as String?,
  choke: json['choke'] == null
      ? null
      : Choke.fromJson(json['choke'] as Map<String, dynamic>),
  size: json['size'] == null
      ? null
      : SizeEntity.fromJson(json['size'] as Map<String, dynamic>),
  noise: (json['noise'] as num?)?.toDouble(),
  jitter: (json['jitter'] as num?)?.toDouble(),
  antialiased: json['antialiased'] as bool?,
  contour: json['contour'] == null
      ? null
      : Contour.fromJson(json['contour'] as Map<String, dynamic>),
  range: (json['range'] as num?)?.toDouble(),
);

Map<String, dynamic> _$OuterGlowToJson(OuterGlow instance) => <String, dynamic>{
  'enabled': instance.enabled,
  'present': instance.present,
  'showInDialog': instance.showInDialog,
  'blendMode': instance.blendMode,
  'color': instance.color,
  'opacity': instance.opacity,
  'technique': instance.technique,
  'choke': instance.choke,
  'size': instance.size,
  'noise': instance.noise,
  'jitter': instance.jitter,
  'antialiased': instance.antialiased,
  'contour': instance.contour,
  'range': instance.range,
};

InnerGlow _$InnerGlowFromJson(Map<String, dynamic> json) => InnerGlow(
  enabled: json['enabled'] as bool?,
  present: json['present'] as bool?,
  showInDialog: json['showInDialog'] as bool?,
  blendMode: json['blendMode'] as String?,
  color: json['color'] == null
      ? null
      : ColorEntity.fromJson(json['color'] as Map<String, dynamic>),
  opacity: (json['opacity'] as num?)?.toDouble(),
  technique: json['technique'] as String?,
  choke: json['choke'] == null
      ? null
      : Choke.fromJson(json['choke'] as Map<String, dynamic>),
  size: json['size'] == null
      ? null
      : SizeEntity.fromJson(json['size'] as Map<String, dynamic>),
  noise: (json['noise'] as num?)?.toDouble(),
  jitter: (json['jitter'] as num?)?.toDouble(),
  antialiased: json['antialiased'] as bool?,
  contour: json['contour'] == null
      ? null
      : Contour.fromJson(json['contour'] as Map<String, dynamic>),
  range: (json['range'] as num?)?.toDouble(),
  source: json['source'] as String?,
);

Map<String, dynamic> _$InnerGlowToJson(InnerGlow instance) => <String, dynamic>{
  'enabled': instance.enabled,
  'present': instance.present,
  'showInDialog': instance.showInDialog,
  'blendMode': instance.blendMode,
  'color': instance.color,
  'opacity': instance.opacity,
  'technique': instance.technique,
  'choke': instance.choke,
  'size': instance.size,
  'noise': instance.noise,
  'jitter': instance.jitter,
  'antialiased': instance.antialiased,
  'contour': instance.contour,
  'range': instance.range,
  'source': instance.source,
};

Bevel _$BevelFromJson(Map<String, dynamic> json) => Bevel(
  enabled: json['enabled'] as bool?,
  present: json['present'] as bool?,
  showInDialog: json['showInDialog'] as bool?,
  highlightBlendMode: json['highlightBlendMode'] as String?,
  highlightColor: json['highlightColor'] == null
      ? null
      : ColorEntity.fromJson(json['highlightColor'] as Map<String, dynamic>),
  highlightOpacity: (json['highlightOpacity'] as num?)?.toDouble(),
  shadowBlendMode: json['shadowBlendMode'] as String?,
  shadowColor: json['shadowColor'] == null
      ? null
      : ColorEntity.fromJson(json['shadowColor'] as Map<String, dynamic>),
  shadowOpacity: (json['shadowOpacity'] as num?)?.toDouble(),
  technique: json['technique'] as String?,
  style: json['style'] as String?,
  useGlobalLight: json['useGlobalLight'] as bool?,
  angle: (json['angle'] as num?)?.toDouble(),
  altitude: (json['altitude'] as num?)?.toDouble(),
  strength: (json['strength'] as num?)?.toDouble(),
  size: json['size'] == null
      ? null
      : SizeEntity.fromJson(json['size'] as Map<String, dynamic>),
  direction: json['direction'] as String?,
  contour: json['contour'] == null
      ? null
      : Contour.fromJson(json['contour'] as Map<String, dynamic>),
  antialiasGloss: json['antialiasGloss'] as bool?,
  soften: json['soften'] == null
      ? null
      : Soften.fromJson(json['soften'] as Map<String, dynamic>),
  useShape: json['useShape'] as bool?,
  useTexture: json['useTexture'] as bool?,
);

Map<String, dynamic> _$BevelToJson(Bevel instance) => <String, dynamic>{
  'enabled': instance.enabled,
  'present': instance.present,
  'showInDialog': instance.showInDialog,
  'highlightBlendMode': instance.highlightBlendMode,
  'highlightColor': instance.highlightColor,
  'highlightOpacity': instance.highlightOpacity,
  'shadowBlendMode': instance.shadowBlendMode,
  'shadowColor': instance.shadowColor,
  'shadowOpacity': instance.shadowOpacity,
  'technique': instance.technique,
  'style': instance.style,
  'useGlobalLight': instance.useGlobalLight,
  'angle': instance.angle,
  'altitude': instance.altitude,
  'strength': instance.strength,
  'size': instance.size,
  'direction': instance.direction,
  'contour': instance.contour,
  'antialiasGloss': instance.antialiasGloss,
  'soften': instance.soften,
  'useShape': instance.useShape,
  'useTexture': instance.useTexture,
};

Soften _$SoftenFromJson(Map<String, dynamic> json) => Soften(
  value: (json['value'] as num?)?.toDouble(),
  units: json['units'] as String?,
);

Map<String, dynamic> _$SoftenToJson(Soften instance) => <String, dynamic>{
  'value': instance.value,
  'units': instance.units,
};

SolidFill _$SolidFillFromJson(Map<String, dynamic> json) => SolidFill(
  enabled: json['enabled'] as bool?,
  present: json['present'] as bool?,
  showInDialog: json['showInDialog'] as bool?,
  blendMode: json['blendMode'] as String?,
  color: json['color'] == null
      ? null
      : ColorEntity.fromJson(json['color'] as Map<String, dynamic>),
  opacity: (json['opacity'] as num?)?.toDouble(),
);

Map<String, dynamic> _$SolidFillToJson(SolidFill instance) => <String, dynamic>{
  'enabled': instance.enabled,
  'present': instance.present,
  'showInDialog': instance.showInDialog,
  'blendMode': instance.blendMode,
  'color': instance.color,
  'opacity': instance.opacity,
};

GradientOverlay _$GradientOverlayFromJson(Map<String, dynamic> json) =>
    GradientOverlay(
      enabled: json['enabled'] as bool?,
      present: json['present'] as bool?,
      showInDialog: json['showInDialog'] as bool?,
      blendMode: json['blendMode'] as String?,
      opacity: (json['opacity'] as num?)?.toDouble(),
      gradient: json['gradient'] == null
          ? null
          : Gradient.fromJson(json['gradient'] as Map<String, dynamic>),
      angle: (json['angle'] as num?)?.toDouble(),
      type: json['type'] as String?,
      reverse: json['reverse'] as bool?,
      dither: json['dither'] as bool?,
      interpolationMethod: json['interpolationMethod'] as String?,
      align: json['align'] as bool?,
      scale: (json['scale'] as num?)?.toDouble(),
      offset: json['offset'] == null
          ? null
          : OffsetEntity.fromJson(json['offset'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GradientOverlayToJson(GradientOverlay instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'present': instance.present,
      'showInDialog': instance.showInDialog,
      'blendMode': instance.blendMode,
      'opacity': instance.opacity,
      'gradient': instance.gradient,
      'angle': instance.angle,
      'type': instance.type,
      'reverse': instance.reverse,
      'dither': instance.dither,
      'interpolationMethod': instance.interpolationMethod,
      'align': instance.align,
      'scale': instance.scale,
      'offset': instance.offset,
    };

Gradient _$GradientFromJson(Map<String, dynamic> json) => Gradient(
  type: json['type'] as String?,
  name: json['name'] as String?,
  smoothness: (json['smoothness'] as num?)?.toDouble(),
  colorStops: (json['colorStops'] as List<dynamic>?)
      ?.map((e) => ColorStops.fromJson(e as Map<String, dynamic>))
      .toList(),
  opacityStops: (json['opacityStops'] as List<dynamic>?)
      ?.map((e) => OpacityStops.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GradientToJson(Gradient instance) => <String, dynamic>{
  'type': instance.type,
  'name': instance.name,
  'smoothness': instance.smoothness,
  'colorStops': instance.colorStops,
  'opacityStops': instance.opacityStops,
};

ColorStops _$ColorStopsFromJson(Map<String, dynamic> json) => ColorStops(
  color: json['color'] == null
      ? null
      : ColorEntity.fromJson(json['color'] as Map<String, dynamic>),
  location: (json['location'] as num?)?.toDouble(),
  midpoint: (json['midpoint'] as num?)?.toDouble(),
);

Map<String, dynamic> _$ColorStopsToJson(ColorStops instance) =>
    <String, dynamic>{
      'color': instance.color,
      'location': instance.location,
      'midpoint': instance.midpoint,
    };

OpacityStops _$OpacityStopsFromJson(Map<String, dynamic> json) => OpacityStops(
  opacity: (json['opacity'] as num?)?.toDouble(),
  location: (json['location'] as num?)?.toDouble(),
  midpoint: (json['midpoint'] as num?)?.toDouble(),
);

Map<String, dynamic> _$OpacityStopsToJson(OpacityStops instance) =>
    <String, dynamic>{
      'opacity': instance.opacity,
      'location': instance.location,
      'midpoint': instance.midpoint,
    };

OffsetEntity _$OffsetEntityFromJson(Map<String, dynamic> json) => OffsetEntity(
  x: (json['x'] as num?)?.toDouble(),
  y: (json['y'] as num?)?.toDouble(),
);

Map<String, dynamic> _$OffsetEntityToJson(OffsetEntity instance) =>
    <String, dynamic>{'x': instance.x, 'y': instance.y};

Satin _$SatinFromJson(Map<String, dynamic> json) => Satin(
  enabled: json['enabled'] as bool?,
  present: json['present'] as bool?,
  showInDialog: json['showInDialog'] as bool?,
  blendMode: json['blendMode'] as String?,
  color: json['color'] == null
      ? null
      : ColorEntity.fromJson(json['color'] as Map<String, dynamic>),
  antialiased: json['antialiased'] as bool?,
  invert: json['invert'] as bool?,
  opacity: (json['opacity'] as num?)?.toDouble(),
  angle: (json['angle'] as num?)?.toDouble(),
  distance: json['distance'] == null
      ? null
      : DistanceEntity.fromJson(json['distance'] as Map<String, dynamic>),
  size: json['size'] == null
      ? null
      : SizeEntity.fromJson(json['size'] as Map<String, dynamic>),
  contour: json['contour'] == null
      ? null
      : Contour.fromJson(json['contour'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SatinToJson(Satin instance) => <String, dynamic>{
  'enabled': instance.enabled,
  'present': instance.present,
  'showInDialog': instance.showInDialog,
  'blendMode': instance.blendMode,
  'color': instance.color,
  'antialiased': instance.antialiased,
  'invert': instance.invert,
  'opacity': instance.opacity,
  'angle': instance.angle,
  'distance': instance.distance,
  'size': instance.size,
  'contour': instance.contour,
};

StrokeEntity _$StrokeEntityFromJson(Map<String, dynamic> json) => StrokeEntity(
  enabled: json['enabled'] as bool?,
  position: json['position'] as String?,
  fillType: json['fillType'] as String?,
  blendMode: json['blendMode'] as String?,
  opacity: (json['opacity'] as num?)?.toDouble(),
  size: json['size'] == null
      ? null
      : SizeEntity.fromJson(json['size'] as Map<String, dynamic>),
  present: json['present'] as bool?,
  showInDialog: json['showInDialog'] as bool?,
  overprint: json['overprint'] as bool?,
  color: json['color'] == null
      ? null
      : ColorEntity.fromJson(json['color'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StrokeEntityToJson(StrokeEntity instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'position': instance.position,
      'fillType': instance.fillType,
      'blendMode': instance.blendMode,
      'opacity': instance.opacity,
      'size': instance.size,
      'present': instance.present,
      'showInDialog': instance.showInDialog,
      'overprint': instance.overprint,
      'color': instance.color,
    };

TextEntity _$TextEntityFromJson(Map<String, dynamic> json) => TextEntity(
  transform: (json['transform'] as List<dynamic>?)
      ?.map((e) => (e as num).toDouble())
      .toList(),
  left: (json['left'] as num?)?.toDouble(),
  top: (json['top'] as num?)?.toDouble(),
  right: (json['right'] as num?)?.toDouble(),
  bottom: (json['bottom'] as num?)?.toDouble(),
  text: json['text'] as String?,
  index: (json['index'] as num?)?.toInt(),
  gridding: json['gridding'] as String?,
  antiAlias: json['antiAlias'] as String?,
  orientation: json['orientation'] as String?,
  warp: json['warp'] == null
      ? null
      : Warp.fromJson(json['warp'] as Map<String, dynamic>),
  bounds: json['bounds'] == null
      ? null
      : Bounds.fromJson(json['bounds'] as Map<String, dynamic>),
  boundingBox: json['boundingBox'] == null
      ? null
      : BoundingBox.fromJson(json['boundingBox'] as Map<String, dynamic>),
  useFractionalGlyphWidths: json['useFractionalGlyphWidths'] as bool?,
  superscriptSize: (json['superscriptSize'] as num?)?.toDouble(),
  superscriptPosition: (json['superscriptPosition'] as num?)?.toDouble(),
  subscriptSize: (json['subscriptSize'] as num?)?.toDouble(),
  subscriptPosition: (json['subscriptPosition'] as num?)?.toDouble(),
  smallCapSize: (json['smallCapSize'] as num?)?.toDouble(),
  shapeType: json['shapeType'] as String?,
  pointBase: (json['pointBase'] as List<dynamic>?)
      ?.map((e) => (e as num).toDouble())
      .toList(),
  paragraphStyle: json['paragraphStyle'] == null
      ? null
      : ParagraphStyle.fromJson(json['paragraphStyle'] as Map<String, dynamic>),
  style: json['style'] == null
      ? null
      : Style.fromJson(json['style'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TextEntityToJson(TextEntity instance) =>
    <String, dynamic>{
      'transform': instance.transform,
      'left': instance.left,
      'top': instance.top,
      'right': instance.right,
      'bottom': instance.bottom,
      'text': instance.text,
      'index': instance.index,
      'gridding': instance.gridding,
      'antiAlias': instance.antiAlias,
      'orientation': instance.orientation,
      'warp': instance.warp,
      'bounds': instance.bounds,
      'boundingBox': instance.boundingBox,
      'useFractionalGlyphWidths': instance.useFractionalGlyphWidths,
      'superscriptSize': instance.superscriptSize,
      'superscriptPosition': instance.superscriptPosition,
      'subscriptSize': instance.subscriptSize,
      'subscriptPosition': instance.subscriptPosition,
      'smallCapSize': instance.smallCapSize,
      'shapeType': instance.shapeType,
      'pointBase': instance.pointBase,
      'paragraphStyle': instance.paragraphStyle,
      'style': instance.style,
    };

Warp _$WarpFromJson(Map<String, dynamic> json) => Warp(
  style: json['style'] as String?,
  value: (json['value'] as num?)?.toDouble(),
  perspective: (json['perspective'] as num?)?.toDouble(),
  perspectiveOther: (json['perspectiveOther'] as num?)?.toDouble(),
  rotate: json['rotate'] as String?,
);

Map<String, dynamic> _$WarpToJson(Warp instance) => <String, dynamic>{
  'style': instance.style,
  'value': instance.value,
  'perspective': instance.perspective,
  'perspectiveOther': instance.perspectiveOther,
  'rotate': instance.rotate,
};

Bounds _$BoundsFromJson(Map<String, dynamic> json) => Bounds(
  top: json['top'] == null
      ? null
      : Top.fromJson(json['top'] as Map<String, dynamic>),
  left: json['left'] == null
      ? null
      : Left.fromJson(json['left'] as Map<String, dynamic>),
  right: json['right'] == null
      ? null
      : Right.fromJson(json['right'] as Map<String, dynamic>),
  bottom: json['bottom'] == null
      ? null
      : Bottom.fromJson(json['bottom'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BoundsToJson(Bounds instance) => <String, dynamic>{
  'top': instance.top,
  'left': instance.left,
  'right': instance.right,
  'bottom': instance.bottom,
};

Top _$TopFromJson(Map<String, dynamic> json) => Top(
  value: (json['value'] as num?)?.toDouble(),
  units: json['units'] as String?,
);

Map<String, dynamic> _$TopToJson(Top instance) => <String, dynamic>{
  'value': instance.value,
  'units': instance.units,
};

Left _$LeftFromJson(Map<String, dynamic> json) => Left(
  value: (json['value'] as num?)?.toDouble(),
  units: json['units'] as String?,
);

Map<String, dynamic> _$LeftToJson(Left instance) => <String, dynamic>{
  'value': instance.value,
  'units': instance.units,
};

Right _$RightFromJson(Map<String, dynamic> json) => Right(
  value: (json['value'] as num?)?.toDouble(),
  units: json['units'] as String?,
);

Map<String, dynamic> _$RightToJson(Right instance) => <String, dynamic>{
  'value': instance.value,
  'units': instance.units,
};

Bottom _$BottomFromJson(Map<String, dynamic> json) => Bottom(
  value: (json['value'] as num?)?.toDouble(),
  units: json['units'] as String?,
);

Map<String, dynamic> _$BottomToJson(Bottom instance) => <String, dynamic>{
  'value': instance.value,
  'units': instance.units,
};

BoundingBox _$BoundingBoxFromJson(Map<String, dynamic> json) => BoundingBox(
  top: json['top'] == null
      ? null
      : Top.fromJson(json['top'] as Map<String, dynamic>),
  left: json['left'] == null
      ? null
      : Left.fromJson(json['left'] as Map<String, dynamic>),
  right: json['right'] == null
      ? null
      : Right.fromJson(json['right'] as Map<String, dynamic>),
  bottom: json['bottom'] == null
      ? null
      : Bottom.fromJson(json['bottom'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BoundingBoxToJson(BoundingBox instance) =>
    <String, dynamic>{
      'top': instance.top,
      'left': instance.left,
      'right': instance.right,
      'bottom': instance.bottom,
    };

ParagraphStyle _$ParagraphStyleFromJson(Map<String, dynamic> json) =>
    ParagraphStyle(
      justification: json['justification'] as String?,
      firstLineIndent: (json['firstLineIndent'] as num?)?.toDouble(),
      startIndent: (json['startIndent'] as num?)?.toDouble(),
      endIndent: (json['endIndent'] as num?)?.toDouble(),
      spaceBefore: (json['spaceBefore'] as num?)?.toDouble(),
      spaceAfter: (json['spaceAfter'] as num?)?.toDouble(),
      autoHyphenate: json['autoHyphenate'] as bool?,
      hyphenatedWordSize: (json['hyphenatedWordSize'] as num?)?.toDouble(),
      preHyphen: (json['preHyphen'] as num?)?.toDouble(),
      postHyphen: (json['postHyphen'] as num?)?.toDouble(),
      consecutiveHyphens: (json['consecutiveHyphens'] as num?)?.toDouble(),
      zone: (json['zone'] as num?)?.toDouble(),
      wordSpacing: (json['wordSpacing'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      letterSpacing: (json['letterSpacing'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      glyphSpacing: (json['glyphSpacing'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      autoLeading: (json['autoLeading'] as num?)?.toDouble(),
      leadingType: (json['leadingType'] as num?)?.toDouble(),
      hanging: json['hanging'] as bool?,
      burasagari: json['burasagari'] as bool?,
      kinsokuOrder: (json['kinsokuOrder'] as num?)?.toDouble(),
      everyLineComposer: json['everyLineComposer'] as bool?,
    );

Map<String, dynamic> _$ParagraphStyleToJson(ParagraphStyle instance) =>
    <String, dynamic>{
      'justification': instance.justification,
      'firstLineIndent': instance.firstLineIndent,
      'startIndent': instance.startIndent,
      'endIndent': instance.endIndent,
      'spaceBefore': instance.spaceBefore,
      'spaceAfter': instance.spaceAfter,
      'autoHyphenate': instance.autoHyphenate,
      'hyphenatedWordSize': instance.hyphenatedWordSize,
      'preHyphen': instance.preHyphen,
      'postHyphen': instance.postHyphen,
      'consecutiveHyphens': instance.consecutiveHyphens,
      'zone': instance.zone,
      'wordSpacing': instance.wordSpacing,
      'letterSpacing': instance.letterSpacing,
      'glyphSpacing': instance.glyphSpacing,
      'autoLeading': instance.autoLeading,
      'leadingType': instance.leadingType,
      'hanging': instance.hanging,
      'burasagari': instance.burasagari,
      'kinsokuOrder': instance.kinsokuOrder,
      'everyLineComposer': instance.everyLineComposer,
    };

Style _$StyleFromJson(Map<String, dynamic> json) => Style(
  font: json['font'] == null
      ? null
      : Font.fromJson(json['font'] as Map<String, dynamic>),
  fontSize: (json['fontSize'] as num?)?.toDouble(),
  autoLeading: json['autoLeading'] as bool?,
  leading: (json['leading'] as num?)?.toDouble(),
  autoKerning: json['autoKerning'] as bool?,
  kerning: (json['kerning'] as num?)?.toDouble(),
  fontCaps: (json['fontCaps'] as num?)?.toDouble(),
  fillColor: json['fillColor'] == null
      ? null
      : ColorEntity.fromJson(json['fillColor'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StyleToJson(Style instance) => <String, dynamic>{
  'font': instance.font,
  'fontSize': instance.fontSize,
  'autoLeading': instance.autoLeading,
  'leading': instance.leading,
  'autoKerning': instance.autoKerning,
  'kerning': instance.kerning,
  'fontCaps': instance.fontCaps,
  'fillColor': instance.fillColor,
};

Font _$FontFromJson(Map<String, dynamic> json) => Font(
  name: json['name'] as String?,
  script: (json['script'] as num?)?.toDouble(),
  type: (json['type'] as num?)?.toDouble(),
  synthetic: (json['synthetic'] as num?)?.toDouble(),
);

Map<String, dynamic> _$FontToJson(Font instance) => <String, dynamic>{
  'name': instance.name,
  'script': instance.script,
  'type': instance.type,
  'synthetic': instance.synthetic,
};

Protected _$ProtectedFromJson(Map<String, dynamic> json) => Protected(
  transparency: json['transparency'] as bool?,
  composite: json['composite'] as bool?,
  position: json['position'] as bool?,
);

Map<String, dynamic> _$ProtectedToJson(Protected instance) => <String, dynamic>{
  'transparency': instance.transparency,
  'composite': instance.composite,
  'position': instance.position,
};

ReferencePoint _$ReferencePointFromJson(Map<String, dynamic> json) =>
    ReferencePoint(
      x: (json['x'] as num?)?.toDouble(),
      y: (json['y'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ReferencePointToJson(ReferencePoint instance) =>
    <String, dynamic>{'x': instance.x, 'y': instance.y};
