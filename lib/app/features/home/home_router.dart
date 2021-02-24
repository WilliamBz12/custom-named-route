import 'package:custom_app_router/custom_app_router.dart';
import 'package:structuremodel/app/features/home/home_provider.dart';
import 'subfeatures/details/details_router.dart';

import 'pages/home_page.dart';

class HomeRouter extends CustomFeatureRouter {
  @override
  List<CustomRouter> get routes => [
        CustomRouter(
          name: CustomNavigator.initialRoute,
          child: (_, args) => HomeProvider(
            child: HomePage(),
          ),
        ),
        CustomRouter(
          name: "/details",
          subfeature: DetailsRouter(),
        ),
      ];
}
