import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/features/crypto/models/market_data.dart';

void main() {
  test('MarketData can be created from JSON', () {
    final json = {
      'market_cap': 1000000000.0,
      'volume_24h': 50000000.0,
      'circulating_supply': 18000000.0,
      'total_supply': 21000000.0,
    };

    final data = MarketData.fromJson(json);

    expect(data.marketCap, 1000000000.0);
    expect(data.volume24h, 50000000.0);
    expect(data.circulatingSupply, 18000000.0);
    expect(data.totalSupply, 21000000.0);
  });
}
