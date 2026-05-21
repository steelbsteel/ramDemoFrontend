import 'package:flutter/material.dart';
import 'package:ram_demo_app/core/theme/app_colors.dart';

extension AppThemeExtensionX on BuildContext {
  AppColorsExtension get appColors =>
      Theme.of(this).extension<AppColorsExtension>()!;

  AppStylesExtension get appStyles =>
      Theme.of(this).extension<AppStylesExtension>()!;
}

class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  const AppColorsExtension({
    required this.background,
    required this.backgroundTabBarBody,
    required this.success,
    required this.successActive,
    required this.green10,
    required this.greenMessage,
    required this.greyMuted,
    required this.neutral,
    required this.neutralDefault,
    required this.neutralActive,
    required this.disabled,
    required this.red,
    required this.error,
    required this.errorActive,
    required this.accent,
    required this.accentActive,
    required this.orange25,
    required this.tangerine,
    required this.tangerine15,
    required this.warning,
    required this.blue,
    required this.white,
    required this.black,
    required this.transparent,
  });
  factory AppColorsExtension.fromPalette(AppColorPalette p) =>
      AppColorsExtension(
        background: p.background,
        backgroundTabBarBody: p.backgroundTabBarBody,
        success: p.success,
        successActive: p.successActive,
        green10: p.green10,
        greenMessage: p.greenMessage,
        greyMuted: p.greyMuted,
        neutral: p.neutral,
        neutralDefault: p.neutralDefault,
        neutralActive: p.neutralActive,
        disabled: p.disabled,
        red: p.red,
        error: p.error,
        errorActive: p.errorActive,
        accent: p.accent,
        accentActive: p.accentActive,
        orange25: p.orange25,
        tangerine: p.tangerine,
        tangerine15: p.tangerine15,
        warning: p.warning,
        blue: p.blue,
        white: p.white,
        black: p.black,
        transparent: p.transparent,
      );

  final Color background;
  final Color backgroundTabBarBody;
  final Color success;
  final Color successActive;
  final Color green10;
  final Color greenMessage;
  final Color greyMuted;
  final Color neutral;
  final Color neutralDefault;
  final Color neutralActive;
  final Color disabled;
  final Color red;
  final Color error;
  final Color errorActive;
  final Color accent;
  final Color accentActive;
  final Color orange25;
  final Color white;
  final Color tangerine;
  final Color tangerine15;
  final Color warning;
  final Color blue;
  final Color black;
  final Color transparent;

  @override
  AppColorsExtension copyWith({
    Color? background,
    Color? backgroundTabBarBody,
    Color? success,
    Color? successActive,
    Color? green10,
    Color? greenMessage,
    Color? greyMuted,
    Color? neutral,
    Color? neutralDefault,
    Color? neutralActive,
    Color? disabled,
    Color? red,
    Color? error,
    Color? errorActive,
    Color? accent,
    Color? accentActive,
    Color? orange25,
    Color? tangerine,
    Color? tangerine15,
    Color? warning,
    Color? blue,
    Color? black,
    Color? white,
    Color? transparent,
  }) => AppColorsExtension(
    background: background ?? this.background,
    backgroundTabBarBody: backgroundTabBarBody ?? this.backgroundTabBarBody,
    success: success ?? this.success,
    successActive: successActive ?? this.successActive,
    green10: green10 ?? this.green10,
    greenMessage: greenMessage ?? this.greenMessage,
    greyMuted: greyMuted ?? this.greyMuted,
    neutral: neutral ?? this.neutral,
    neutralDefault: neutralDefault ?? this.neutralDefault,
    neutralActive: neutralActive ?? this.neutralActive,
    disabled: disabled ?? this.disabled,
    red: red ?? this.red,
    error: error ?? this.error,
    errorActive: errorActive ?? this.errorActive,
    accent: accent ?? this.accent,
    accentActive: accentActive ?? this.accentActive,
    orange25: orange25 ?? this.orange25,
    tangerine: tangerine ?? this.tangerine,
    tangerine15: tangerine15 ?? this.tangerine15,
    warning: warning ?? this.warning,
    blue: blue ?? this.blue,
    black: black ?? this.black,
    white: white ?? this.white,
    transparent: transparent ?? this.transparent,
  );

  @override
  AppColorsExtension lerp(ThemeExtension<AppColorsExtension>? other, double t) {
    if (other is! AppColorsExtension) return this;
    return AppColorsExtension(
      background: Color.lerp(background, other.background, t)!,
      backgroundTabBarBody: Color.lerp(
        backgroundTabBarBody,
        other.backgroundTabBarBody,
        t,
      )!,
      success: Color.lerp(success, other.success, t)!,
      successActive: Color.lerp(successActive, other.successActive, t)!,
      green10: Color.lerp(green10, other.green10, t)!,
      greenMessage: Color.lerp(greenMessage, other.greenMessage, t)!,
      greyMuted: Color.lerp(greyMuted, other.greyMuted, t)!,
      neutral: Color.lerp(neutral, other.neutral, t)!,
      neutralDefault: Color.lerp(neutralDefault, other.neutralDefault, t)!,
      neutralActive: Color.lerp(neutralActive, other.neutralActive, t)!,
      disabled: Color.lerp(disabled, other.disabled, t)!,
      red: Color.lerp(red, other.red, t)!,
      error: Color.lerp(error, other.error, t)!,
      errorActive: Color.lerp(errorActive, other.errorActive, t)!,
      accent: Color.lerp(accent, other.accent, t)!,
      accentActive: Color.lerp(accentActive, other.accentActive, t)!,
      orange25: Color.lerp(orange25, other.orange25, t)!,
      tangerine: Color.lerp(tangerine, other.tangerine, t)!,
      tangerine15: Color.lerp(tangerine15, other.tangerine15, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      blue: Color.lerp(blue, other.blue, t)!,
      white: Color.lerp(white, other.white, t)!,
      black: Color.lerp(black, other.black, t)!,
      transparent: Color.lerp(transparent, other.transparent, t)!,
    );
  }
}

class AppStylesExtension extends ThemeExtension<AppStylesExtension> {
  const AppStylesExtension();

  factory AppStylesExtension.fromPalette() => const AppStylesExtension(
  );

  
  @override
  AppStylesExtension copyWith() {
    return AppStylesExtension();
  }

  @override
  AppStylesExtension lerp(ThemeExtension<AppStylesExtension>? other, double t) {
    if (other is! AppStylesExtension) return this;
    return AppStylesExtension(

    );
  }
}
