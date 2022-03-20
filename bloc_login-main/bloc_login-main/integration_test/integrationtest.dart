import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:bloc_login/main.dart' as app;

void main() {
  group('welcome-to-addexpenses', () {
    testWidgets('Login Process', (WidgetTester tester) async {
      app.main();

      await tester.pumpAndSettle(const Duration(seconds: 3));

      final Finder register = find.widgetWithText(ElevatedButton, "Register");
      await tester.tap(register);
      await tester.pumpAndSettle();

      await tester.pumpAndSettle(const Duration(seconds: 3));

      await tester.enterText(find.byKey(const Key('register_email')), 'qwe');
      await tester.enterText(find.byKey(const Key('register_pwd')), '123');
      await tester.enterText(find.byKey(const Key('register_cpwd')), '123');

      await tester.pumpAndSettle(const Duration(seconds: 3));

      final Finder rs = find.widgetWithText(ElevatedButton, "Submit");
      await tester.tap(rs);
      await tester.pumpAndSettle();

      await tester.pumpAndSettle(const Duration(seconds: 3));

      final Finder lg = find.widgetWithText(ElevatedButton, "Login");

      await tester.tap(lg);

      await tester.pumpAndSettle();

      await tester.pumpAndSettle(const Duration(seconds: 3));

      final Finder lf =
          find.widgetWithText(GestureDetector, "Forgot your password?");
      await tester.tap(lf);
      await tester.pumpAndSettle();

      await tester.pumpAndSettle(const Duration(seconds: 3));

      await tester.enterText(find.byKey(const Key('fp_email')), 'qwe');

      await tester.pumpAndSettle(const Duration(seconds: 3));

      final Finder fs = find.widgetWithText(ElevatedButton, "Search");
      await tester.tap(fs);
      await tester.pumpAndSettle();

      await tester.pumpAndSettle(const Duration(seconds: 3));

      await tester.enterText(find.byKey(const Key('pr_code')), '123');

      await tester.pumpAndSettle(const Duration(seconds: 3));

      final Finder pv = find.widgetWithText(ElevatedButton, "Verify");
      await tester.tap(pv);
      await tester.pumpAndSettle();

      await tester.pumpAndSettle(const Duration(seconds: 3));

      await tester.enterText(find.byKey(const Key('ryp_pwd')), '1234');
      await tester.enterText(find.byKey(const Key('ryp_cpwd')), '1234');

      await tester.pumpAndSettle(const Duration(seconds: 3));

      final Finder ryp = find.widgetWithText(ElevatedButton, "Reset Password");
      await tester.tap(ryp);
      await tester.pumpAndSettle();

      await tester.pumpAndSettle(const Duration(seconds: 3));
      await tester.enterText(find.byKey(const Key('login_email')), 'qwe');
      await tester.enterText(find.byKey(const Key('login_pwd')), '1234');

      await tester.pumpAndSettle(const Duration(seconds: 3));

      final Finder login = find.widgetWithText(ElevatedButton, "Login");

      await tester.tap(login);
    });
  });
}
