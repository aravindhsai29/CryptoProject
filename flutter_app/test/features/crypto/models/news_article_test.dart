import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/features/crypto/models/news_article.dart';

void main() {
  test('NewsArticle can be created from JSON', () {
    final json = {
      'id': 'news123',
      'title': 'Bitcoin hits new high',
      'source': 'CryptoNews',
      'url': 'https://cryptonews.com/article',
      'published_at': '2025-04-27T18:00:00Z',
    };

    final article = NewsArticle.fromJson(json);

    expect(article.id, 'news123');
    expect(article.title, 'Bitcoin hits new high');
    expect(article.source, 'CryptoNews');
    expect(article.url, 'https://cryptonews.com/article');
    expect(article.publishedAt, DateTime.parse('2025-04-27T18:00:00Z'));
  });
}
