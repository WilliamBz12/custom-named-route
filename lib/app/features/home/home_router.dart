import 'package:custom_app_router/custom_app_router.dart';
import 'package:structuremodel/app/features/home/pages/details_page.dart';

class HomeRouter extends FeatureCustomRouter {
  @override
  List<CustomAppRouter> get routes => [
        CustomAppRouter(
          name: "/details",
          child: (_, args) => DetailsPage(args.data),
        ),
      ];
}
