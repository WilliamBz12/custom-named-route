import 'package:custom_app_router/custom_app_router.dart';
import 'package:structuremodel/app/features/splash/splash_page.dart';

class SplashFeature extends CustomFeature {
  @override
  List<CustomRouter> get routes => [
        CustomRouter(
          name: CustomNavigator.initialRoute,
          child: (_, args) => SplashPage(),
        ),
      ];
}
