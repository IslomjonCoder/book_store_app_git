import 'package:book_store_app_git/utils/icons.dart';

import '../models/book.dart';
import '../models/genre.dart';

class BookRepository {
  static List<Book> books = [
    Book(
        name: 'Black Heart',
        author: 'Broché',
        url: IconsApp.book2,
        description: '',
        genre: Genre.classic),
    Book(
      name: 'Lost & Found',
      author: 'Kathryn Schulz',
      url: IconsApp.book3,
      description: '',
      genre: Genre.horror,
    ),
    Book(
        name: 'Throne of glass',
        author: 'Sarah J.Maas & Elizabeth Evans',
        url: IconsApp.book4,
        description: '',
        genre: Genre.horror),
    Book(
        name: 'Burning Questions',
        author: 'Margaret Atwood',
        url: IconsApp.book5,
        description: '',
        genre: Genre.horror),
    Book(
      name: 'Left on Tenth',
      author: 'Left on Tenth',
      url: IconsApp.book6,
      description: '',
      genre: Genre.horror,
    ),
    Book(
      name: 'Bi',
      author: 'Julia Shaw',
      url: IconsApp.book7,
      description: '',
      genre: Genre.horror,
    ),
  ];
}
