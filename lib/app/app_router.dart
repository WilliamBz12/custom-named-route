import 'package:custom_app_router/custom_app_router.dart';
import 'package:custom_app_router/models/custom_feature_model.dart';

import 'features/home/home_feature_router.dart';
import 'features/second/second_feature_router.dart';
import 'features/splash/splash_feature_router.dart';

class AppRouter extends CustomAppRouter {
  @override
  Function get generateRoutes =>
      CustomNavigator().generateRoutes(appFeatures: AppRouter());

  @override
  List<CustomFeature> get features => [
        CustomFeature(
          name: CustomNavigator.initialRoute,
          feature: SplashFeatureRouter(),
        ),
        CustomFeature(
          name: "/home",
          feature: HomeFeatureRouter(),
        ),
        CustomFeature(
          name: "/second",
          feature: SecondFeatureRouter(),
        ),
      ];
}
