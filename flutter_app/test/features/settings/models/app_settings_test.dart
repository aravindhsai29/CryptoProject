import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/features/settings/models/app_settings.dart';

void main() {
  test('AppSettings can be created from JSON', () {
    final json = {
      'dark_mode': true,
      'language': 'en',
      'notifications_enabled': false,
    };

    final settings = AppSettings.fromJson(json);

    expect(settings.darkMode, true);
    expect(settings.language, 'en');
    expect(settings.notificationsEnabled, false);
  });
}
