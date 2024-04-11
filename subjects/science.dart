import '../items_books.dart';
import '../model/book.dart';
import '../model/lib.dart';

class Science extends Library {
  @override
  List<Book> get books => science;

  @override
  void disPlay() {
    super.disPlay();
  }
}
