class PortfolioItem {
  final String cryptoId;
  final String symbol;
  final String name;
  final double quantity;
  final double averageBuyPrice;
  final String imageUrl;

  PortfolioItem({
    required this.cryptoId,
    required this.symbol,
    required this.name,
    required this.quantity,
    required this.averageBuyPrice,
    required this.imageUrl,
  });

  factory PortfolioItem.fromJson(Map<String, dynamic> json) {
    return PortfolioItem(
      cryptoId: json['crypto_id'] as String,
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      averageBuyPrice: (json['average_buy_price'] as num).toDouble(),
      imageUrl: json['image_url'] as String,
    );
  }
}
