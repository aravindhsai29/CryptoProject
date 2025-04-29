class PriceHistory {
  final DateTime timestamp;
  final double price;

  PriceHistory({
    required this.timestamp,
    required this.price,
  });

  factory PriceHistory.fromJson(Map<String, dynamic> json) {
    return PriceHistory(
      timestamp: DateTime.parse(json['timestamp'] as String),
      price: (json['price'] as num).toDouble(),
    );
  }
}
