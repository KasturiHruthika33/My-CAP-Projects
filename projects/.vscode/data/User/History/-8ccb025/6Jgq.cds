using mybooks from '../db/data-model';

service Bookstore{
  entity Books as projection on mybooks.Books
}