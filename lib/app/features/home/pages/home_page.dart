import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:structuremodel/app/features/home/widgets/custom_button_widget.dart';
import '../cubits/images/images_cubit.dart';
import '../repositories/images_repository.dart';

import '../components/list_component.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _onTap() {
    Navigator.pushNamed(
      context,
      "/home/details",
      arguments: 34,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        RepositoryProvider<ImagesRepository>(
          create: (context) => ImagesRepository(client: context.read<Dio>()),
        ),
        BlocProvider<ImagesCubit>(
          create: (context) => ImagesCubit(context.read<ImagesRepository>()),
        ),
      ],
      builder: (_, __) => _buildContent(),
    );
  }

  Widget _buildContent() {
    return Builder(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Home"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: BlocBuilder<ImagesCubit, ImagesState>(
                    cubit: context.watch<ImagesCubit>(),
                    builder: (_, state) {
                      return state.maybeWhen(
                        loadLoading: () => Center(
                          child: CircularProgressIndicator(),
                        ),
                        loadFailure: (message) => Text(message),
                        loadSuccess: (data) => ListImageComponent(data: data),
                        orElse: () => Container(),
                      );
                    },
                  ),
                ),
                CustomButtonWidget(
                  onTap: context.read<ImagesCubit>().load,
                  title: "Load Data",
                ),
                CustomButtonWidget(
                  onTap: () {
                    Navigator.pushNamed(context, "/second", arguments: "Title");
                  },
                  title: "Go to second",
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _onTap,
            tooltip: 'Increment',
            child: Icon(Icons.details),
          ),
        );
      },
    );
  }
}
