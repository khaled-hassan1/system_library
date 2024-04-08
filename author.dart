import 'book_model.dart';

class Author {
  final String name, nationality;
  final int birth;
  final List<Book> books;

  Author(
      {required this.name,
      required this.nationality,
      required this.birth,
      required this.books});
}
