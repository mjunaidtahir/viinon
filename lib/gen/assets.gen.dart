/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsAnimationsGen {
  const $AssetsAnimationsGen();

  /// File path: assets/animations/animation.json
  String get animation => 'assets/animations/animation.json';

  /// File path: assets/animations/coffeesplash.json
  String get coffeesplash => 'assets/animations/coffeesplash.json';

  /// File path: assets/animations/scuccess.json
  String get scuccess => 'assets/animations/scuccess.json';

  /// File path: assets/animations/viinon1.json
  String get viinon1 => 'assets/animations/viinon1.json';

  /// File path: assets/animations/viinon2.png
  AssetGenImage get viinon2 =>
      const AssetGenImage('assets/animations/viinon2.png');

  /// List of all assets
  List<dynamic> get values =>
      [animation, coffeesplash, scuccess, viinon1, viinon2];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/addbabyicon.svg
  SvgGenImage get addbabyicon =>
      const SvgGenImage('assets/images/addbabyicon.svg');

  /// File path: assets/images/apple.svg
  SvgGenImage get apple => const SvgGenImage('assets/images/apple.svg');

  /// File path: assets/images/babyboy.svg
  SvgGenImage get babyboy => const SvgGenImage('assets/images/babyboy.svg');

  /// File path: assets/images/babygirl.svg
  SvgGenImage get babygirl => const SvgGenImage('assets/images/babygirl.svg');

  /// File path: assets/images/babyicon.svg
  SvgGenImage get babyicon => const SvgGenImage('assets/images/babyicon.svg');

  /// File path: assets/images/breastfeeding.svg
  SvgGenImage get breastfeeding =>
      const SvgGenImage('assets/images/breastfeeding.svg');

  /// File path: assets/images/breastpump.svg
  SvgGenImage get breastpump =>
      const SvgGenImage('assets/images/breastpump.svg');

  /// File path: assets/images/coffeepic.svg
  SvgGenImage get coffeepic => const SvgGenImage('assets/images/coffeepic.svg');

  /// File path: assets/images/coffeepic2.svg
  SvgGenImage get coffeepic2 =>
      const SvgGenImage('assets/images/coffeepic2.svg');

  /// File path: assets/images/facebook.svg
  SvgGenImage get facebook => const SvgGenImage('assets/images/facebook.svg');

  /// File path: assets/images/google.svg
  SvgGenImage get google => const SvgGenImage('assets/images/google.svg');

  /// File path: assets/images/injection.svg
  SvgGenImage get injection => const SvgGenImage('assets/images/injection.svg');

  /// File path: assets/images/medicine.svg
  SvgGenImage get medicine => const SvgGenImage('assets/images/medicine.svg');

  /// File path: assets/images/mother.svg
  SvgGenImage get mother => const SvgGenImage('assets/images/mother.svg');

  /// File path: assets/images/motherbaby.svg
  SvgGenImage get motherbaby =>
      const SvgGenImage('assets/images/motherbaby.svg');

  /// File path: assets/images/setbaby.svg
  SvgGenImage get setbaby => const SvgGenImage('assets/images/setbaby.svg');

  /// File path: assets/images/vaccineicon.svg
  SvgGenImage get vaccineicon =>
      const SvgGenImage('assets/images/vaccineicon.svg');

  /// File path: assets/images/viinon.svg
  SvgGenImage get viinon => const SvgGenImage('assets/images/viinon.svg');

  /// File path: assets/images/viinon2.svg
  SvgGenImage get viinon2 => const SvgGenImage('assets/images/viinon2.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        addbabyicon,
        apple,
        babyboy,
        babygirl,
        babyicon,
        breastfeeding,
        breastpump,
        coffeepic,
        coffeepic2,
        facebook,
        google,
        injection,
        medicine,
        mother,
        motherbaby,
        setbaby,
        vaccineicon,
        viinon,
        viinon2
      ];
}

class $AssetsSliderGen {
  const $AssetsSliderGen();

  /// File path: assets/slider/animation1.gif
  AssetGenImage get animation1 =>
      const AssetGenImage('assets/slider/animation1.gif');

  /// File path: assets/slider/animation2.gif
  AssetGenImage get animation2 =>
      const AssetGenImage('assets/slider/animation2.gif');

  /// File path: assets/slider/animation3.gif
  AssetGenImage get animation3 =>
      const AssetGenImage('assets/slider/animation3.gif');

  /// File path: assets/slider/viinon.png
  AssetGenImage get viinon => const AssetGenImage('assets/slider/viinon.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [animation1, animation2, animation3, viinon];
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/en.json
  String get en => 'assets/translations/en.json';

  /// File path: assets/translations/fr.json
  String get fr => 'assets/translations/fr.json';

  /// List of all assets
  List<String> get values => [en, fr];
}

class Assets {
  Assets._();

  static const $AssetsAnimationsGen animations = $AssetsAnimationsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSliderGen slider = $AssetsSliderGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
