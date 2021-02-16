import 'package:custom_app_router/custom_app_router.dart';
import 'pages/second_page.dart';

class SecondFeature extends CustomFeature {
  @override
  List<CustomRouter> get routes => [
        CustomRouter(
          name: CustomNavigator.initialRoute,
          child: (_, args) => SecondPage(title: args.data),
        ),
      ];
}
