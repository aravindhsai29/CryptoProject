class UserProfile {
  final String id;
  final String username;
  final String email;
  final String avatarUrl;

  UserProfile({
    required this.id,
    required this.username,
    required this.email,
    required this.avatarUrl,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      id: json['id'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      avatarUrl: json['avatar_url'] as String,
    );
  }
}
