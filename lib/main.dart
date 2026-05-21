import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ram_demo_app/app/app.dart';
import 'package:ram_demo_app/app/blocs/app_bloc_observer.dart';
import 'package:ram_demo_app/app/di/injection.dart';
import 'package:ram_demo_app/core/errors/error_handler.dart';
import 'package:ram_demo_app/core/gen/l10n/strings.g.dart';
import 'package:talker/talker.dart';


void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await configureDependencies();
      final talker = getIt<Talker>();
      ErrorHandler.talker = talker;
      Bloc.observer = AppBlocObserver(talker: talker);

      FlutterError.onError = (details) =>
          talker.handle(details.exception, details.stack);

      PlatformDispatcher.instance.onError = (error, stack) {
        talker.handle(error, stack);
        return true;
      };

      await LocaleSettings.useDeviceLocale();
      runApp(TranslationProvider(child: const RAMApp()));
    },
    (error, stack) {
      if (getIt.isRegistered<Talker>()) {
        getIt<Talker>().handle(error, stack);
      } else {
        debugPrint('Error before Talker init: $error\n$stack');
      }
    },
  );
}
