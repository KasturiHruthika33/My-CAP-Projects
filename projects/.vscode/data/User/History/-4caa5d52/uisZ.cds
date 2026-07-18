using demp from '../db/schema';
service CatalogService {
  entity Books as projection on demp.Books;
}