import 'dart:ui';

abstract class AppColorPalette {
  Color get green;
  Color get violet;
  Color get mint;
  Color get cyan;
  Color get blue;
  Color get white;
  Color get black;
  Color get transparent;

  Color get primaryFont;
  Color get secondaryFont;
  Color get hintFont;
  Color get background;
  Color get backgroundSecondary;
  Color get accent;
  Color get success;
  Color get error;
  Color get disabled;
}

abstract final class AppColors {
  static const AppColorPalette palette = _LightPalette();
  static const AppColorPalette darkPallete = _DarkPalette();
}

final class _LightPalette implements AppColorPalette {
  const _LightPalette();

  @override
  Color get cyan => const Color(0xFF5497A7);

  @override
  Color get green => const Color(0xFF82D116);

  @override
  Color get mint => const Color(0xFFF0F7F4);

  @override
  Color get violet => const Color(0xFF1F0322);

  @override
  Color get blue => const Color(0xFF294C60);

  @override
  Color get background => const Color(0xFFFFFFFF);

  @override
  Color get white => const Color(0xFFFFFFFF);

  @override
  Color get black => const Color(0xFF000000);

  @override
  Color get transparent => const Color(0x00000000);

  @override
  Color get accent => throw UnimplementedError();

  @override
  // TODO: implement backgroundSecondary
  Color get backgroundSecondary => throw UnimplementedError();

  @override
  // TODO: implement disabled
  Color get disabled => throw UnimplementedError();

  @override
  // TODO: implement error
  Color get error => throw UnimplementedError();

  @override
  // TODO: implement success
  Color get success => throw UnimplementedError();

    @override
  // TODO: implement primaryFont
  Color get primaryFont => throw UnimplementedError();

  @override
  // TODO: implement secondaryFont
  Color get secondaryFont => throw UnimplementedError();

  @override
  // TODO: implement hintFont
  Color get hintFont => throw UnimplementedError();
}

final class _DarkPalette implements AppColorPalette {
  const _DarkPalette();

  @override
  Color get background => const Color(0xFFFFFFFF);

  @override
  Color get backgroundTabBarBody => const Color(0xFFF6F6F8);

  @override
  Color get white => const Color(0xFFFFFFFF);

  @override
  Color get success => const Color(0xFF019F3C);

  @override
  Color get successActive => const Color(0xFF016F2A);

  @override
  Color get green10 => const Color(0xFF019F3C).withValues(alpha: 0.1);

  @override
  Color get greenMessage => const Color(0xFFD0FAC2);

  @override
  Color get greyMuted => const Color(0xFF858FA3);

  @override
  Color get neutral => const Color(0xFF445371);

  @override
  Color get neutralDefault => const Color(0xFF445371).withValues(alpha: 0.1);

  @override
  Color get neutralActive => const Color(0xFF445371).withValues(alpha: 0.25);

  @override
  Color get disabled => const Color(0xFF445371).withValues(alpha: 0.5);

  @override
  Color get red => const Color(0xFFD91528);

  @override
  Color get error => const Color(0xFFD91528);

  @override
  Color get errorActive => const Color(0xFF980F1C);

  @override
  Color get accent => const Color(0xFFF46720);

  @override
  Color get accentActive => const Color(0xFFBA5911);

  @override
  Color get orange25 => const Color(0xFFF46720).withValues(alpha: 0.25);

  @override
  Color get tangerine => const Color(0xFFE87315);

  @override
  Color get tangerine15 => const Color(0xFFE87315).withValues(alpha: 0.15);

  @override
  Color get warning => const Color(0xFFF29100);

  @override
  Color get blue => const Color(0xFF1998FF);

  @override
  Color get black => const Color(0xFF000000);

  @override
  Color get transparent => const Color(0x00000000);
}
