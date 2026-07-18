using demo from '../db/schema';

service CatalogService @(path:'/catalog',requires:'authenticated-user') {
  @re
  {
  entity Books as projection on demo.Books;
}