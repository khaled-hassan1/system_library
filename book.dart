import 'author.dart';

enum StatusAvailability {
  available,
  notAvailable,
}

class Book {
  final String title;
  final Author author;
  final String isbn;
  final int publicationYear;
  final StatusAvailability status;

  Book(this.title, this.author, this.isbn, this.publicationYear, this.status);
}
