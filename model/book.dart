import './author.dart';

class Book {
  final String title, isbn, status;
  final Author author;
  final int publicationYear;

  Book(
      {required this.title,
      required this.isbn,
      required this.status,
      required this.author,
      required this.publicationYear});
}
