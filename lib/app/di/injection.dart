import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:ram_demo_app/app/di/injection.config.dart';
import 'package:ram_demo_app/app/router/router.dart';
import 'package:ram_demo_app/features/data/factories/dio_client_factory.dart';
import 'package:ram_demo_app/features/data/factories/graphQL_client_factory.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:talker/talker.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => getIt.init();

@module
abstract class InfrasctuctureModule {
  @lazySingleton
  AppRouter get appRouter => AppRouter();

  @lazySingleton
  Talker get talker => Talker();

  @lazySingleton
  Dio dio() => DioClientFactory.create();

  @lazySingleton
  GraphQLClient graphQLClient(Dio dio, Talker talker) =>
      QraphQLClientFactory.create(dio: dio, talker: talker);

  @lazySingleton
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();
}
