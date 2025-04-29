class NewsArticle {
  final String id;
  final String title;
  final String source;
  final String url;
  final DateTime publishedAt;

  NewsArticle({
    required this.id,
    required this.title,
    required this.source,
    required this.url,
    required this.publishedAt,
  });

  factory NewsArticle.fromJson(Map<String, dynamic> json) {
    return NewsArticle(
      id: json['id'] as String,
      title: json['title'] as String,
      source: json['source'] as String,
      url: json['url'] as String,
      publishedAt: DateTime.parse(json['published_at'] as String),
    );
  }
}
