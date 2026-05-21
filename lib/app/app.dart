import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ram_demo_app/app/di/injection.dart';
import 'package:ram_demo_app/app/router/router.dart';
import 'package:ram_demo_app/core/gen/l10n/strings.g.dart';
import 'package:ram_demo_app/core/theme/app_theme.dart';

const _APP_NAME = 'RAM';

class RAMApp extends StatelessWidget {
  const RAMApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = getIt<AppRouter>();
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
      child: MaterialApp.router(
        locale: TranslationProvider.of(context).flutterLocale,
        supportedLocales: AppLocaleUtils.supportedLocales,
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
        title: _APP_NAME,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.palette,
        themeMode: ThemeMode.light,
        routerConfig: router.config(),
      ),
    );
  }
}
