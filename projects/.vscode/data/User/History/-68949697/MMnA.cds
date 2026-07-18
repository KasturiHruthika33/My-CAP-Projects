using demo from '..';

service CatalogService {
    entity Books as projection on demo.Books;
}