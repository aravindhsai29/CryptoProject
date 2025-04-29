class Cryptocurrency {
  final String id;
  final String symbol;
  final String name;
  final double currentPrice;
  final String imageUrl;

  Cryptocurrency({
    required this.id,
    required this.symbol,
    required this.name,
    required this.currentPrice,
    required this.imageUrl,
  });

  factory Cryptocurrency.fromJson(Map<String, dynamic> json) {
    return Cryptocurrency(
      id: json['id'] as String,
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      currentPrice: (json['current_price'] as num).toDouble(),
      imageUrl: json['image'] as String,
    );
  }
}
