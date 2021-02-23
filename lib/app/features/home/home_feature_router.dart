import 'package:custom_app_router/custom_app_router.dart';
import 'package:structuremodel/app/features/home/home_provider.dart';
import 'sub_features/details/details_sub_feature_router.dart';

import 'pages/home_page.dart';

class HomeFeatureRouter extends CustomFeatureRouter {
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
          subFeature: DetailsFeature(),
        ),
      ];
}
