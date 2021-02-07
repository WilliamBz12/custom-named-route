import 'package:custom_app_router/custom_app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';
import 'package:structuremodel/app/features/home/home_page.dart';
import 'package:structuremodel/app/features/home/pages/details_page.dart';

import 'cubits/images/images_cubit.dart';
import 'repositories/images_repository.dart';

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

  @override
  List<SingleChildWidget> get providers => [
        ChangeNotifierProvider<ImagesRepository>(
          create: (context) => ImagesRepository(),
        ),
        BlocProvider<ImagesCubit>(
          create: (context) => ImagesCubit(
            Provider.of(context, listen: false),
          ),
        ),
      ];
}
