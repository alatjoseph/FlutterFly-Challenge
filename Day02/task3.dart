// Create a class called Library with a property that is a list of maps. Each map represents a
// book with keys title, author, and year. Add a method to add a book to the list and another
// method to print all books in the library.

class Library{
  List<Map<String, dynamic>> books=[];
  
  
  void addbook(String title,String author,String year){
    Map<String, dynamic> newbook={
      'title':title,
      'author':author,
      'year':year,
    };
    books.add(newbook);
  }
   void display_book(){
      for(var i in books){
        print('Title : ${i['title']} Author : ${i['author']} Year : ${i['year']}');
      }
  }
}


void main(){
  Library lib=Library();
  lib.addbook('1984', 'Geoege Orwell', '1949');
  lib.addbook('To Kill a Mockingbird', 'Harper Lee', '1960');
  lib.display_book();

}