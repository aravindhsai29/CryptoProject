class PriceAlert {
  final String id;
  final String cryptoId;
  final double targetPrice;
  final bool isAbove;
  final bool isActive;

  PriceAlert({
    required this.id,
    required this.cryptoId,
    required this.targetPrice,
    required this.isAbove,
    required this.isActive,
  });

  factory PriceAlert.fromJson(Map<String, dynamic> json) {
    return PriceAlert(
      id: json['id'] as String,
      cryptoId: json['crypto_id'] as String,
      targetPrice: (json['target_price'] as num).toDouble(),
      isAbove: json['is_above'] as bool,
      isActive: json['is_active'] as bool,
    );
  }
}
