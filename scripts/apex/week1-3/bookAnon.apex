Book b1 = new book('The Great Gatsby', 'Scot', 10.50);
b1.printDetails();

decimal p1 = b1.getPrice();
system.debug(p1);

b1.setPrice(14.25);
b1.printDetails();

b1.setTitle('The Great Gatsby 2');
b1.setPrice(15.99);
b1.printDetails();


Book b2 = new book('Harry potter', 'Rowling', 25.50);
b2.printDetails();
b2.setPrice(30.99);
b2.printDetails();


Book b3 = new book('Harry potter', 'Rowling', 30.99);