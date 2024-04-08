import 'author.dart';
import 'book_model.dart';
import 'enum.dart';
import 'lib.dart';

void main(List<String> args) {
  String bookStatus(StatusAvailability statues) {
    String status;
    switch (statues) {
      case StatusAvailability.available:
        status = "Available";
      case StatusAvailability.notAvailable:
        status = "Not Available";
    }
    return status;
  }

  Author author1 =
      Author(name: 'name1', nationality: 'EGY', birth: 2000, books: []);
  Author author2 =
      Author(name: 'name2', nationality: 'EGY', birth: 2010, books: []);

  List<Book> bookAuthor1 = [
    Book(
        title: 'title1',
        author: author1,
        isbn: '0-061-96436-0',
        publicationYear: 2010,
        status: bookStatus(StatusAvailability.available)),
    Book(
        title: 'title2',
        author: author1,
        isbn: '0-061-96436-0',
        publicationYear: 2011,
        status: bookStatus(StatusAvailability.available)),
    Book(
        title: 'title3',
        author: author1,
        isbn: '0-061-96436-0',
        publicationYear: 2012,
        status: bookStatus(StatusAvailability.available)),
  ];
  List<Book> bookAuthor2 = [
    Book(
        title: 'title3',
        author: author2,
        isbn: '0-061-96436-0',
        publicationYear: 2010,
        status: bookStatus(StatusAvailability.available)),
    Book(
        title: 'title4',
        author: author2,
        isbn: '0-061-96436-0',
        publicationYear: 2011,
        status: bookStatus(StatusAvailability.available)),
    Book(
        title: 'title5',
        author: author2,
        isbn: '0-061-96436-0',
        publicationYear: 2012,
        status: bookStatus(StatusAvailability.available)),
  ];

  Library library = Library();
  library.books.addAll(bookAuthor1);
  library.books.addAll(bookAuthor2);
  List<Book> bookList = library.searchingBook(author2);

  for (var element in bookList) {
    print(
        '${element.title} - ${element.status} - ${element.author.name} - ${element.publicationYear} - ${element.isbn}');
  }
}
