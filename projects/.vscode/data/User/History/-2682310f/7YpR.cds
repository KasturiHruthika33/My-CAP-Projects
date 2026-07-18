using demo from '../db/schema';

service CatalogService @(path:'/catalog',requires:'authenticated-user') {
  @(restrict:[
    {
      grant:'READ',
      to : 'B'
    }
  ])
  {
  entity Books as projection on demo.Books;
}