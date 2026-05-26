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
  Color get accent => const Color(0xFF82D116);

  @override
  Color get disabled => const Color(0xFF999999);

  @override
  Color get error => const Color(0xFFC40000);

  @override
  Color get success => const Color(0xFF82D116);

  @override
  Color get primaryFont => const Color(0xFF1F0322);

  @override
  Color get secondaryFont => const Color(0xFF999999);

  @override
  Color get hintFont => const Color(0xFF000000);
}

final class _DarkPalette implements AppColorPalette {
  const _DarkPalette();

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
  Color get white => const Color(0xFFFFFFFF);

  @override
  Color get black => const Color(0xFF000000);

  @override
  Color get transparent => const Color(0x00000000);

  @override
  Color get background => const Color(0xFF1F0322); 
  

  @override
  Color get accent => const Color(0xFF82D116); 
  
  @override
  Color get disabled => const Color(0xFF5A5A5A); 
  
  @override
  Color get error => const Color(0xFFE53935); 

  @override
  Color get success => const Color(0xFF82D116);

  @override
  Color get primaryFont => const Color(0xFFF0F7F4); 
  
  @override
  Color get secondaryFont => const Color(0xFFBDBDBD); 
  
  @override
  Color get hintFont => const Color(0xFF757575); 
}
