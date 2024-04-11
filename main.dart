import 'dart:io';

import './model/book.dart';
import './items_books.dart';
import './model/enum.dart';

void main(List<String> args) {
  stdout.write('Name of Book: ');
  String searchTerm = stdin.readLineSync()!;
  print('''
Subjects:
     1- Arabic
     2- Biology''');

  stdout.write('Subject: ');
  String searchSubject = stdin.readLineSync()!;
  List<Book> chosenBook = [];
  chosenBook = choseBook(searchSubject, chosenBook);
  List<Book> searchResults = searchTitle(chosenBook, '${searchTerm}');

  void displayBooksFormatted(List<Book> books) {
    print(
        '+--------+---------------------------------+-----------------+---------------------+');
    print(
        '|  Index |              Title              |      ISBN       |       Status        |');
    print(
        '+--------+---------------------------------+-----------------+---------------------+');

    // Print each book's details in the table
    for (int i = 0; i < books.length; i++) {
      Book book = books[i];
      String flag = i % 5 == 0 ? '✅' : '✕';

      print(
          '|   ${(i + 1).toString().padLeft(2)}   | ${book.title.padRight(31)} | ${book.isbn.padRight(15)} | ${book.status.toString().padRight(19)} | $flag');
    }

    // Print table footer
    print(
        '+--------+---------------------------------+-----------------+---------------------+');
  }

  if (searchResults.isEmpty) {
    print('No books found with title containing "$searchTerm".');
  } else {
    print('Search results for "$searchTerm":');
    displayBooksFormatted(searchResults);
  }
}

List<Book> choseBook(String searchSubject, List<Book> chosenBook) {
  if (searchSubject == '1') {
    chosenBook = arabic;
  } else {
    chosenBook = biology;
  }
  return chosenBook;
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
  switch (statues) {
    case StatusAvailability.available:
      return "Available";
    case StatusAvailability.notAvailable:
      return "Not Available";
    default:
      return 'Unknown';
  }
}
