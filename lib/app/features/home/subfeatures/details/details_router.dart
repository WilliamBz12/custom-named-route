import 'package:custom_app_router/custom_app_router.dart';

import 'pages/details_page.dart';
import 'pages/product_page.dart';

class DetailsRouter extends CustomSubFeatureRouter {
  @override
  List<CustomRouter> get routes => [
        CustomRouter(
          name: CustomNavigator.initialRoute,
          child: (_, args) => DetailsPage(args?.data),
        ),
        CustomRouter(
          name: "/products",
          child: (_, args) => ProductPage(),
        ),
      ];
}
