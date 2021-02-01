import 'package:structuremodel/app/core/routes/interfaces/app_route_interface.dart';
import 'package:structuremodel/app/core/routes/models/custom_app_route_model.dart';
import 'package:structuremodel/app/features/home/pages/details_page.dart';

class HomeRouter extends FeatureCustomRouters {
  @override
  List<CustomAppRouter> get routes => [
        CustomAppRouter(
          name: "/details",
          child: (_, args) => DetailsPage(args.data),
        ),
      ];
}
