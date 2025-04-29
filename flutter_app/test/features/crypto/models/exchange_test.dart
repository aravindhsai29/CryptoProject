import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/features/crypto/models/exchange.dart';

void main() {
  test('Exchange can be created from JSON', () {
    final json = {
      'id': 'binance',
      'name': 'Binance',
      'country': 'Cayman Islands',
      'url': 'https://www.binance.com',
    };

    final exchange = Exchange.fromJson(json);

    expect(exchange.id, 'binance');
    expect(exchange.name, 'Binance');
    expect(exchange.country, 'Cayman Islands');
    expect(exchange.url, 'https://www.binance.com');
  });
}
