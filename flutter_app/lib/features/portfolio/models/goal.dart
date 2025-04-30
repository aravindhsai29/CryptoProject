class Goal {
  final String id;
  final String userId;
  final String description;
  final double targetAmount;
  final DateTime targetDate;
  final bool isAchieved;

  Goal({
    required this.id,
    required this.userId,
    required this.description,
    required this.targetAmount,
    required this.targetDate,
    required this.isAchieved,
  });

  factory Goal.fromJson(Map<String, dynamic> json) {
    return Goal(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      description: json['description'] as String,
      targetAmount: (json['target_amount'] as num).toDouble(),
      targetDate: DateTime.parse(json['target_date'] as String),
      isAchieved: json['is_achieved'] as bool,
    );
  }
}
