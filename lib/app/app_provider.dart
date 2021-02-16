import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:structuremodel/app/shared/widgets/provider_widget.dart';

import 'core/api_client/api_client_factory.dart';

class AppProvider extends StatelessWidget {
  final Widget child;
  AppProvider({@required this.child});

  @override
  Widget build(BuildContext context) {
    return CustomMultiProviderWidget(
      child: child,
      providers: [
        Provider(create: (context) => ApiClient().factory()),
      ],
    );
  }
}
