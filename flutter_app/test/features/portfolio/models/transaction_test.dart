import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/features/portfolio/models/transaction.dart';

void main() {
  test('Transaction can be created from JSON', () {
    final json = {
      'id': 'txn1',
      'crypto_id': 'bitcoin',
      'amount': 1.5,
      'price': 45000.0,
      'date': '2025-04-27T18:00:00Z',
      'type': 'buy',
    };

    final txn = Transaction.fromJson(json);

    expect(txn.id, 'txn1');
    expect(txn.cryptoId, 'bitcoin');
    expect(txn.amount, 1.5);
    expect(txn.price, 45000.0);
    expect(txn.date, DateTime.parse('2025-04-27T18:00:00Z'));
    expect(txn.type, 'buy');
  });
}
