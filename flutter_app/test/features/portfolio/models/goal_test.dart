import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/features/portfolio/models/goal.dart';

void main() {
  test('Goal can be created from JSON', () {
    final json = {
      'id': 'goal1',
      'user_id': 'user1',
      'description': 'Save for 1 BTC',
      'target_amount': 1.0,
      'target_date': '2025-12-31T00:00:00Z',
      'is_achieved': false,
    };

    final goal = Goal.fromJson(json);

    expect(goal.id, 'goal1');
    expect(goal.userId, 'user1');
    expect(goal.description, 'Save for 1 BTC');
    expect(goal.targetAmount, 1.0);
    expect(goal.targetDate, DateTime.parse('2025-12-31T00:00:00Z'));
    expect(goal.isAchieved, false);
  });
}
