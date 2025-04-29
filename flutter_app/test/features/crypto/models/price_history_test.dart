import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/features/crypto/models/price_history.dart';

void main() {
  test('PriceHistory can be created from JSON', () {
    final json = {
      'timestamp': '2025-04-27T17:00:00Z',
      'price': 48000.0,
    };

    final history = PriceHistory.fromJson(json);

    expect(history.timestamp, DateTime.parse('2025-04-27T17:00:00Z'));
    expect(history.price, 48000.0);
  });
}
