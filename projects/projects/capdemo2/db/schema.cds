namespace demo;

entity Books {
  key ID : Integer;
  title   : String;
  author  : String;
  genre   : String;
  price   : Decimal(10,2);
}