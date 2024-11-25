import 'package:api_helper/api_helper.dart';
import 'package:pragma_test/app/app.dart';
import 'package:pragma_test/bootstrap.dart';

void main() {
  bootstrap(
    builder: () async {
      return const App();
    },
    env: Environments.pre,
  );
}
