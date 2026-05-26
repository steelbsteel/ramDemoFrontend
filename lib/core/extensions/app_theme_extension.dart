import 'package:flutter/material.dart';
import 'package:ram_demo_app/core/theme/app_colors.dart';
import 'package:ram_demo_app/core/theme/app_text_styles.dart';

extension AppThemeExtensionX on BuildContext {
  AppColorsExtension get appColors =>
      Theme.of(this).extension<AppColorsExtension>()!;

  AppStylesExtension get appStyles =>
      Theme.of(this).extension<AppStylesExtension>()!;
}

class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  const AppColorsExtension({
    required this.green,
    required this.violet,
    required this.mint,
    required this.cyan,
    required this.blue,
    required this.white,
    required this.black,
    required this.transparent,

    required this.primaryFont,
    required this.secondaryFont,
    required this.hintFont,
    required this.background,
    required this.accent,
    required this.success,
    required this.error,
    required this.disabled,
  });
  factory AppColorsExtension.fromPalette(AppColorPalette p) =>
      AppColorsExtension(
        green: p.green,
        violet: p.violet,
        mint: p.mint,
        cyan: p.cyan,
        blue: p.blue,
        white: p.white,
        black: p.black,
        transparent: p.transparent,

        primaryFont: p.primaryFont,
        secondaryFont: p.secondaryFont,
        hintFont: p.hintFont,
        background: p.background,
        accent: p.accent,
        success: p.success,
        error: p.error,
        disabled: p.disabled,
      );

  final Color green;
  final Color violet;
  final Color mint;
  final Color cyan;
  final Color blue;
  final Color white;
  final Color black;
  final Color transparent;

  final Color primaryFont;
  final Color secondaryFont;
  final Color hintFont;
  final Color background;
  final Color accent;
  final Color success;
  final Color error;
  final Color disabled;

  @override
  AppColorsExtension copyWith({
    Color? green,
    Color? violet,
    Color? mint,
    Color? cyan,
    Color? blue,
    Color? white,
    Color? black,
    Color? transparent,

    Color? primaryFont,
    Color? secondaryFont,
    Color? hintFont,
    Color? background,
    Color? accent,
    Color? success,
    Color? error,
    Color? disabled,
  }) => AppColorsExtension(
    green: green ?? this.green,
    violet: violet ?? this.violet,
    mint: mint ?? this.mint,
    cyan: cyan ?? this.cyan,
    blue: blue ?? this.blue,
    white: white ?? this.white,
    black: black ?? this.black,
    transparent: transparent ?? this.transparent,

    primaryFont: primaryFont ?? this.primaryFont,
    secondaryFont: secondaryFont ?? this.secondaryFont,
    hintFont: hintFont ?? this.hintFont,
    background: background ?? this.background,
    accent: accent ?? this.accent,
    success: success ?? this.success,
    error: error ?? this.error,
    disabled: disabled ?? this.disabled,
  );

  @override
  AppColorsExtension lerp(ThemeExtension<AppColorsExtension>? other, double t) {
    if (other is! AppColorsExtension) return this;
    return AppColorsExtension(
      green: Color.lerp(green, other.green, t)!,
      violet: Color.lerp(violet, other.violet, t)!,
      mint: Color.lerp(mint, other.mint, t)!,
      cyan: Color.lerp(cyan, other.cyan, t)!,
      blue: Color.lerp(blue, other.blue, t)!,
      white: Color.lerp(white, other.white, t)!,
      black: Color.lerp(black, other.black, t)!,
      transparent: Color.lerp(transparent, other.transparent, t)!,

      primaryFont: Color.lerp(primaryFont, other.primaryFont, t)!,
      secondaryFont: Color.lerp(secondaryFont, other.secondaryFont, t)!,
      hintFont: Color.lerp(hintFont, other.hintFont, t)!,
      background: Color.lerp(background, other.background, t)!,
      accent: Color.lerp(accent, other.accent, t)!,
      success: Color.lerp(success, other.success, t)!,
      error: Color.lerp(error, other.error, t)!,
      disabled: Color.lerp(disabled, other.disabled, t)!,
    );
  }
}

class AppStylesExtension extends ThemeExtension<AppStylesExtension> {
  const AppStylesExtension({
    required this.h1,
    required this.h3,
    required this.h4,
    required this.caption,
    required this.captionBold,
    required this.bodyMedium,
    required this.bodySmall,
    required this.textS16W500G,
    required this.textS16W400G,
    required this.textS12W400G,
    required this.textS12W600G,
    required this.noStyle,
  });
  factory AppStylesExtension.fromPalette() => const AppStylesExtension(
    h1: AppTextStyles.h1S24W600,
    h3: AppTextStyles.h3S20W600,
    h4: AppTextStyles.h4S16W500,
    caption: AppTextStyles.captionS12W400,
    captionBold: AppTextStyles.captionBoldS12W500,
    bodyMedium: AppTextStyles.bodyMediumS16W400,
    bodySmall: AppTextStyles.bodySmallS14W400,
    textS16W500G: AppTextStyles.textS16W500G,
    textS16W400G: AppTextStyles.textS16W400G,
    textS12W400G: AppTextStyles.textS12W400G,
    textS12W600G: AppTextStyles.textS12W600G,
    noStyle: AppTextStyles.noStyle,
  );

  final TextStyle h1;
  final TextStyle h3;
  final TextStyle h4;
  final TextStyle caption;
  final TextStyle captionBold;
  final TextStyle bodyMedium;
  final TextStyle bodySmall;
  final TextStyle textS16W500G;
  final TextStyle textS16W400G;
  final TextStyle textS12W400G;
  final TextStyle textS12W600G;
  final TextStyle noStyle;

  @override
  AppStylesExtension copyWith({
    TextStyle? h1,
    TextStyle? h3,
    TextStyle? h4,
    TextStyle? caption,
    TextStyle? captionBold,
    TextStyle? bodyMedium,
    TextStyle? bodySmall,
    TextStyle? textS16W500G,
    TextStyle? textS16W400G,
    TextStyle? textS12W400G,
    TextStyle? textS12W600G,
    TextStyle? noStyle,
  }) => AppStylesExtension(
    h1: h1 ?? this.h1,
    h3: h3 ?? this.h3,
    h4: h4 ?? this.h4,
    caption: caption ?? this.caption,
    captionBold: captionBold ?? this.captionBold,
    bodyMedium: bodyMedium ?? this.bodyMedium,
    bodySmall: bodySmall ?? this.bodySmall,
    textS16W500G: textS16W500G ?? this.textS16W500G,
    textS16W400G: textS16W400G ?? this.textS16W400G,
    textS12W400G: textS12W400G ?? this.textS12W400G,
    textS12W600G: textS12W600G ?? this.textS12W600G,
    noStyle: noStyle ?? this.noStyle,
  );

  @override
  AppStylesExtension lerp(ThemeExtension<AppStylesExtension>? other, double t) {
    if (other is! AppStylesExtension) return this;
    return AppStylesExtension(
      h1: TextStyle.lerp(h1, other.h1, t)!,
      h3: TextStyle.lerp(h3, other.h3, t)!,
      h4: TextStyle.lerp(h4, other.h4, t)!,
      caption: TextStyle.lerp(caption, other.caption, t)!,
      captionBold: TextStyle.lerp(captionBold, other.captionBold, t)!,
      bodyMedium: TextStyle.lerp(bodyMedium, other.bodyMedium, t)!,
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t)!,
      textS16W500G: TextStyle.lerp(textS16W500G, other.textS16W500G, t)!,
      textS16W400G: TextStyle.lerp(textS16W400G, other.textS16W400G, t)!,
      textS12W400G: TextStyle.lerp(textS12W400G, other.textS12W400G, t)!,
      textS12W600G: TextStyle.lerp(textS12W600G, other.textS12W600G, t)!,
      noStyle: TextStyle.lerp(noStyle, other.noStyle, t)!,
    );
  }
}
