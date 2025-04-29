class MarketData {
  final double marketCap;
  final double volume24h;
  final double circulatingSupply;
  final double totalSupply;

  MarketData({
    required this.marketCap,
    required this.volume24h,
    required this.circulatingSupply,
    required this.totalSupply,
  });

  factory MarketData.fromJson(Map<String, dynamic> json) {
    return MarketData(
      marketCap: (json['market_cap'] as num).toDouble(),
      volume24h: (json['volume_24h'] as num).toDouble(),
      circulatingSupply: (json['circulating_supply'] as num).toDouble(),
      totalSupply: (json['total_supply'] as num).toDouble(),
    );
  }
}
