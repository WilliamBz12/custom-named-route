import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:structuremodel/app/features/home/repositories/images_repository.dart';
import '../../cubits/images/images_cubit.dart';

import '../widgets/list_widget.dart';

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
        ChangeNotifierProvider<ImagesRepository>(
          create: (context) => ImagesRepository(),
        ),
        BlocProvider<ImagesCubit>(
          create: (context) => ImagesCubit(
            Provider.of(context, listen: false),
          ),
        ),
      ],
      builder: (context, child) {
        final imagesCubit = Provider.of<ImagesCubit>(context, listen: true);

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
                    cubit: imagesCubit,
                    builder: (_, state) {
                      return state.maybeWhen(
                        loadLoading: () => Center(
                          child: CircularProgressIndicator(),
                        ),
                        loadFailure: (message) => Text(message),
                        loadSuccess: (data) => ListWidget(data: data),
                        orElse: () => Container(),
                      );
                    },
                  ),
                ),
                RaisedButton(
                  child: Text("Load data"),
                  onPressed: () {
                    imagesCubit.load();
                  },
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _onTap,
            tooltip: 'Increment',
            child: Icon(
              Icons.details,
            ),
          ),
        );
      },
    );
  }
}
