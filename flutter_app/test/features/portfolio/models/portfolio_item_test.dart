import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/features/portfolio/models/portfolio_item.dart';

void main() {
  test('PortfolioItem can be created from JSON', () {
    final json = {
      'crypto_id': 'bitcoin',
      'symbol': 'btc',
      'name': 'Bitcoin',
      'quantity': 2.5,
      'average_buy_price': 40000.0,
      'image_url': 'https://example.com/btc.png',
    };

    final item = PortfolioItem.fromJson(json);

    expect(item.cryptoId, 'bitcoin');
    expect(item.symbol, 'btc');
    expect(item.name, 'Bitcoin');
    expect(item.quantity, 2.5);
    expect(item.averageBuyPrice, 40000.0);
    expect(item.imageUrl, 'https://example.com/btc.png');
  });
}
