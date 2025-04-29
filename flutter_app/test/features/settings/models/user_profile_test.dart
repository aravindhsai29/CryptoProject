import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/features/settings/models/user_profile.dart';

void main() {
  test('UserProfile can be created from JSON', () {
    final json = {
      'id': 'user1',
      'username': 'aravindh',
      'email': 'aravindh@example.com',
      'avatar_url': 'https://example.com/avatar.png',
    };

    final user = UserProfile.fromJson(json);

    expect(user.id, 'user1');
    expect(user.username, 'aravindh');
    expect(user.email, 'aravindh@example.com');
    expect(user.avatarUrl, 'https://example.com/avatar.png');
  });
}
