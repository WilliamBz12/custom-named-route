import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:structuremodel/app/features/home/cubits/images/images_cubit.dart';
import 'package:structuremodel/app/features/home/repositories/images_repository.dart';

import 'app_routes.dart';
import 'package:custom_app_router/custom_app_router.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ImagesRepository>(
          create: (context) => ImagesRepository(),
        ),
        BlocProvider<ImagesCubit>(
          create: (context) => ImagesCubit(Provider.of(context, listen: false)),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: NavigatorCustomAppRouter.initialRoute,
        onGenerateRoute: NavigatorCustomAppRouter().buildAppRoutes(
          appRouters: AppRoutes(),
        ),
      ),
    );
  }
}
