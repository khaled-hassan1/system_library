import 'author.dart';
import 'book.dart';
import 'enum.dart';

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
      status: StatusAvailability.available),
  Book(
      title: 'title2',
      author: author1,
      isbn: '0-061-96436-0',
      publicationYear: 2011,
      status: StatusAvailability.available),
  Book(
      title: 'title3',
      author: author1,
      isbn: '0-061-96436-0',
      publicationYear: 2012,
      status: StatusAvailability.notAvailable),
];
List<Book> bookAuthor2 = [
  Book(
      title: 'title3',
      author: author1,
      isbn: '0-061-96436-0',
      publicationYear: 2010,
      status: StatusAvailability.available),
  Book(
      title: 'title4',
      author: author1,
      isbn: '0-061-96436-0',
      publicationYear: 2011,
      status: StatusAvailability.available),
  Book(
      title: 'title5',
      author: author1,
      isbn: '0-061-96436-0',
      publicationYear: 2012,
      status: StatusAvailability.notAvailable),
];
