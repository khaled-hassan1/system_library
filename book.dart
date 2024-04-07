import 'author.dart';
import 'enum.dart';

class Book {
  final String title;
  final Author author;
  final String isbn;
  final int publicationYear;
  final StatusAvailability status;

  Book(
      {required this.title,
      required this.author,
      required this.isbn,
      required this.publicationYear,
      required this.status});
}
