using demo from '../db/schema';

service  CatalogService @(path:'/browse',requires:'authenticated-user'){
  entity Books as projection on demo.Books;
  entity Author as projection on demo.Author;

}
