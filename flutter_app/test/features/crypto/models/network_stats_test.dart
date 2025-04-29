import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/features/crypto/models/network_stats.dart';

void main() {
  test('NetworkStats can be created from JSON', () {
    final json = {
      'block_height': 800000,
      'hash_rate': 150.5,
      'difficulty': 23.7,
      'active_addresses': 1200000,
    };

    final stats = NetworkStats.fromJson(json);

    expect(stats.blockHeight, 800000);
    expect(stats.hashRate, 150.5);
    expect(stats.difficulty, 23.7);
    expect(stats.activeAddresses, 1200000);
  });
}
