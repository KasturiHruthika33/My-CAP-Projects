using demo from '../db/schema';

service CatalogService @(path:'/catalog',requires:'authenticated-user') {
  @(restrict:[
    {
      grant:'READ',
      to : 'BookViewer'
    },
    {
      grant:['READ','WRITE','UPDATE','DELETE'],
      to : 'BookAdmin'

    }
  ])

  entity Books as projection on demo.Books;
}