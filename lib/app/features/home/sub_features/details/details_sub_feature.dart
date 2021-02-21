import 'package:custom_app_router/custom_app_router.dart';
import 'package:structuremodel/app/features/home/sub_features/details/pages/details_page.dart';
import 'package:structuremodel/app/features/home/sub_features/details/pages/product_page.dart';

class DetailsFeature extends CustomSubFeature {
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
