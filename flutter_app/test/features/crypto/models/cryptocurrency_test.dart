import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/features/crypto/models/cryptocurrency.dart';

void main() {
  test('Cryptocurrency can be created from JSON', () {
    final json = {
      'id': 'bitcoin',
      'symbol': 'btc',
      'name': 'Bitcoin',
      'current_price': 50000.0,
      'image': 'https://example.com/btc.png',
    };

    final coin = Cryptocurrency.fromJson(json);

    expect(coin.id, 'bitcoin');
    expect(coin.symbol, 'btc');
    expect(coin.name, 'Bitcoin');
    expect(coin.currentPrice, 50000.0);
    expect(coin.imageUrl, 'https://example.com/btc.png');
  });
}
