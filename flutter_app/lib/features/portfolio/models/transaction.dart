class Transaction {
  final String id;
  final String cryptoId;
  final double amount;
  final double price;
  final DateTime date;
  final String type; // 'buy' or 'sell'

  Transaction({
    required this.id,
    required this.cryptoId,
    required this.amount,
    required this.price,
    required this.date,
    required this.type,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      id: json['id'] as String,
      cryptoId: json['crypto_id'] as String,
      amount: (json['amount'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      date: DateTime.parse(json['date'] as String),
      type: json['type'] as String,
    );
  }
}
