import 'package:custom_app_router/custom_app_router.dart';
import 'package:nested/nested.dart';
import 'package:structuremodel/app/features/second/second_page.dart';

class SecondFeature extends CustomFeature {
  @override
  List<SingleChildWidget> get providers => [];

  @override
  List<CustomRouter> get routes => [
        CustomRouter(
          name: CustomNavigator.initialRoute,
          child: (_, args) => SecondPage(title: args.data),
        ),
      ];
}
