import '../model/book.dart';
import '../model/lib.dart';

class Arabic extends Library {
  @override
  List<Book> get books => [];

  @override
  void disPlay() {
    super.disPlay();
    books.forEach(print);
  }
}
