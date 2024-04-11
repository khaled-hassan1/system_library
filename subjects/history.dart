import '../items_books.dart';
import '../model/book.dart';
import '../model/lib.dart';

class History extends Library {
  @override
  List<Book> get books => history;

  @override
  void disPlay() {
    super.disPlay();
  }
}
