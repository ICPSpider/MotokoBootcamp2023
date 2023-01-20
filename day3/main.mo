//In main.mo import the type List from the Base Library and create a list that stores books.
import Book "book";
import List "mo:base/List";

actor {
  type Book = Book.Book;

  var list = List.nil<Book>();

//In main.mo create a function called add_book that takes a book as parameter and returns nothing
//this function should add this book to your list. Then create a second function called get_books 
//that takes no parameter but returns an Array that contains all books stored in the list.
  public func add_book(book : Book) : async () {
      list := List.append(list, List.make<Book>(book));
  };


  public query func get_books() : async [Book] {
      return List.toArray(list);
  };
};