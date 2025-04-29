class NetworkStats {
  final int blockHeight;
  final double hashRate;
  final double difficulty;
  final int activeAddresses;

  NetworkStats({
    required this.blockHeight,
    required this.hashRate,
    required this.difficulty,
    required this.activeAddresses,
  });

  factory NetworkStats.fromJson(Map<String, dynamic> json) {
    return NetworkStats(
      blockHeight: json['block_height'] as int,
      hashRate: (json['hash_rate'] as num).toDouble(),
      difficulty: (json['difficulty'] as num).toDouble(),
      activeAddresses: json['active_addresses'] as int,
    );
  }
}
