import 'genre.dart';

class Book {
  String name;
  String author;
  String url;
  String description;
  Genre genre;

  Book({
    required this.name,
    required this.author,
    required this.url,
    required this.description,
    required this.genre,
  });
}
