import 'dart:io';

import './model/book.dart';
import './items_books.dart';
import './model/enum.dart';
import 'model/lib.dart';
import 'subjects/arabic.dart';
import 'subjects/biology.dart';

void main(List<String> args) {
  Library libarabic=Arabic();
  libarabic.disPlay();
  
  Library libBio=Biology();
  libBio.disPlay();
  stdout.write('Name of Book: ');
  String searchTerm = stdin.readLineSync()!;
  print('''
Subjects:
     1- Arabic
     2- Biology
     3- Frannce
     4- Geography
     5- History
     6- Math
     7- Science''');

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
  switch (searchSubject) {
    case '1':
      chosenBook = arabic;
      break;
    case '2':
      chosenBook = biology;
      break;
    case '3':
      chosenBook = france;
      break;
    case '4':
      chosenBook = geograprh;
      break;
    case '5':
      chosenBook = history;
      break;
    case '6':
      chosenBook = math;
    case '7':
      chosenBook = science;
      break;
    default:
      print('Invalid subject selection.');
      break;
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
