import 'author_items.dart';
import 'main.dart';
import 'model/book.dart';
import 'model/enum.dart';

List<Book> arabic = List.generate(10, (index) {
  bool isAvailable = boolAvailable(index);
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
  bool isAvailable = boolAvailable(index);

  return Book(
      title: 'bio$index',
      isbn: 'isbn$index',
      status: bookStatus(isAvailable
          ? StatusAvailability.available
          : StatusAvailability.notAvailable),
      author: author2,
      publicationYear: (index + 1) * 3);
});
List<Book> france = List.generate(10, (index) {
  bool isAvailable = boolAvailable(index);

  return Book(
      title: 'france$index',
      isbn: 'isbn$index',
      status: bookStatus(isAvailable
          ? StatusAvailability.available
          : StatusAvailability.notAvailable),
      author: author2,
      publicationYear: (index + 1) * 3);
});
List<Book> geograprh = List.generate(10, (index) {
  bool isAvailable = boolAvailable(index);

  return Book(
      title: 'geograprh$index',
      isbn: 'isbn$index',
      status: bookStatus(isAvailable
          ? StatusAvailability.available
          : StatusAvailability.notAvailable),
      author: author2,
      publicationYear: (index + 1) * 3);
});
List<Book> history = List.generate(10, (index) {
  bool isAvailable = boolAvailable(index);

  return Book(
      title: 'history$index',
      isbn: 'isbn$index',
      status: bookStatus(isAvailable
          ? StatusAvailability.available
          : StatusAvailability.notAvailable),
      author: author2,
      publicationYear: (index + 1) * 3);
});
List<Book> math = List.generate(10, (index) {
  bool isAvailable = boolAvailable(index);

  return Book(
      title: 'math$index',
      isbn: 'isbn$index',
      status: bookStatus(isAvailable
          ? StatusAvailability.available
          : StatusAvailability.notAvailable),
      author: author2,
      publicationYear: (index + 1) * 3);
});
List<Book> science = List.generate(10, (index) {
  bool isAvailable = boolAvailable(index);

  return Book(
      title: 'science$index',
      isbn: 'isbn$index',
      status: bookStatus(isAvailable
          ? StatusAvailability.available
          : StatusAvailability.notAvailable),
      author: author2,
      publicationYear: (index + 1) * 3);
});

bool boolAvailable(int index) {
  bool isAvailable = index % 5 == 0;
  return isAvailable;
}
