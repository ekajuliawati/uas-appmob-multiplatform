import 'dart:math';

class News {
  String title;
  String subtitle;
  String author;
  String seen;
  String image;

  News({
    required this.title,
    required this.subtitle,
    required this.author,
    required this.seen,
    required this.image,
  });

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
        author: json['author'] ?? "",
        image: json['urlToImage'] ?? "",
        seen: (Random().nextInt(100) + 1).toString() + 'k',
        subtitle: json['description'] ?? "",
        title: json['title'] ?? "");
  }
}
