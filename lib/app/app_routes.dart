import 'package:structuremodel/app/core/routes/custom_app_route_model.dart';
import 'package:structuremodel/app/core/routes/navigator_custom_app_router.dart';
import 'package:structuremodel/app/features/home/home_routes.dart';
import 'package:structuremodel/app/features/second/second_page.dart';
import 'package:structuremodel/app/features/second/second_routes.dart';
import 'package:structuremodel/app/features/splash/splash_page.dart';

import 'core/routes/app_route_interface.dart';
import 'features/home/home_page.dart';

class AppRoutes extends AppCustomRoutes {
  @override
  List<CustomAppRouter> get routes => [
        CustomAppRouter(
          name: NavigatorCustomAppRouter.initialRoute,
          child: (_, args) => SplashPage(),
        ),
        CustomAppRouter(
          name: "/home",
          child: (_, args) => HomePage(),
          subRoutes: HomeRoutes().subRoutes,
        ),
        CustomAppRouter(
          name: "/second",
          child: (_, args) => SecondPage(
            title: args.data,
          ),
          subRoutes: SecondRoutes().subRoutes,
        ),
      ];
}
