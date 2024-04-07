import 'author.dart';
import 'book.dart';
import 'enum.dart';

class Library {
  List<Book> _books = [];

  List<Book> get books => _books;

  void addBook(Book book) {
    _books.add(book);
  }

  void removeBook(Book book) {
    _books.remove(book);
  }

  List<Book> searchingBook(Author author) {
    return _books.where((element) => element.author == author).toList();
  }

  void dipBookAvailableBooks() {
    _books.where((element) => element.status == StatusAvailability.available).forEach(print);
  }
}
