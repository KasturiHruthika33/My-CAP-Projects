using demo from '../db/schema';

@require : 'any'
service CatalogService {
  entity Books as projection on demo.Books;
}