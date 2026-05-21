import 'dart:ui';

abstract class AppColorPalette {
  Color get background;
  Color get backgroundTabBarBody;
  Color get success;
  Color get successActive;
  Color get green10;
  Color get greenMessage;
  Color get greyMuted;
  Color get neutral;
  Color get neutralDefault;
  Color get neutralActive;
  Color get disabled;
  Color get red;
  Color get error;
  Color get errorActive;
  Color get accent;
  Color get accentActive;
  Color get orange25;
  Color get tangerine;
  Color get tangerine15;
  Color get warning;
  Color get blue;
  Color get white;
  Color get black;
  Color get transparent;
}

abstract final class AppColors {
  static const AppColorPalette palette = _LightPalette();
  static const AppColorPalette darkPallete = _DarkPalette();
}

final class _LightPalette implements AppColorPalette {
  const _LightPalette();

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
