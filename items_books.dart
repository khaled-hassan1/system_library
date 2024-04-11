import 'author_items.dart';
import 'main.dart';
import 'model/book.dart';
import 'model/enum.dart';

List<Book> arabic = List.generate(10, (index) {
  bool isAvailable = index % 5 == 0;
  return Book(
      title: 'arabic${index + 1}',
      isbn: 'isbn$index',
      status: bookStatus(isAvailable
          ? StatusAvailability.available
          : StatusAvailability.notAvailable),
      author: author1,
      publicationYear: (index + 1) * 2);
});

List<Book> biology = List.generate(10, (index) {
  bool isAvailable = index % 5 == 0;

  return Book(
      title: 'bio$index',
      isbn: 'isbn$index',
      status: bookStatus(isAvailable
          ? StatusAvailability.available
          : StatusAvailability.notAvailable),
      author: author2,
      publicationYear: (index + 1) * 3);
});
