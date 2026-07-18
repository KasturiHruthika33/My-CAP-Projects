using demo from '../db/schema';

service CatalogService @(path:'/catalog',requires:'authenticated-user') {
  @(restrict)
  {
  entity Books as projection on demo.Books;
}