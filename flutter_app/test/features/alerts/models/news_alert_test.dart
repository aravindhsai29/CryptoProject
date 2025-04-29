import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/features/alerts/models/news_alert.dart';

void main() {
  test('NewsAlert can be created from JSON', () {
    final json = {
      'id': 'alert2',
      'news_id': 'news123',
      'user_id': 'user1',
      'is_read': false,
      'created_at': '2025-04-28T20:00:00Z',
    };

    final alert = NewsAlert.fromJson(json);

    expect(alert.id, 'alert2');
    expect(alert.newsId, 'news123');
    expect(alert.userId, 'user1');
    expect(alert.isRead, false);
    expect(alert.createdAt, DateTime.parse('2025-04-28T20:00:00Z'));
  });
}
