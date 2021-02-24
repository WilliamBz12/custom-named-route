import 'package:custom_app_router/custom_app_router.dart';
import 'package:custom_app_router/models/custom_feature_model.dart';

import 'features/home/home_router.dart';
import 'features/second/second_feature_router.dart';
import 'features/splash/splash_router.dart';

class AppRouter extends CustomAppRouter {
  @override
  Function get generateRoutes =>
      CustomNavigator().generateRoutes(appRouter: AppRouter());

  @override
  List<CustomFeature> get features => [
        CustomFeature(
          name: CustomNavigator.initialRoute,
          router: SplashRouter(),
        ),
        CustomFeature(
          name: "/home",
          router: HomeRouter(),
        ),
        CustomFeature(
          name: "/second",
          router: SecondFeatureRouter(),
        ),
      ];
}
