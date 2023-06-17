import '../models/book.dart';

class BookmarkRepository {
  static List<Book> bookmarks = [];

  static addBook(Book book) {
    bookmarks.add(book);
  }

  static removeBook(Book book) {
    bookmarks.remove(book);
  }
}
