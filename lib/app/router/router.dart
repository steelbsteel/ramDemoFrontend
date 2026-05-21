import 'package:auto_route/auto_route.dart';
import 'package:ram_demo_app/app/router/router.gr.dart';
import 'package:ram_demo_app/core/theme/app_values.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter{

  final _fadeIn = RouteType.custom(
    transitionsBuilder: TransitionsBuilders.fadeIn,
    duration: AppValues.routeTransitionDuration,
  );

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: SplashRoute.page,
      type: _fadeIn,
      path: AppValues.splashPath,
      initial: true
    )
  ];
}