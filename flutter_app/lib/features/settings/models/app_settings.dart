class AppSettings {
  final bool darkMode;
  final String language;
  final bool notificationsEnabled;

  AppSettings({
    required this.darkMode,
    required this.language,
    required this.notificationsEnabled,
  });

  factory AppSettings.fromJson(Map<String, dynamic> json) {
    return AppSettings(
      darkMode: json['dark_mode'] as bool,
      language: json['language'] as String,
      notificationsEnabled: json['notifications_enabled'] as bool,
    );
  }
}
