import 'package:custom_app_router/models/custom_feature_router_model.dart';
import 'package:structuremodel/app/features/home/home_feature.dart';
import 'package:custom_app_router/custom_app_router.dart';
import 'package:structuremodel/app/features/second/second_feature.dart';
import 'package:structuremodel/app/features/splash/splash_feature.dart';

class AppFeatures extends CustomAppRouter {
  @override
  List<CustomFeatureRouter> get features => [
        CustomFeatureRouter(
          name: CustomNavigator.initialRoute,
          feature: SplashFeature(),
        ),
        CustomFeatureRouter(
          name: "/home",
          feature: HomeFeature(),
        ),
        CustomFeatureRouter(
          name: "/second",
          feature: SecondFeature(),
        ),
      ];

  @override
  Function get generateRoutes =>
      CustomNavigator().generateRoutes(appFeatures: AppFeatures());
}
