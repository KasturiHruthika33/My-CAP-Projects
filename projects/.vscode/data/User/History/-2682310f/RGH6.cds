using demo from '../db/schema';

service CatalogService @(path:'/catalog',requires:'authenticated-user') {
  @(restrict:[
    {
      grant:'READ',
      to : 'BooksViewer'
    },
    {
      grant:['READ','WRITE','UPDATE','DELETE'],
      to : 'BooksEditor'

    }
  ])

  entity Books as projection on demo.Books;
}