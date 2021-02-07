import 'package:custom_app_router/custom_app_router.dart';
import 'package:provider/single_child_widget.dart';
import '../models/custom_route_model.dart';

//routes inside of a feature
abstract class CustomFeature {
  List<CustomRouter> get routes;
  List<SingleChildWidget> get providers;
}
