import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:structuremodel/app/features/home/cubits/images/images_cubit.dart';

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
    final imagesCubit = Provider.of<ImagesCubit>(context);

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
                    loadLoading: () => CircularProgressIndicator(),
                    loadFailure: (message) => Text(message),
                    loadSuccess: (data) {
                      return Row(
                        children: List.generate(
                          data.length,
                          (index) => Text(data[index]),
                        ),
                      );
                    },
                    orElse: () => Container(),
                  );
                },
              ),
            ),
            RaisedButton(
              child: Text("Go to Second"),
              onPressed: () {
                imagesCubit.load();

                // Navigator.pushNamed(
                //   context,
                //   "/second",
                //   arguments: "Second page",
                // );
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
  }
}
