import 'package:flutter/material.dart';
import 'package:ram_demo_app/core/extensions/app_theme_extension.dart';
import 'package:ram_demo_app/core/gen/assets/fonts.gen.dart';
import 'package:ram_demo_app/core/theme/app_colors.dart';

abstract final class AppTheme {
  static ThemeData get palette => _build();

  static ThemeData _build() {
    const palette = AppColors.palette;
    final appStylesExtension = AppStylesExtension.fromPalette();

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      fontFamily: FontFamily.golos,
      extensions: [AppColorsExtension.fromPalette(palette), appStylesExtension],
    );
  }
}
