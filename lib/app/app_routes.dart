import 'package:structuremodel/app/features/home/home_router.dart';
import 'package:structuremodel/app/features/second/second_page.dart';
import 'package:structuremodel/app/features/second/second_router.dart';
import 'package:structuremodel/app/features/splash/splash_page.dart';
import 'package:custom_app_router/custom_app_router.dart';

import 'features/home/home_page.dart';

class AppRoutes extends AppCustomRouter {
  @override
  List<CustomAppRouter> get routes => [
        CustomAppRouter(
          name: NavigatorCustomAppRouter.initialRoute,
          child: (_, args) => SplashPage(),
        ),
        CustomAppRouter(
          name: "/home",
          child: (_, args) => HomePage(),
          featureRouter: HomeRouter(),
        ),
        CustomAppRouter(
          name: "/second",
          child: (_, args) => SecondPage(
            title: args.data,
          ),
          featureRouter: SecondRouter(),
        ),
      ];
}
