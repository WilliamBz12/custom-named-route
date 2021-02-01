import 'package:structuremodel/app/core/routes/app_route_interface.dart';
import 'package:structuremodel/app/core/routes/custom_app_route_model.dart';
import 'package:structuremodel/app/features/home/pages/details_page.dart';

class HomeRoutes implements FeatureCustomRouters {
  @override
  List<CustomAppRouter> get subRoutes => [
        CustomAppRouter(
          name: "/details",
          child: (_, args) => DetailsPage(args.data),
        ),
      ];
}
