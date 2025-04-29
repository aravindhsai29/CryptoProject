class Exchange {
  final String id;
  final String name;
  final String country;
  final String url;

  Exchange({
    required this.id,
    required this.name,
    required this.country,
    required this.url,
  });

  factory Exchange.fromJson(Map<String, dynamic> json) {
    return Exchange(
      id: json['id'] as String,
      name: json['name'] as String,
      country: json['country'] as String,
      url: json['url'] as String,
    );
  }
}
