import 'package:integration_test/integration_test.dart';
import 'scenarios/home_scenario.dart' as homeScenario;
import 'scenarios/details_scenario.dart' as detailsScenario;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  //scenarios
  homeScenario.main();
  detailsScenario.main();
}
