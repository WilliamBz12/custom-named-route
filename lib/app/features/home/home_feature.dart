import 'package:custom_app_router/custom_app_router.dart';
import 'package:structuremodel/app/features/home/ui/pages/home_page.dart';
import 'package:structuremodel/app/features/home/ui/pages/details_page.dart';

class HomeFeature extends CustomFeature {
  @override
  List<CustomRouter> get routes => [
        CustomRouter(
          name: CustomNavigator.initialRoute,
          child: (_, args) => HomePage(),
        ),
        CustomRouter(
          name: "/details",
          child: (_, args) => DetailsPage(args.data),
        ),
      ];
}
