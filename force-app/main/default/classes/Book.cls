public class Book {
    //data members
    string title;
    string author;
    decimal price;

    public Book(string title, string author, decimal price) {
        //this. means class variables.
        this.title = title;
        this.author = author;
        this.price = price;
    }

    public void printDetails(){
        system.debug('title of books is ' + this.title);
        system.debug('author of books is ' + this.author);
        system.debug('price of book: ' + this.price);
        
    }

    //get methods are used to access private members outside of the class
    public string getTitle(){
        return this.title;//is it mandatory?
    }
    public string getAuthor(){
        return this.author;//is it mandatory?
    }
    public decimal getPrice(){
        return this.price;
    }

    public void setPrice(decimal price){
        this.price = price;
    }

    public void setTitle(string title){
        this.title = title;
    }
}