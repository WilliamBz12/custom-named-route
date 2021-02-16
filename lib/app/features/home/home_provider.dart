import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:structuremodel/app/shared/widgets/provider_widget.dart';

import 'cubits/images/images_cubit.dart';
import 'repositories/images_repository.dart';

class HomeProvider extends StatelessWidget {
  final Widget child;
  HomeProvider({@required this.child});

  @override
  Widget build(BuildContext context) {
    return CustomMultiProviderWidget(
      child: child,
      providers: [
        RepositoryProvider<ImagesRepository>(
          create: (context) => ImagesRepository(client: context.read<Dio>()),
        ),
        BlocProvider<ImagesCubit>(
          create: (context) => ImagesCubit(context.read<ImagesRepository>()),
        ),
      ],
    );
  }
}
