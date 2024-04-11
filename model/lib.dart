import 'author.dart';
import 'book.dart';

abstract class Library {
  List<Book> _books = [];

  List<Book> get books => [..._books];

  void addBooks(List<Book> books) {
    _books.addAll(books);
  }

  void removeBook(Book book) {
    _books.remove(book);
  }

  List<Book> searchingBook(Author author) {
    return _books.where((element) => element.author == author).toList();
  }

  void disPlay() {
    _books.forEach((element) {
      print('${element.author.name} || ${element.title} ');
    },);
  }
}
