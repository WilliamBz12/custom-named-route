import 'package:integration_test/integration_test.dart';
import 'scenarios/home_scenario.dart' as home;
import 'scenarios/details_scenario.dart' as details;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  //scenarios
  home.main();
  details.main();
}
