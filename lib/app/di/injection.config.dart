// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:graphql/client.dart' as _i763;
import 'package:injectable/injectable.dart' as _i526;
import 'package:ram_demo_app/app/di/injection.dart' as _i900;
import 'package:ram_demo_app/app/router/router.dart' as _i154;
import 'package:shared_preferences/shared_preferences.dart' as _i460;
import 'package:talker/talker.dart' as _i993;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final infrasctuctureModule = _$InfrasctuctureModule();
    gh.lazySingleton<_i154.AppRouter>(() => infrasctuctureModule.appRouter);
    gh.lazySingleton<_i993.Talker>(() => infrasctuctureModule.talker);
    gh.lazySingletonAsync<_i460.SharedPreferences>(
      () => infrasctuctureModule.sharedPreferences,
    );
    gh.lazySingleton<_i361.Dio>(() => infrasctuctureModule.dio());
    gh.lazySingleton<_i763.GraphQLClient>(
      () => infrasctuctureModule.graphQLClient(
        gh<_i361.Dio>(),
        gh<_i993.Talker>(),
      ),
    );
    return this;
  }
}

class _$InfrasctuctureModule extends _i900.InfrasctuctureModule {}
