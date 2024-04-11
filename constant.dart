import 'dart:math';

import 'author.dart';
import 'book.dart';
import 'enum.dart';
import 'main.dart';

Author author1 =
    Author(name: 'name1', nationality: 'EGY', birth: 2000, books: []);

List<Book> a = List.generate(
    20,
    (index) => Book(
        title: 'title$index',
        isbn: 'isbn$index',
        status: bookStatus(StatusAvailability.notAvailable),
        author: author1,
        publicationYear: index));

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
      status: bookStatus(StatusAvailability.notAvailable)),
  Book(
      title: 'title3',
      author: author1,
      isbn: '0-061-96436-0',
      publicationYear: 2012,
      status: bookStatus(StatusAvailability.available)),
];
