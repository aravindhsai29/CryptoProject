import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/features/alerts/models/price_alert.dart';

void main() {
  test('PriceAlert can be created from JSON', () {
    final json = {
      'id': 'alert1',
      'crypto_id': 'bitcoin',
      'target_price': 60000.0,
      'is_above': true,
      'is_active': true,
    };

    final alert = PriceAlert.fromJson(json);

    expect(alert.id, 'alert1');
    expect(alert.cryptoId, 'bitcoin');
    expect(alert.targetPrice, 60000.0);
    expect(alert.isAbove, true);
    expect(alert.isActive, true);
  });
}
