import 'package:api_helper/api_helper.dart';
import 'package:pragma_test/app/app.dart';
import 'package:pragma_test/bootstrap.dart';
import 'package:pragma_test/app/view/app.dart';

void main() {
  bootstrap(
    builder: () async {
      return const App();
    },
    env: Environments.inte,
  );
}
