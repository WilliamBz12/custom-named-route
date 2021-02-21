import 'package:custom_app_router/custom_app_router.dart';
import 'package:structuremodel/app/features/home/home_provider.dart';
import 'package:structuremodel/app/features/home/sub_features/details/details_sub_feature.dart';

import 'pages/home_page.dart';

class HomeFeature extends CustomFeature {
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
