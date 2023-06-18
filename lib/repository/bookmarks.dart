import '../models/book.dart';
import '../utils/icons.dart';

class BookmarkRepository {
  static List<Book> bookmarks = [
    Book(
        name: 'Black Heart',
        author: 'Broché',
        url: IconsApp.book2,
        description: ''),
    Book(
        name: 'Lost & Found',
        author: 'Kathryn Schulz',
        url: IconsApp.book3,
        description: ''),
    Book(
        name: 'Throne of glass',
        author: 'Sarah J.Maas & Elizabeth Evans',
        url: IconsApp.book4,
        description: ''),
    Book(
        name: 'Burning Questions',
        author: 'Margaret Atwood',
        url: IconsApp.book5,
        description: ''),
    Book(
        name: 'Left on Tenth',
        author: 'Left on Tenth',
        url: IconsApp.book6,
        description: ''),
    Book(
        name: 'Bi', author: 'Julia Shaw', url: IconsApp.book7, description: ''),
    Book(
        name: 'Black Heart',
        author: 'Broché',
        url: IconsApp.book2,
        description: ''),
    Book(
        name: 'Lost & Found',
        author: 'Kathryn Schulz',
        url: IconsApp.book3,
        description: ''),
    Book(
        name: 'Throne of glass',
        author: 'Sarah J.Maas & Elizabeth Evans',
        url: IconsApp.book4,
        description: ''),
    Book(
        name: 'Burning Questions',
        author: 'Margaret Atwood',
        url: IconsApp.book5,
        description: ''),
    Book(
        name: 'Left on Tenth',
        author: 'Left on Tenth',
        url: IconsApp.book6,
        description: ''),
    Book(
        name: 'Bi', author: 'Julia Shaw', url: IconsApp.book7, description: ''),
  ];

  static addBook(Book book) {
    bookmarks.add(book);
  }

  static removeBook(Book book) {
    bookmarks.remove(book);
  }
}
