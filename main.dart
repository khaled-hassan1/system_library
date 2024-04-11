import 'author.dart';
import 'book.dart';
import 'constant.dart';
import 'enum.dart';
import 'lib.dart';

void main(List<String> args) {
  Author author2 =
      Author(name: 'name2', nationality: 'EGY', birth: 2010, books: []);

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
        status: bookStatus(StatusAvailability.notAvailable)),
  ];

  Library library = Library();
  library.books.addAll(a);
  library.books.addAll(bookAuthor2);
  List<Book> bookList = library.searchingBook(author1);

  for (Book element in bookList) {
    print(
        '${element.title} - ${element.status} - ${element.author.name} - ${element.publicationYear} - ${element.isbn}');
  }

  String searchTerm = 'title12';
  List<Book> searchResults = searchTitle(a, '${searchTerm}');

  void displayBooksFormatted(List<Book> books) {
    for (int i = 0; i < books.length; i++) {
      Book book = books[i];
      print('Title: ${book.title}');
      print('ISBN: ${book.isbn}');
      print(
          'Status: ${book.status}'); // Assuming status has a toString() method
      print(
          'Author: ${book.author.name}'); // Assuming Author has a name property
      print('Publication Year: ${book.publicationYear}');
      print('---'); // Add a separator between books
    }
  }

  if (searchResults.isEmpty) {
    print('No books found with title containing "$searchTerm".');
  } else {
    print('Search results for "$searchTerm":');
    displayBooksFormatted(searchResults);
  }
}

List<Book> searchTitle(List<Book> books, String title) {
  List<Book> result = [];

  for (Book book in books) {
    if (book.title.contains(title.toLowerCase())) {
      result.add(book);
    }
  }
  return result;
}

String bookStatus(StatusAvailability statues) {
  String status = 'unknown';
  switch (statues) {
    case StatusAvailability.available:
      status = "Available";
    case StatusAvailability.notAvailable:
      status = "Not Available";
  }
  return status;
}
