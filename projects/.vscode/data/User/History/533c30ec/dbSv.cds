using acc from '../db/schema';


service CatalogService @(path:'/SalesOrderService',requires:'authenticated-user') {
  @restrict:[
    {
      grant: 'READ',
      to : 'SalesOrderViewer'
    },
    {
      grant:[
        'READ',
        'CREATE',
        'UPDATE',
        'DELETE'
      ],
      to : 'SalesOrderAdmin',
      
    }
  ]
    entity CustomerEntity as projection on acc.CustomerEntity {
      *,
      contacts.contactName as contactName,
      contacts.contactPhone as contactPhone

    };
    entity ContactEntity as projection on acc.ContactEntity;
}