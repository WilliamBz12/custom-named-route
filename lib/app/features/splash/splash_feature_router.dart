import 'package:custom_app_router/custom_app_router.dart';

import 'pages/splash_page.dart';

class SplashFeatureRouter extends CustomFeatureRouter {
  @override
  List<CustomRouter> get routes => [
        CustomRouter(
          name: CustomNavigator.initialRoute,
          child: (_, args) => SplashPage(),
        ),
      ];
}
