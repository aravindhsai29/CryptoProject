class NewsAlert {
  final String id;
  final String newsId;
  final String userId;
  final bool isRead;
  final DateTime createdAt;

  NewsAlert({
    required this.id,
    required this.newsId,
    required this.userId,
    required this.isRead,
    required this.createdAt,
  });

  factory NewsAlert.fromJson(Map<String, dynamic> json) {
    return NewsAlert(
      id: json['id'] as String,
      newsId: json['news_id'] as String,
      userId: json['user_id'] as String,
      isRead: json['is_read'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
    );
  }
}
